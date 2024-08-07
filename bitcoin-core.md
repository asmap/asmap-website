---
layout: default
title: In Bitcoin Core
permalink: /bitcoin-core/
nav_order: 4
---

## ASmap in Bitcoin Core

Using an ASmap file in one's Bitcoin Core configuration is already strictly better than the default, and so we want to encourage usage of ASMap among users. However, currently the adoption of the ASMap feature must be assumed to be minimal, since doing so requires creating or procuring an ASMap file and then passing it as an option to the node during startup. Aside from the common wisdom that most users don't change the defaults, there is no trusted way to provide ASMap files for download.

## Usage

#### Passing an ASmap to Core

Core will accept a compressed ASmap file with the `-asmap` option as described [here](https://github.com/bitcoin/bitcoin/blob/master/doc/release-notes/release-notes-0.20.0.md#new-settings).

#### Creating an ASmap with Kartograf

[Kartograf](https://github.com/fjahr/kartograf) is a tool to fetch AS data from regional IRRs, and produce a file to be used with Core.

#### Using `asmap-tool` in Core

[asmap-tool](https://github.com/bitcoin/bitcoin/tree/master/contrib/asmap) is a Python script to help encode/compress an ASmap file before passing it to Core.

## TODO

See the project [tracking issue](https://github.com/bitcoin/bitcoin/issues/28794) on GitHub.

Changes required to Bitcoin Core are fairly minimal, with the goal of tool consolidation and the actual embedding of the data. Embedding an ASmap file at release time is the next significant milestone.

## ASMap usage and deployment in practice

Aside from the code changes mentioned above, a process needs to be defined regarding how the data embedded with Core is created. Based on a previous proposal and some previous feedback the current proposal for this is as follows:

- A repository for management of ASMap data is created under the bitcoin core org (see [fjahr/asmap-data](https://github.com/bitcoin/bitcoin/issues/28794) for an example of how this might look in practice).
- Any contributor can open issues to coordinate the collaborative creation of a new ASMap file (see coordinated launch in Kartograf, and a [the example in fjahr/asmap-data](https://github.com/fjahr/asmap-data/issues/4)). If multiple collaborators have created a result file with the same hash, this improves trust in the validity of input data and the final result. Effectively the trust in the input data is federated.
- Independent of a previous collaboration, any user can open PRs to the repository, adding the raw input data as well as the final result to the repository. Reviewers can reproduce the final result from the raw input files and confirm that the raw input file was not manipulated. Reviewers may prefer files that were previously created by multiple collaborators.
- Any user that would like to run their node with a fresh ASMap file can now turn to the asmap-data repository in the bitcoin core org and download the latest ASMap file available.
- As a new Bitcoin Core release nears, any contributor can take any of the files from the asmap-data repository and open a PR to Bitcoin Core with this file to suggest it be the file that is embedded in the final release. It will be up to reviewers to decide if the particular file is good enough or if a different one is preferred.
