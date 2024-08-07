---
layout: default
title: Home
nav_order: 1
---

## The ASmap Project
---------

The goal of the ASmap project is to provide the ability to generate maps of IP address blocks to the Autonomous System they belong to, and use these ASmaps in Bitcoin Core.

Various attacks can leverage weaknesses in peer discovery to partition a node from the broader network, for example in the case of an [eclipse attack](https://bitcoinops.org/en/topics/eclipse-attacks/). While Core's netgroup bucketing prevents too many peers from a single netgroup, a single AS entity can control many IP address ranges, and in recent years these IP ranges have started to change hands more frequently. What we want is a map of IP addresses to the AS they belong to, so that a node can ensure that it is not connecting to peers under the control of a single AS entity. By using the ASmap feature in Core, a node can prevent a potential eclipse from the network.

Since [Core 20.0](https://github.com/bitcoin/bitcoin/blob/master/doc/release-notes/release-notes-0.20.0.md#new-settings), users can pass their own ASmap file to Core. In order to generate such a map, however, we need to source the most complete and up-to-date set of IP-to-AS mappings. This website is intended to present the current state of research on sourcing this data, generating such mappings, and using them in Core.

Generating the ASmap relies on data that must be sourced from best-effort public announcements in several places and parsed carefully to detect errors and misattributions. To learn more about the sourcing of this AS data, see [Sourcing Data](../data-sourcing.md).

