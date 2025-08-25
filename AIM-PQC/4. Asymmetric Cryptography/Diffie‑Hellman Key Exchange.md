- **Protocol Goal:** Two parties derive a shared secret over an insecure channel.
    
- **Security Basis:** Hardness of discrete logarithm.
    
- **Real‑World Use:** TLS (DHE), SSH, IPsec.
---
 
- **Parameter Setup:** Agree on large prime 'q' and generator 'a' by communicating somehow.
- Steps:
![[Pasted image 20250526140150.png]]

-  x1 and x2 are private keys.
- y1 and y2 are public
- shared key  = (y2)^[x1] % q or (y1)^[x2] % q
- a used to generate public key.
- x1 generated independently.

---

### DHKE Ephemeral Mode: Perfect Forward Secrecy

- **Ephemeral DH (DHE):** Generate fresh key pair each session.
    
- **Benefit:** Compromise of long‑term keys does not expose past session secrets.
    
- **Trade‑Off:** Increased computational cost and handshake overhead.