---
title: McEliece
---

McEliiece is the first known kem, developed in 1978 by Robert McEliece and is based on the hardness of decoding a linear code (which is known to be NP-hard).
At the moment no official specifiction from NIST is available, the latest specification can be found [here](https://classic.mceliece.org/mceliece-spec-20221023.pdf).
McEliece was *not* selected to be standardized by NIST, but it was in the run until the last round.
There are currently ten parameter sets for McEliece. 
The [[nist_competition#Security levels]] are 1, 3 and 5 for the parameter sets. For more information see below.


## Numbers

### Sizes (in bytes) of keys and ciphertexts of McEliece

| Version          | Encap Key | Decap Key  | Ciphertext | Shared Secret Key | Security Level |
|------------------|-----------|------------|------------|-------------------|----------------|
| mcelice-348864   | 261.120   | 6.492      | 96         | 32                | 1              | 
| mcelice-348864f  | 261.120   | 6.492      | 96         | 32                | 1              | 
| mcelice-460896   | 524.160   | 13.608     | 156        | 32                | 3              | 
| mcelice-460896f  | 524.160   | 13.608     | 156        | 32                | 3              | 
| mcelice-6688128  | 1.044.992 | 13.932     | 208        | 32                | 5              | 
| mcelice-6688128f | 1.044.992 | 13.932     | 208        | 32                | 5              | 
| mcelice-6960119  | 1.047.319 | 13.948     | 194        | 32                | 5              | 
| mcelice-6960119f | 1.047.319 | 13.948     | 194        | 32                | 5              | 
| mcelice-8192128  | 1.357.824 | 14.120     | 208        | 32                | 5              | 
| mcelice-8192128f | 1.357.824 | 14.120     | 208        | 32                | 5              | 


The "." is a thousand seperator, for readability
