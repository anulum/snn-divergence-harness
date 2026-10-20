<!--
SPDX-License-Identifier: AGPL-3.0-or-later
Commercial license available
© Concepts 1996–2026 Miroslav Šotek. All rights reserved.
© Code 2020–2026 Miroslav Šotek. All rights reserved.
ORCID: 0009-0009-3560-0851
Contact: www.anulum.li | protoscience@anulum.li
SNN-DIVERGENCE-HARNESS — repository foundation
-->

# Data and authority boundaries

The planned harness handles supplied model descriptions, inputs, external framework outputs and evidence references. These inputs do not grant execution, signing, deployment or publication authority. Model execution belongs only to explicitly selected supported drivers with declared limits.

Evidence content, a successful transport response and a valid signature have different meanings. Signature verification establishes only its admitted envelope facts; source identity, numerical semantics, current eligibility and comparison results need their own evidence. Inspection must display unavailable or unverified references explicitly.

The design requires bounded input admission, explicit output destinations and immutable attempt records. A partial or failed attempt must not be repaired into success by dropping outputs, changing a seed, selecting a different lane or overwriting the prior record. Ordinary failures need caller-safe diagnostics without private paths or environment contents.

This document records intended data and authority boundaries. No runtime or operational assessment has been completed, and no isolation, device control or recovery qualification is claimed.
