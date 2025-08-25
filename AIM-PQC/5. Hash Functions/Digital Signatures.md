- Digital signatures Digital signatures extend MACs by providing non‑repudiation by signing the hash
- must ensure authenticity, integrity, and timestamping, and be infeasible to forge.
- The signer computes h = H(M) , encrypts h under the private key to produce the signature, and sends (M, sig).
- Any verifier uses the signer’s public key to decrypt sig 

---
## Fundamentals:

- To sign, sender hashes the message and encrypts the digest with their private key.
- Verification decrypts the signature with the signer’s public key and compares it to the freshly computed hash.

---
## Workflow:

1. Hashing: h = H(M)
2. Signing: compute sig = Encrypt^[private] (h)
3. Verify: Decrypt sig with public key, compare to H(M)
4. Outcome: equal hashes, verified

---
## NIST Digital Signature Algorithm (DSA):

- DSA (FIPS 186‑4) uses modular exponentiation over a prime field.
- It generates signature pairs (r, s) using private key and hash.
- Verification involves discrete logarithm operations.
- DSA is efficient for signature generation but not for encryption or key exchange.

---
## ElGamal Digital Signature Scheme

- Based on the discrete logarithm problem.
- computing ephemeral values and modular inverses.
- Though structurally related to ElGamal encryption, its signature variant is less common today, superseded by DSA and other schemes.

---
## Schnorr Digital Signature Scheme

- optimize ElGamal by minimizing per‑message computation.
- A random nonce is precomputed offline, and only a single modular multiplication and hash are needed during signing.
- This efficiency makes Schnorr attractive for constrained devices.
---
## Elliptic Curve Digital Signature Algorithm (ECDSA)

- ECDSA applies the discrete logarithm problem over elliptic curves, achieving equivalent security to RSA/DSA with much smaller keys (e.g., 256‑bit ECC vs. 3072‑bit RSA).
- shorter keys yield faster computations and smaller signatures, benefiting embedded and mobile applications.

---
## RSA‑PSS: Probabilistic Signature Scheme

- RSA‑PSS improves security by randomizing padding: a salt is incorporated into the padding before exponentiation, thwarting deterministic signature attacks.
- Its security proof tightly relates forging PSS signatures to inverting RSA, making it the recommended RSA signature method in FIPS 186‑4.