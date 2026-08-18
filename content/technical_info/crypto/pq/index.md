---
title: Post-Quantum Cryptography
---

PQC (**P**ost-**Q**uantum **C**ryptography) are cryptographic algorithms that are thought to be secure against quantum computers.
Sometimes also refered as **quantum-proof**, **quantum-safe** or **quantum-resistant**. 
Also PQ-algorithms also referr to algorithms that are resistant to quantum computers.


# NIST

NIST (National Institute of Standards and Technology)  is an agency of the United States Department of Commerce whose mission is to promote American innovation and industrial competitiveness. 


## First call to standardization
NIST started a the first call to standardize PQ-algorithms in 2016.

At the end of 2024 the three winners were published: [ML-DSA](ml-dsa), [SLH-DSA](slh-dsa) and [ML-KEM](ml-kem). The first two are signature algorithms, where as the last on is a KEM.

In the KEM category [[hqc]] was also selected as a runner-up, standarization pending.
In the signature category, [[fn-dsa]] was also selected, but is yet to be officially standardized.


# Security levels
NIST defines the following security strength categories:

| Level | Security Description |
|---|---|
|I | At least as hard to break as AES-128 (exhaustive key search) |
|II| At least as hard to break as SHA-256 (collision search) |
|III| At least as hard to break as AES-192 (exhaustive key search) |
|IV| At least as hard to break as SHA-384 (collision search) |
|V| At least as hard to break as AES-256 (exhaustive key search) 

## Second call for additional signatures

In 2022 NIST called for additional signatures to be standardized. Particular interest is shown towards algorithms not based on structured lattices, as [[ml-dsa]] and [[fn-dsa]] are both based on those. Furthermore the focus lies on schemes with short signatures and fast verfication.
