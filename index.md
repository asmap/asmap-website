---
layout: home
---

This website presents information on ASMap development and usage.

## Introduction

The ASMap project began in 2019 with the goal to help diversify a node's peerset and prevent reliance on too few Autonomous System (AS) entities. Various attacks have been described which can leverage weaknesses in peer discovery to partition a node from the broader network, for example in the case of an [eclipse attack](https://bitcoinops.org/en/topics/eclipse-attacks/). What we want is a map of IP addresses to the AS they belong to, so that we can ensure a node isn't hosting a number of peers under the control of a single AS entity, thus raising the cost of an attacker successfully eclipsing our node from the broader network.

- what users can do now
- netgroup bucketing
- frequency of updates / degradation rate
    - every Core release should be fine, still better than netgroup bucketing

Generating the IP-to-AS map relies on data that must be sourced from best-effort public announcements in several places and parsed carefully to detect errors and misattributions. To learn more about the sourcing of this AS data, see [Sourcing Data](../data-sourcing.md).

Index:
- [Background](../background)
- [Sourcing Data](../sourcing-data)
- [Core PRs]()
- [Contributing]()
- [Tools and Resources](../tools-and-resources)
- [Glossary](../glossary)
