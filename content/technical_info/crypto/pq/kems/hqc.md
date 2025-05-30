---
title: HQC
---

HQC (Hamming Quasi-Cyclic) is a PQ (Post-Quantum) code-based kem, and is the runner-up of the first PQ competition by NSIT in the kem category.
At the moment no official specifiction from NIST is available, the latest specification can be found [here](https://pqc-hqc.org/).

There are currently three parameter sets for HQC: hqc-128, hqc-192 and hqc-256 corrsponding to the [[nist_competition#Security levels]] 1,3 and 5. 

## Numbers

### Sizes (in bytes) of keys and ciphertexts of HQC

| Version | Encap Key | Decap Key | Ciphertext | Shared Secret Key | Security Level |
|---------|-----------|-----------|------------|-------------------|----------------|
| hqc-128 | 2249      | 56        | 4497       | 64                | 1              |
| hqc-192 | 4522      | 64        | 9042       | 64                | 3              |
| hqc-256 | 7245      | 72        | 14485      | 64                | 5              |


 
