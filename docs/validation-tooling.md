<!--
SPDX-License-Identifier: AGPL-3.0-or-later
Commercial license available
© Concepts 1996–2026 Miroslav Šotek. All rights reserved.
© Code 2020–2026 Miroslav Šotek. All rights reserved.
ORCID: 0009-0009-3560-0851
Contact: www.anulum.li | protoscience@anulum.li
SNN-DIVERGENCE-HARNESS — repository foundation
-->

# Repository validation tooling

The repository-metadata command is implemented. It validates the source-selected local descriptor, exact schema bytes and actual development lock. The other six project-owned guards remain unimplemented. This page and the native API below describe only the available metadata surface.

## Available commands

Run from the repository root using its selected development environment:

    make metadata
    make docs
    make licence

The metadata command is also directly available:

    .venv/bin/python tools/check_repository_metadata.py --root . --json

The three fixed inputs are repository-domain.json, schemas/repository-domain.schema.json and requirements-dev.txt. Each read is bounded to one MiB. The expected project, owner, lifecycle, empty capability/claim population, planned schema names and complete toolchain/profile tuple are selected by maintained source. Supplied fields or a substituted schema cannot choose another policy. The command reads no generated capability inventory and never rewrites an input.

A planned schema name is a declaration, not registration or support. This local governance schema is not a scientific evidence format. Metadata success does not qualify the installed environment, models, drivers, current trust, Common, numerical results or downstream consumers.

## Results and failures

The JSON report contains gate, scope, status and reasons. Located reasons contain authored codes and fixed repository-relative names, without echoing input contents or private paths. The same inputs produce byte-stable diagnostics.

| Exit | Meaning |
| --- | --- |
| 0 | The named complete metadata check passed |
| 2 | Supplied metadata, its limits or the actual lock is refused |
| 3 | Required input or report output is unavailable |
| 4 | Invocation or selected schema configuration is invalid |

Multiple input failures remain visible. Configuration takes precedence over availability, which takes precedence over refusal. An unavailable report destination cannot return success; output failure retains a prior configuration failure. Help is a separate informational operation and does not validate metadata.

The make docs and make licence targets invoke actual strict documentation rendering and native REUSE checking. Their scopes do not substitute for the remaining project-owned controls or complete foundation acceptance.

## Local commit hooks

The local pre-commit configuration runs native Ruff and NumPy docstrings, format checking, strict mypy, the metadata command, REUSE and strict API documentation. It also runs native Bandit on maintained tooling and Gitleaks on the actual staged source. These checks cover the named current source surfaces; they do not qualify absent project controls, hosted automation or domain results.

## Native metadata API

::: check_repository_metadata
