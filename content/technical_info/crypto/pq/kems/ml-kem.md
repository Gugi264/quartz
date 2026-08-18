---
title: ML-KEM (Kyber)
---

ML-KEM (Module-Lattice-Based Key-Encapsulation Mechanism) is a PQ (Post-Quantum) kem, standardized in [FIPS 203](https://csrc.nist.gov/pubs/fips/203/final), and is the winner of the first PQ competition by NSIT in the kem category.
ML-KEM, orgianally called Kyber, is based on Module Learning with Errors problem.

NIST defined three security levels for ML-KEM: 1, 3 and 5 which are ML-KEM-512, ML-KEM-768 and ML-KEM-1024 respectively.
For an overview of the security levels, check [[nist_competition#Security levels]].

## Numbers

### Sizes (in bytes) of keys and ciphertexts of ML-KEM

| Version | Encap Key | Decap Key | Ciphertext | Shared Secret Key | Security Level |
|---------|-----------|-----------|------------|-------------------|----------------|
| ML-KEM-512 | 800 | 1632 | 768 | 32 | 1 |
| ML-KEM-768 | 1184 | 2400 | 1088 | 32 | 3 |
| ML-KEM-1024 | 1568 | 3168 | 1568 | 32 | 5 |


## OID's
### Pure ML-DSA
- ml-kem-512:  2.16.840.1.101.3.4.4.1
- ml-kem-768:  2.16.840.1.101.3.4.4.2
- ml-kem-1024: 2.16.840.1.101.3.4.4.3








