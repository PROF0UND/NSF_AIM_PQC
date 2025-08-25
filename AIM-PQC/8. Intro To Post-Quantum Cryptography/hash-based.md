- builds security solely on the assumed collision-resistance and one-wayness of cryptographic hash functions. [[1. Hash Functions]]
- only use hash functions (like [[SHA Family]]).
- very long history (the earliest scheme by Lamport dates to 1979)

---
## Hard Problem:

- security comes from the properties of hash functions.

	**One-Time Signature (OTS) scheme**:
	- to sign one message, you can use a secret that is the pre-image to a hash and publish the hash as public key.
	- without the original message, inverting the hash is _difficult_

- By hashing in various ways and using Merkle trees to aggregate many one-time keys, we get a full-fledged signature scheme.
- The hardness reduces to: **if SHA-256 (or whichever hash) is secure (pre-image and collision resistant)**, then the signature is unforgeable.

> There is no quantum algorithm to invert hash functions.

 hash-based signatures are believed quantum-safe (and even have security proofs relating to hash assumptions).

---
## Example Algorithms:

- NIST standardized stateful hash-based signatures like XMSS and LMSS (RFC 8391, and NIST SP 800-208)
- In the PQC competition, the main hash-based candidate was **[[SPHINCS+]]** – a stateless hash-based signature scheme that was a Round-3 alternate and ultimately selected for standardization​.
- **Picnic**, also relied on hash and symmetric crypto primitives combined with zero-knowledge proofs (it’s somewhat a hybrid of hash-based and interactive proof approach). Picnic was an alternate in Round 3 but wasn’t selected in the first batch.
---
## Why Quantum Safe:

- Hash-based schemes derive security from the properties of hash functions, which are currently believed to resist quantum attacks except for requiring longer outputs.
- the security of hash-based signatures is very well understood and relies on minimal assumptions (the hash behaves like a random function).

---
## Intuition:

REVIEW THIS!!

- (Lamport’s OTS) works like this: to create a one-time key pair, you pick 256 random secret strings and hash each to get 256 public values.
- To sign a 256-bit message digest, you reveal subsets of those secrets (e.g., for each bit of the digest, reveal one secret corresponding to either a 0 or 1 preimage).
- Anyone can hash the revealed secrets to check they match the public values and thereby verify you knew those secret preimages.
- This is unforgeable because to fake a signature, someone would need to find a new secret that hashes to one of the public values – essentially inverting the hash.
[[SPHINCS+]] uses this idea.

---

## NIST Competition Note:

- [[SPHINCS+]] was chosen as one of the standard PQC signature schemes​ for its _unique security properties_:
	1. it is **stateless and based only on hash functions**, offering a hedge against any unforeseen weaknesses in the algebraic approaches (like lattices).
- NIST prioritized having at least one algorithm in the suite that isn’t new or number-theoretic – SPHINCS+ fills that role, albeit with larger signatures and slower signing than the lattice schemes
- if (hypothetically) both lattice and multivariate schemes had issues, we’d still have a solid signature option.
- In the contest, SPHINCS+ was an **“alternate”** rather than a finalist
- !! but the security confidence in it was so high that NIST elevated it to be standardized alongside Dilithium and Falcon.
- Picnic (which relied on hash and symmetric cipher with an interactive proof) had larger signatures and slower performance and wasn’t as mature, so Picnic was not advanced.
>_hash functions alone cannot easily do public-key encryption_, so this category is only for signatures.

