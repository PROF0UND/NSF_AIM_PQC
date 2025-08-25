## Intro
- MAC attaches a short authentication tag to a message using a shared secret key.
- unlike signatures, MACs provide integrity and authenticity without non-repudiation.
- faster than signatures.
- rely on symmetric primitives (hashes or block ciphers) to compute and verify tags.

---
## Basics:

1. Both parties share a K key. 
2. the sender computes C(K, M) and adds it to M.
3. The receiver recomputes C(K,M) on his side and compares.
4. A match confirms the message is unaltered.

---
## Verification

- if an attacker alters M without knowing K, they produce the wrong MAC code.
- Verification fails and the message is discarded.
- This property relies on the underlying hash or cipher’s unpredictability and robustness against key‑recovery attacks.
- ![[Pasted image 20250527164719.png]]
---
## Properties

1. **Integrity & Authentication:** confirm sender and detect changes.
2. **Symmetric Key Basis:** Both parties share K
3. **Fixed Tag Size:** Standardized output eg: 128bits
4. **Arbitrary Input Length:** Handle messages of any size.
5. **No Non‑Repudiation:** Since keys are shared, either party can generate valid tags.

---
## [[HMAC]]

---
## DAA: Cipher‑Based MACs

- uses DES in CBC mode with zero IV.
- Input is split in 64-bit blocks
- final ciphertext block becomes the MAC tag.
- Standardized as FIPS 113 and ANSI X9.17, DAA is now obsolete due to DES’s small key size and discovered weaknesses.

---
## CMAC: AES and DES‑Based MAC

- CMAC overcomes DAA’s message‑length restriction by using two subkeys derived from the cipher key and processing arbitrary‑length messages securely.
- Specified in NIST SP 800‑38B, CMAC is the recommended block‑cipher MAC for AES and 3DES, providing provable security and flexible tag sizes.