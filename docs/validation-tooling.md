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

The repository-metadata command is implemented. It validates the source-selected local descriptor, exact schema bytes and actual development lock. The source-provenance command is also implemented. The other five project-owned guards remain unimplemented. This page and the native API below describe the available metadata and source-provenance surfaces.

## Available commands

Run from the repository root using its selected development environment:

    make metadata
    make source-provenance
    make docs
    make licence

The metadata command is also directly available:

    .venv/bin/python tools/check_repository_metadata.py --root . --json

The three fixed inputs are repository-domain.json, schemas/repository-domain.schema.json and requirements-dev.txt. Each read is bounded to one MiB. The expected project, owner, lifecycle, empty capability/claim population, planned schema names and complete toolchain/profile tuple are selected by maintained source. Supplied fields or a substituted schema cannot choose another policy. The command reads no generated capability inventory and never rewrites an input. Its finite descriptor selection is enforced by maintained source without loading a received schema or requiring a runtime schema plugin. It also checks the actual executing interpreter against the selected final Python version; a declared matching version cannot qualify a different runtime.

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

## Source provenance

The source-provenance API and command inspect the actual caller-selected public source tree. They check native seven-field headers, Markdown comment wrapping, the project notice, one consistent enclosing-file licence declaration and exact JSON sidecars. JSON parsing rejects duplicate members, nonfinite constants and invalid Unicode while preserving finite large numbers and nested component licences. Each JSON sidecar needs both canonical copyright records exactly once; additional distinct publisher notices remain unchanged.

Source selects the exact original licence texts, branding and REUSE recipe. An alternative annotation cannot qualify changed original bytes. Other source formats need an explicit maintained policy; unknown formats, links, missing originals and unsupported attribution refuse. This initial source cohort has a 512-entry limit and a four-MiB limit per regular source. Fixed cache/build directories and ignored private documentation are outside this named cohort. Actual Git-index/private-publication inspection, complete required-tree checks, installed dependency provenance and native REUSE are separate gates. No metadata, inventory or domain acceptance is implied.

Run make source-provenance or:

    .venv/bin/python tools/check_source_provenance.py --root . --json

Its report uses the same gate/scope/status/reasons structure and 4>3>2>0 precedence described above, with gate source_provenance. It never writes source inputs and retains all located diagnoses in deterministic order. It has no native subprocess or network fallback.

## Rejection-test runtime

The dedicated metadata tests exercise a genuinely different Python interpreter as well as the selected tooling interpreter. Provide python3.12 with coverage, or set SNN_HARNESS_REJECTION_PYTHON to its actual executable. Absence or an incorrectly selected interpreter fails this test; it is never skipped. This is a test fixture for environment refusal, not a supported replacement for the selected tooling runtime. Native source-provenance tests use the complete actual maintained source cohort and public file/API/CLI boundaries.

## Local commit hooks

The local pre-commit configuration runs native Ruff and NumPy docstrings, format checking, strict mypy, the metadata and source-provenance commands, REUSE and strict API documentation. It also runs native Bandit on maintained tooling and Gitleaks on the actual staged source. These checks cover the named current source surfaces; they do not qualify absent project controls, hosted automation or domain results.

## Native metadata API

::: check_repository_metadata

## Native source-provenance API

::: check_source_provenance
