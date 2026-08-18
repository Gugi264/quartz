---
title: SLH-DSA (Sphincs+)
---

SLH-DSA (Stateless Hash-Based Digital Signature) is a PQ (Post-Quantum) digital signature algorithm, standardized in [Fips 205](https://csrc.nist.gov/pubs/fips/205/final), and got chosen as an alternative candidate of the first PQ competition by NIST in the signature category. 
The security of SLH-DSA, originally called Sphincs+, is based on hash functions.

NIST defined three security leves for SLH-DSA: 1, 3 and 5.
For an overview of the security levels, check [[nist_competition#Security levels]].

## Numbers

### Sizes (in bytes) of keys and signatures of SLH-DSA

|Version        | Private Key | Public Key | Signature Size | Security Level |
|---------------|-------------|------------|----------------|----------------|
|SLH-DSA-*-128s | 64        | 32       | 7.856          | 1              |
|SLH-DSA-*-128f | 64        | 32       | 17.088         | 1              |
|SLH-DSA-*-192s | 96        | 48       | 16.224         | 3              | 
|SLH-DSA-*-192f | 96        | 48       | 35.664         | 3              |
|SLH-DSA-*-256s | 128       | 64       | 29.792         | 5              |
|SLH-DSA-*-256f | 128       | 64       | 49.856         | 5              |


No difference in sizes if SHA2 or SHAKE variants are used.

The 's' variants are for 'small' signature, whereas the 'f' varaints are for 'fast' signature generation.

 
## OID's
### Pure SLH-DSA Sha2
- slh-dsa-sha2-128s: 2.16.840.1.101.3.4.3.20
- slh-dsa-sha2-128f: 2.16.840.1.101.3.4.3.21
- slh-dsa-sha2-192s: 2.16.840.1.101.3.4.3.22
- slh-dsa-sha2-192f: 2.16.840.1.101.3.4.3.23
- slh-dsa-sha2-256s: 2.16.840.1.101.3.4.3.24
- slh-dsa-sha2-256f: 2.16.840.1.101.3.4.3.25

### Pure SLH-DSA Shake
- slh-dsa-shake-128s: 2.16.840.1.101.3.4.3.26
- slh-dsa-shake-128f: 2.16.840.1.101.3.4.3.27
- slh-dsa-shake-192s: 2.16.840.1.101.3.4.3.28
- slh-dsa-shake-192f: 2.16.840.1.101.3.4.3.29
- slh-dsa-shake-256s: 2.16.840.1.101.3.4.3.30
- slh-dsa-shake-256f: 2.16.840.1.101.3.4.3.31

### HashML-DSA oid's
#### Pre-Hash with Sha256
- slh-dsa-sha2-128s-with-sha256: 2.16.840.1.101.3.4.3.35
- slh-dsa-sha2-128f-with-sha256: 2.16.840.1.101.3.4.3.36

#### Pre-Hash with Sha512
- slh-dsa-sha2-192s-with-sha512: 2.16.840.1.101.3.4.3.37
- slh-dsa-sha2-192f-with-sha512: 2.16.840.1.101.3.4.3.38
- slh-dsa-sha2-256s-with-sha512: 2.16.840.1.101.3.4.3.39
- slh-dsa-sha2-256f-with-sha512: 2.16.840.1.101.3.4.3.40

#### Pre-Hash with Shake128
- slh-dsa-shake-128s-with-shake128: 2.16.840.1.101.3.4.3.41
- slh-dsa-shake-128f-with-shake128: 2.16.840.1.101.3.4.3.42

#### Pre-Hash with Shake256
- slh-dsa-shake-192s-with-shake256: 2.16.840.1.101.3.4.3.43
- slh-dsa-shake-192f-with-shake256: 2.16.840.1.101.3.4.3.44
- slh-dsa-shake-256s-with-shake256: 2.16.840.1.101.3.4.3.45
- slh-dsa-shake-256f-with-shake256: 2.16.840.1.101.3.4.3.46
