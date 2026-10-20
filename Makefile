# SPDX-License-Identifier: AGPL-3.0-or-later
# Commercial license available
# © Concepts 1996–2026 Miroslav Šotek. All rights reserved.
# © Code 2020–2026 Miroslav Šotek. All rights reserved.
# ORCID: 0009-0009-3560-0851
# Contact: www.anulum.li | protoscience@anulum.li
# SNN-DIVERGENCE-HARNESS — repository identity and validation foundation

.PHONY: docs licence metadata source-provenance

docs: .venv/bin/mkdocs
	.venv/bin/mkdocs build --strict --clean --config-file mkdocs.yml

licence: .venv/bin/reuse
	.venv/bin/reuse lint

metadata: .venv/bin/python
	.venv/bin/python tools/check_repository_metadata.py --root . --json

source-provenance: .venv/bin/python
	.venv/bin/python tools/check_source_provenance.py --root . --json
