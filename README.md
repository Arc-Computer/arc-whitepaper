# Arc: Structured, Concurrent, and Provenance-Aware Collective AI Memory for Software Engineering

This repository contains a position paper describing Arc, a proposed architecture enabling multiple reinforcement learning (RL) agents to collaboratively manage long-lived codebases, transforming them into continuously-evolving world models.

## Abstract

Despite their ability to resolve real-world GitHub issues and ingest vast context windows, frontier AI coding agents struggle with a "transient-context ceiling"—preserving causal rationale behind long-running changes. Complex software evolution requires memory that is persistent, structured, and supports semantically-aware concurrent modifications.

Arc is an architecture enabling multiple reinforcement learning agents to collaboratively manage codebases as continuously-evolving world models through three integrated components:

1. **Temporal Knowledge Graphs (TKGs)** providing structured, queryable history of code artifacts and decisions
2. **Causal CRDT layer** extending Conflict-free Replicated Data Types with semantic invariant checks derived from the TKG
3. **Provenance-Driven RL** rewarding agents for generating and consuming causal context, fostering coordination and auditable reasoning

This approach transforms memory from passive retrieval into an active, shared world model for both human and AI developers.

## Key Contributions

- A novel architecture integrating TKGs, Causal CRDTs, and Provenance-Driven RL to create a cohesive memory layer for software engineering
- The SYNAPSE benchmark for empirical validation of multi-agent software engineering systems
- A research agenda inviting collaboration on critical challenges in AI-assisted software engineering

## Core Thesis

As AI generates exponentially more code, the critical bottleneck irrevocably shifts from *generation* to *understanding, provenance, and coordination*. Arc aims to be the essential memory layer that future AI systems and human developers rely on for verified provenance and coherent multi-agent collaboration, supporting a paradigm where engineering work shifts from manual implementation to higher-level strategic oversight and validation.

## Paper Overview

The paper introduces three key components that form the Arc architecture:

1. **Temporal Knowledge Graphs (TKGs)**: A structured representation of code artifacts, their relationships, and evolution over time, enabling rich queries about code history and decision rationale.

2. **Causal CRDT Layer**: An extension of Conflict-free Replicated Data Types that incorporates semantic invariants derived from the TKG, allowing multiple agents to make concurrent modifications safely.

3. **Provenance-Driven RL**: A reinforcement learning approach that rewards agents for generating and consuming causal context, fostering coordination and auditable reasoning.

## Research Agenda & Open Challenges

Arc opens research frontiers at the intersection of distributed systems, program provenance, and reinforcement learning. Key challenges include:

- **Formal Foundations**: Establishing safety and liveness guarantees for Causal CRDTs
- **Scalability & Performance**: Mitigating TKG query latency and sustaining sub-second queries on large graphs
- **Advanced Reinforcement Learning**: Designing tractable graph-centric state representations for offline RL
- **Human–Agent Interaction**: Creating visual abstractions for million-edge causal chains
- **Generalisation & Transfer**: Transferring agent embeddings of causal code traces across programming languages
- **Cross-Modal Integration**: Reconciling heterogeneous signals into a unified TKG schema

## SYNAPSE Benchmark

The SYNAPSE benchmark evaluates multi-agent engineering systems by tasking two AI agents with upgrading OpenSSL across a microservice monorepo while maintaining build integrity and test coverage. It provides metrics for task completion, integration errors, concurrent throughput, provenance quality, and conflict resolution.

## Collaboration

We actively seek partners from academia and industry with expertise in the aforementioned areas. By engaging with the SYNAPSE benchmark and contributing to these core ideas, we can collectively transform software evolution from a fragile, sequential process into a consistent, multi-agent endeavor.

For inquiries about Arc or potential collaborations, please contact: Jarrod@arc.computer

## Citation

If you use ideas from this paper in your research, please cite:

```bibtex
@article{barnes2025arc,
  title={Arc: Towards Structured, Concurrent, and Provenance-Aware Collective AI Memory for Software Engineering},
  author={Barnes, Jarrod},
  journal={arXiv preprint},
  year={2025}
}
```

## License

This position paper is shared under [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

## Learn More

Visit [arc.computer](https://arc.computer) for more information about Arc and our vision for the future of AI-assisted software engineering.
