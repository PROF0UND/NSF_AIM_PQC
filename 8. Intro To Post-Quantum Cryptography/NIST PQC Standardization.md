- To develop security against quantum threats, NIST launched a public competition-like process to develop and standardize PQC algorithms.

## When and Why:

- around 2015-2016 due to warning from cryptographic community.
-  In _late 2016_, NIST issued an open **Call for Proposals** to the world’s cryptographers, seeking candidate algorithms that could resist quantum attacks​.
- NIST stated this could take a decade or more.
- NIST mathematician Dustin Moody noted, they've been working on this for over 8 years now​.
---
## Goals:

- NIST aimed for algorithms that could replace or supplement RSA/ECC in a wide range of applications (TLS, VPN, code signing, etc.)
- An important secondary goal was DIVERSITY in cryptography so that is one breakthrough occurs, other algorithms remain secure.
- NIST also set five security strength categories (analogous to 128-bit, 192-bit, etc. security) for submitters to meet, ensuring PQC schemes would be at least as secure as current crypto​.
---
## Structure of the Competition:

### Round 1 (2017-2018): 
- 82 submissions from ~25 countries.
- 69 algorithms were accepted for public evaluation.
- NIST encouraged the global cryptography community to scrutinize these candidates – researchers published attacks, performance benchmarks, etc. over the next year.
### Round 2 (2019-2020):
- On public feedback, NIST down-selected 26 candidates (17 KEM and 9 signatures).
- some weaker proposals had been broken or withdrawn, and others were merged or tweaked.
- several lattice based schemes were out.
### Round 3 (2020-2022):
- 7 finalist algorithms and 8 alternates (July 2022).
- finalists were the leading candidates for standardization, while alternates were promising but might need more time or served as backups.
- final round that focused on security analysis and optimization.
### Selections:
- July 2022 NIST announced first group of winners.
- 1 KEM (CRYSTALS-Kyber)
- 3 signature schemes (CRYSTALS-Dilithium, FALCON, and SPHINCS+)
- Draft standards (Federal Information Processing Standards, FIPS) for the first chosen algorithms were released in 2023, and the **final FIPS standards were published in August 2024**​.
- We now have FIPS 203, 204, and 205 covering the first PQC algorithms.
### Ongoing:
- For KEM/encryption, NIST continued evaluating certain alternates in Round 4 to add a **“backup” encryption algorithm** of a different type.
- In 2025, NIST announced the selection of **HQC (a code-based KEM)** as this backup algorithm to complement lattice-based Kyber​.
- For digital Signatures, NIST initiated an **“on-ramp” process for additional signature schemes** in 2023, inviting new proposals to diversify beyond the lattice and hash-based signatures already chosen​.

---
## Openness:
- program has been highly transparent.
- everything public in the NIST PQC Portal.
- NIST also worked with organizations and industry to experiment with early implementations

> By 2024, the first standards were finalized, marking a major milestone in cryptographic history.

