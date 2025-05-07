# Arc: Structured, Concurrent, and Provenance-Aware Collective AI Memory for Software Engineering

This repository contains the position paper describing Arc, a proposed architecture enabling multiple reinforcement learning (RL) agents to collaboratively manage long-lived codebases, transforming them into continuously-evolving world models.

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

## Repository Contents

- `main.tex`: The main LaTeX source file for the position paper
- `figures/`: Directory containing TikZ source files for all figures
- `references.bib`: Bibliography file with all references
- `glossary.tex`: Glossary of key terms used in the paper

## Building the Paper

To build the paper, you'll need a LaTeX distribution installed on your system. We recommend using [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/).

### Quick Compilation

We provide multiple options for compiling the paper:

#### Using the shell script:

```bash
# Make the script executable
chmod +x compile.sh

# Run the compilation script
./compile.sh
```

#### Using Make:

```bash
# Compile the paper
make

# View the PDF
make view

# Clean up auxiliary files
make clean
```

### Manual Compilation

If you prefer to compile manually:

```bash
# Clone the repository
git clone https://github.com/arc-computer/arc-whitepaper.git
cd arc-whitepaper

# Build the PDF
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

### Required LaTeX Packages

The paper uses the following LaTeX packages:
- tikz (with arrows.meta, positioning, shapes, fit libraries)
- natbib
- microtype
- booktabs
- xcolor
- titlesec
- setspace
- tcolorbox
- fancyhdr
- qrcode
- enumitem

Most modern LaTeX distributions include these packages by default.

## Core Thesis

As AI generates exponentially more code, the critical bottleneck irrevocably shifts from *generation* to *understanding, provenance, and coordination*. Arc aims to be the essential memory layer that future AI systems and human developers rely on for verified provenance and coherent multi-agent collaboration, supporting a paradigm where engineering work shifts from manual implementation to higher-level strategic oversight and validation.

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
