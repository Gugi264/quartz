---
title: ML-DSA (Dilithium)
---

ML-DSA (Module-Lattice-Based Digital Signature) is a PQ (Post-Quantum) digital signature algorithm, standardized in [Fips 204](https://csrc.nist.gov/pubs/fips/204/final), and is the winner of the first PQ competition by NIST in the signature category. 
ML-DSA, originally called Dilithium, is based on the Module Learning with Errors problem.

NIST defined three security levels for ML-DSA: 2,3 and 5 which are ML-DSA-44,  ML-DSA-65 and ML-DSA-87 respectively.
For an overview of the security levels, check [[nist_competition#Security levels]].


## HashML-DSA 

A new Pre-Hash variant got introduced (called HashML-DSA), with the aim to allow the user to use a different [[hash]] algorithm to hash the message. This is especially useful if the platform performing the signing or verifcation operation has hardware support for one of the approved [[hash]] algorithms. 

Internally the algorithm still uses SHAKE-256 to [[hash]] a few parameters.

At the time of writing the following [[hash]] algorithms were explicitly listed in the standard, although it may be used with other approved [[hash]] functions of XOFs:
    - SHA-256
    - SHA-512
    - SHAKE-128


## Numbers

### Sizes (in bytes) of keys and signatures of ML-DSA

For the size and the security level it does not matter if the hash or the normal pure variant is used.

|Version           | Private Key | Public Key | Signature Size | Security Level |
|-----------|-------------|------------|----------------|----------------|
| ML-DSA-44 | 2560        | 1312       | 2420           | 2              |
| ML-DSA-65 | 4032        | 1952       | 3309           | 3              |
| ML-DSA-87 | 4896        | 2592       | 4627           | 5              |


## OID's
### Pure ML-DSA
- ml-dsa-44: 2.16.840.1.101.3.4.3.17
- ml-dsa-65: 2.16.840.1.101.3.4.3.18
- ml-dsa-87: 2.16.840.1.101.3.4.3.19

### Hash ML-DSA
#### SHA-512
- hash-ml-dsa-44: 2.16.840.1.101.3.4.3.32
- hash-ml-dsa-65: 2.16.840.1.101.3.4.3.33
- hash-ml-dsa-87: 2.16.840.1.101.3.4.3.34

## Performance

Disclaimer: Taken from [pq-crystals dilithium](https://pq-crystals.org/dilithium/), which, as far as I know, does not reflect the latest changed from the NIST standard.
But the real values should be in the same ballpark.

Measurements where taken with an Intel Core-i7 6600U (Skylake) CPU.
There are two measurments: One for the C reference implementation, the other for an optimized AVX2 implementation.

#### Dilithium 2

|            | Skylake cycles (ref) | Skylake cycles (avx2) 
|-----------:|---------------------:|----------------------:|
|    **gen** |               300751 |                124031 |
|   **sign** |              1355434 |                333013 |
| **verify** |               327362 |                118412 |


#### Dilithium 3

|            | Skylake cycles (ref) | Skylake cycles (avx2) 
|-----------:|---------------------:|----------------------:|
|    **gen** |               544232 |                256403 |
|   **sign** |              2348703 |                529106 |
| **verify** |               522267 |                179424 |


#### Dilithium 5

|            | Skylake cycles (ref) | Skylake cycles (avx2) 
|-----------:|---------------------:|----------------------:|
|    **gen** |               819475 |                256403 |
|   **sign** |              2856803 |                529106 |
| **verify** |               522267 |                179424 |


## Differences to the Fips 204 Draft

A new variant got introduced, see [[#HashML-DSA]].

The changes to the previous [fips 204 draft](https://csrc.nist.gov/pubs/fips/204/ipd) are:

- small changes to the signature algorithm
- domain seperation to differntiate between HashML-DSA and normal ML-DSA
- domain seperation, called context (ctx), which is an additional input to the sign/verify operation
- domain seperation when expanding keys from a seed to have resistance when same seed is used for multiple keys

