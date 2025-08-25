- history spanning approximately 4000 years.
-  the use of the same secret key for both encryption and decryption.
- Modern symmetric algorithms like [[Advanced Encryption Standard]] and 3DES provide robust security and high performance.

**Core Properties**

_Single Shared Key (K)_ used for both encryption and decryption.
        
_Algorithm Symmetry:_ Encryption and decryption operations are nearly identical.

 - In large networks, distributing and storing all these keys securely becomes impractical.

--- 
## Limitations:
- **Key Distribution Problem:** Safely transporting K to all parties without exposure.
- **Key Management Overhead:** With n users, each needs  (n–1)  distinct secret keys—exponential scale in large systems.
- **Lack of Non‑Repudiation:** Any holder can claim to have created or altered a message.
---
- Symmetric ciphers remain indispensable for bulk encryption (e.g., disk encryption, VPNs).
- main drawback: key distribution.
- scalability and trust issues
