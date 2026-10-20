# SPDX-License-Identifier: AGPL-3.0-or-later
# Commercial license available
# © Concepts 1996–2026 Miroslav Šotek. All rights reserved.
# © Code 2020–2026 Miroslav Šotek. All rights reserved.
# ORCID: 0009-0009-3560-0851
# Contact: www.anulum.li | protoscience@anulum.li
# SNN-DIVERGENCE-HARNESS — repository identity and validation foundation

.PHONY: docs licence metadata source-provenance
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c

docs: .venv/bin/mkdocs
	.venv/bin/mkdocs build --strict --clean --config-file mkdocs.yml

licence: .venv/bin/reuse
	.venv/bin/reuse lint

metadata: .venv/bin/python
	.venv/bin/python tools/check_repository_metadata.py --root . --json

source-provenance: .venv/bin/python
	.venv/bin/python tools/check_source_provenance.py --root . --json

.PHONY: native-tools native-tools-check

native-tools-check: .venv/bin/python
	.venv/bin/python tools/bootstrap_native_tools.py --root . --json

native-tools: .venv/bin/python .tool-cache/native-downloads/actionlint_1.7.12_linux_amd64.tar.gz .tool-cache/native-downloads/gitleaks_8.30.1_linux_x64.tar.gz
	.venv/bin/python tools/bootstrap_native_tools.py --root . --install --json

.tool-cache/native-downloads/actionlint_1.7.12_linux_amd64.tar.gz:
	mkdir -p .tool-cache/native-downloads
	curl --fail --location --proto '=https' --tlsv1.2 --max-time 90 --max-filesize 2353908 --output $@.part https://github.com/rhysd/actionlint/releases/download/v1.7.12/actionlint_1.7.12_linux_amd64.tar.gz || { rm -f -- $@.part; exit 1; }
	printf '%s  %s\n' '8aca8db96f1b94770f1b0d72b6dddcb1ebb8123cb3712530b08cc387b349a3d8' '$@.part' | sha256sum --check --strict || { rm -f -- $@.part; exit 1; }
	mv $@.part $@

.tool-cache/native-downloads/gitleaks_8.30.1_linux_x64.tar.gz:
	mkdir -p .tool-cache/native-downloads
	curl --fail --location --proto '=https' --tlsv1.2 --max-time 90 --max-filesize 8230402 --output $@.part https://github.com/gitleaks/gitleaks/releases/download/v8.30.1/gitleaks_8.30.1_linux_x64.tar.gz || { rm -f -- $@.part; exit 1; }
	printf '%s  %s\n' '551f6fc83ea457d62a0d98237cbad105af8d557003051f41f3e7ca7b3f2470eb' '$@.part' | sha256sum --check --strict || { rm -f -- $@.part; exit 1; }
	mv $@.part $@
