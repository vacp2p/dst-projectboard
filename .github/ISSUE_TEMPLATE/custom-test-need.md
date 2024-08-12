---
name: Custom test need
about: Tests that need to be scheduled and analysed
title: "[TEST] waku-v0.28-relayreliability"
labels: analysis-required, test-scheduled
assignees: Zorlin

---

<!-- Please fill out the following form to request a deployment/test. -->

body:
- type: dropdown
  id: download
  attributes:
    label: Select a milestone that this work affects
    options:
      - `vac:dst:deployment-and-analysis:waku:10k`
      - `vac:dst:deployment-and-analysis:waku:midscale`
      - `vac:dst:deployment-and-analysis:codex:testnet`
      - `vac:dst:deployment-and-analysis:nomos:mixnet`

```
# Major project - waku, codex, nomos
project=waku
# Docker image to use for the simulations
image=soutullostatus/nwaku-jq-curl:v0.28.0
# How many normal nodes to use, if applicable
nodes=1000
# How many bootstrap nodes to use, if applicable
bootstrap=3
# Duration in minutes of each test, max 60 minutes
duration=20
```

Note that some values such as `nodes` can be a single number or a comma-separated list of numbers, which will result in multiple simulations being performed.
