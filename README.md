[![Makefile CI](https://github.com/TomSchammo/Bachelorthesis/actions/workflows/makefile.yml/badge.svg)](https://github.com/TomSchammo/Bachelorthesis/actions/workflows/makefile.yml)

# Bachelor Thesis

This repo contains my Bachelor thesis in Computer Science at the [Embedded Systems](https://www.embedded.uni-tuebingen.de/en/home/) department of the [University of Tübingen](https://uni-tuebingen.de/en).
The PDF can be downloaded from the artifacts but is also included in the release.

## Abstract

This thesis sets out to implement keyword-spotting on the UltraTrail architecture.
To that end, different input sources are implemented and analyzed.
An additional goal is to extend the Rust ecosystem by adding support for UltraTrail to Rust.
To achieve this, UltraTrail is added to the PAC and its drivers are implemented in the HAL.
The $I^2S$ and PDM driver implementations are then tested.
Testing reveals that the microphone drivers do not work as expected and despite
resolving some issues, it was not possible to get the microphones to work as desired,
so keyword-spotting could not be implemented.
However, the UltraTrail driver has been successfully implemented and tested so that
future research can be conducted on the effectiveness of keyword-spotting on UltraTrail.
