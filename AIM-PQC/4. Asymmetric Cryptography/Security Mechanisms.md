### Key Establishment

- **Key Exchange Protocols:** Enable two parties to derive a shared secret over insecure channels (e.g., Diffie‑Hellman).
- **Elimination of Pre‑Shared Secrets:** _Public keys_ make initial exchange possible without prior secret distribution.
- **Authentication of Public Keys:** Additional channels or certificates needed to prevent active attacks.

---

## Signatures & Performance

- **Digital Signatures:** Provide integrity and non‑repudiation (e.g., RSA, DSA, ECDSA).
- **Challenge‑Response Authentication:** Verifying identity by signing challenges.
- **Computational Costs:** Public‑key ops are ~1,000× slower than symmetric; used sparingly for small data (keys, digests).

---

## Combining Authentication and Confidentiality
- Sender signs plaintext with a private key to prove origin.
- Signing before encryption protects signature from tampering.
- ![[Pasted image 20250526134736.png]]
- 