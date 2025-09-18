---
title: Zero-Knowledge Proof (ZKP)
---


A Zero knowledge proof is an interaction between a Prover and a Verifier, where the Proofer wants
to convince the Verifier that some mathematical statement is true, without revealing anything about the solution.

This leads to three properties:

- **Completeness**: If the Prover is honest, she will eventually convince the Verifier
- **Soundness**: The Prover can only convince the Verifer if the statment is true
- **Zero-knowledge(ness)**: The Verifier learns no additional information beyond the fact that the statement is true




## Proof of Knowledge

Proof of Knowledge proofs that the Verifier knows something. For example "I know the factorization of N".
This is different then the statement "There exists a factorization of N", which is also proofable. 


## SNARKs

Zero-Knowledge Succinct Non-Interactive Argument of Knowledge, or short zk-SNARK.

The difference to "normal" ZkP is the Non-Interactive part, meaning that the proof can be generated without input from the Verifier.

 - **Succint**: Means the proofs are short
 - **Non-interactive**: Means the proof is static, consisting of a single message form the prover
 - **Of Knowledge**: More or less means that the protocol establishes not only that the statement is true, but also that the prover _knows_ a "witness" to the veracity of the statment.




