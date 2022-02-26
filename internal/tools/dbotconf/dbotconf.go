// Copyright The OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Package main provides a utility to generate a complete dependabot
// configuration for a repository with multiple Go modules.
package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"text/template"

	"github.com/jhannah-mm/opentelemetry-go/internal/tools"
	"golang.org/x/mod/modfile"
)

var configPtr = flag.String("config", "./.github/dependabot.yml", "dependabot configuration path")

const configTemplate = `# File generated by "make dependabot-generate"; DO NOT EDIT.

version: 2
updates:
  - package-ecosystem: github-actions
    directory: /
    labels:
      - dependencies
      - actions
      - "Skip Changelog"
    schedule:
      day: sunday
      interval: weekly
{{- range .}}
  - package-ecosystem: gomod
    directory: {{.}}
    labels:
      - dependencies
      - go
      - "Skip Changelog"
    schedule:
      day: sunday
      interval: weekly
{{- end}}
`

func gomodDirectories(basePath string, mods []*modfile.File) []string {
	var dirs []string
	for _, m := range mods {
		targetPath := filepath.Dir(m.Syntax.Name)
		relPath := strings.TrimPrefix(targetPath, basePath)
		if relPath == "" {
			relPath = "/"
		}
		dirs = append(dirs, relPath)
	}
	sort.Strings(dirs)
	return dirs
}

func generate(path string) error {
	tpl, err := template.New("dependabot.yml").Parse(configTemplate)
	if err != nil {
		return fmt.Errorf("parse template: %w", err)
	}

	root, err := tools.FindRepoRoot()
	if err != nil {
		return fmt.Errorf("find repo root: %w", err)
	}

	mods, err := root.FindModules()
	if err != nil {
		return fmt.Errorf("list modules: %w", err)
	}
	data := gomodDirectories(string(root), mods)

	f, err := os.OpenFile(path, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0755)
	if err != nil {
		return err
	}
	if err = tpl.Execute(f, data); err != nil {
		// Best effort.
		_ = f.Close()
		return fmt.Errorf("rendering template: %w", err)
	}
	if err = f.Close(); err != nil {
		return fmt.Errorf("closing %s: %w", path, err)
	}
	return nil
}

func main() {
	flag.Parse()
	if err := generate(*configPtr); err != nil {
		log.Fatalf("failed to generate dependabot configuration: %v", err)
	}
}
