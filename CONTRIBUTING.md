<!--
SPDX-License-Identifier: AGPL-3.0-or-later
Commercial license available
© Concepts 1996–2026 Miroslav Šotek. All rights reserved.
© Code 2020–2026 Miroslav Šotek. All rights reserved.
ORCID: 0009-0009-3560-0851
Contact: www.anulum.li | protoscience@anulum.li
SNN-DIVERGENCE-HARNESS — repository foundation
-->

# Contributing

Start from the actual maintained source and supported public interfaces. Preserve model equations, complete output populations and source identity; do not substitute a reference implementation that shares the same unexamined assumption.

Each implementation includes integration through real entry points, fully annotated Python, NumPy-style public docstrings, native documentation, dedicated behavioural tests and measured statement and branch coverage. New and changed code targets full meaningful coverage without reducing existing coverage. Each actual maintained counterpart receives matching semantics, edge cases, tests, documentation and affected benchmarks.

Use an isolated project environment and the exact supported interpreter and dependency lock once they exist. Dependency changes must align hooks, local tools, CI and installed inventory. Do not add a placeholder package or a check that treats a missing tool as success.

Keep model inputs and evidence fixtures legally redistributable and bounded. Never include private datasets, credentials, native histories or large recordings. Original failed and partial domain observations remain distinguishable from superseded test-run output.

The foundation is still being assembled. Its current development graph is hash-locked for CPython 3.13.16 and installed through uv with hard links from the shared package cache. Use the exact selected interpreter and requirements; do not silently substitute another environment. The available make metadata, make docs and make licence targets exercise the source-selected repository descriptor, native documentation renderer and source-licence checker respectively. The remaining six project-owned guards and domain commands remain unavailable. See [validation](VALIDATION.md) and [support](SUPPORT.md).
