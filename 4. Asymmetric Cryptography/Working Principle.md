- **Key Pair Concept:** Each user generates a _public_ and a _private_ key. Public keys are shared openly; private keys remain confidential. Messages encrypted with a recipient's public key can only be decrypted with the recipient’s private key.
- **Mathematical Hardness:** Relies on _one‑way_ or _trap‑door_ functions—easy to compute in one direction, infeasible to invert without secret information.
- **Security Premise:** It must be computationally infeasible to derive the private key from the public key.
Cryptanalysis of these problems (e.g., integer factorization, discrete logarithm) drives ongoing research. Key sizes and parameters are chosen to resist known attacks, balancing performance and security.

---

- **Public‑Key Rings:** Collections of known public keys for peers.
    
- [[Key Directories & PKIs]]: Centralized certificate authorities to authenticate public keys and prevent man‑in‑the‑middle attacks.
    
- **Trust Models:** Web of Trust vs. hierarchical PKI—trade‑offs in decentralization and scalability.
    

Key authentication remains critical—if an attacker can substitute a bogus public key, all security collapses. Certificate Authorities (CAs) and explicit trust anchors help mitigate this risk.