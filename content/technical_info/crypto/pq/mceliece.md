---
title: McEliece
---

McEliiece is the first known kem, developed in 1978 by Robert McEliece and is based on the hardness of decoding a linear code (which is known to be NP-hard).
At the moment no official specifiction from NIST is available, the latest specification can be found [here](https://classic.mceliece.org/mceliece-spec-20221023.pdf).
McEliece was *not* selected to be standardized by NIST, but it was in the run until the last round.
There are currently three parameter sets for McEliece: hqc-128, hqc-192 and hqc-256 corrsponding to the [[nist_competition#Security levels]] 1,3 and 5. 

## Numbers

### Sizes (in bytes) of keys and ciphertexts of HQC

| Version | Encap Key | Decap Key | Ciphertext | Shared Secret Key | Security Level |
|---------|-----------|-----------|------------|-------------------|----------------|
| hqc-128 | 2249      | 56        | 4497       | 64                | 1              |
| hqc-192 | 4522      | 64        | 9042       | 64                | 3              |
| hqc-256 | 7245      | 72        | 14485      | 64                | 5              |


