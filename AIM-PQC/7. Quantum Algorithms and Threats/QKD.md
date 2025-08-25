- use the laws of quantum mechanics themselves to secure the keys.
- it’s about sending keys encoded in quantum states (like photons) such that any eavesdropping can be detected.

---
## [[BB84]]

---
- QKD relies on physics.
- Someone eavesdropping is detectable
- QKD can provide **unconditional security**
---
- replaces the key exchange mechanism not encryption algorithms.
- Alice and Bob could use QKD to generate a shared key, then use that key in a traditional symmetric cipher (like a one-time pad or AES) to encrypt messages. 

---
## Current state of QKD:
typically uses either fiber optic cables or free-space (through air or vacuum, even via satellite) to send photons

1. [[Fiber Based QKD]]
2. [[Satellite QKD]]
3. Security and standardization:
	1. QKD is mature enough that standards (like from ETSI and IEEE) are being developed.

---

## Pros and Cons

### Pros:
- The security is based on physics, not breakable by increasing computational power. It offers forward security – even if in the future all algorithms are broken, the keys exchanged via QKD remain safe as long as physics holds.
### Cons:
- It requires specialized hardware and infrastructure
- It’s not software-upgradable like PQC.
- QKD is point-to-point; scaling it to a network is complex