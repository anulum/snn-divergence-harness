<!--
SPDX-License-Identifier: AGPL-3.0-or-later
Commercial license available
© Concepts 1996–2026 Miroslav Šotek. All rights reserved.
© Code 2020–2026 Miroslav Šotek. All rights reserved.
ORCID: 0009-0009-3560-0851
Contact: www.anulum.li | protoscience@anulum.li
SNN-DIVERGENCE-HARNESS — repository foundation
-->

# Architecture

The implemented foundation contains seven repository controls, their native tooling and dedicated tests. These validate source-selected metadata, attribution, workflows, installed development metadata, source/rendered documentation, capability inventory and the preflight command chain. They are maintenance interfaces, not a model-execution API.

Inventory construction has no output cycle: descriptor admission precedes generation, independent verification checks the completed inventory/tree, and preflight requires all applicable results. A partial successful check cannot establish full acceptance. See the [implemented component boundaries](docs/ARCHITECTURE.md#implemented-repository-foundation) and [validation tooling](docs/validation-tooling.md).

## Planned harness

The planned harness owns execution-plan custody, driver orchestration, complete comparison, minimisation and replay. Model equations remain with their actual implementation owners. Canonical evidence encoding, reference resolution, signing and verification belong to the separately installed Evidence Manifest Toolkit.

A plan fixes model and input identity, source and environment identity, backend selection, lane, numerical method, limits and required output population before execution. A result never changes that plan. Failed, refused, incomplete and inconclusive attempts remain distinguishable from an accepted result.

The execution engine must invoke actual public subject interfaces. Comparing two wrappers around the same implementation is not an independent reference. Discrete equality, floating error admission and statistical equivalence have different contracts; no default lane or implicit fallback may conceal unsupported semantics.

Reduction searches within the admitted input domain while retaining source identity, preconditions and the original outcome. The resulting candidate needs a fresh public-entry-point replay; a smaller synthetic input without preserved divergence does not qualify.

[Component and data boundaries](docs/ARCHITECTURE.md#planned-domain-components) describe the planned domain interfaces. Their design constraints do not advertise an implemented runtime API.
