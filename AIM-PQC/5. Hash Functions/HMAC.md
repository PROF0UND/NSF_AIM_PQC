Hash based MACs
![[Pasted image 20250527165338.png]]
HMAC(key, message) = hash((key ⊕ opad) ∥ hash((key ⊕ ipad) ∥ message))

---
## Design Objectives:

HMAC was designed to:
- Reuse existing hash algorithms with minimal modification.
    
- Maintain the hash’s performance and replaceability.
    
- Handle keys simply and securely.
    
- Provide a sound security reduction to the embedded hash function’s strength.

>**HMAC’s security is at least as strong as the underlying hash function** — but **not stronger**.
  
- It is standardized as FIPS 198‑1 and mandatory in IPsec, SSL/TLS.

---
