1. Deploy PQC:
	1. software compatible.
	2. Over time, the classical algorithms will be phased out entirely as confidence in PQC grows. 
	3. NIST and other agencies are urging administrators to begin this migration now.
2. Using Longer Keys and Hashes:
	1. This is already largely in place: AES-256 and SHA-384/512 options exist and are widely supported.
3. Quantum Key Distribution:
	1. might be used in high-security scenarios (government, military, banking data centers) where extra security is worth the cost.

---

- researchers have anticipated this and are actively providing solutions (so it’s not an unsolvable doomsday!).
- Remember that while quantum computers will introduce new capabilities, they **do not break everything** in cryptography – for instance, one-time pad encryption remains theoretically unbreakable (QKD basically enables one-time pads by distributing pad material securely), and proper symmetric encryption with sufficiently long keys remains robust.
- public-key infrastructure that needs an overhaul
- plus a bump in symmetric key sizes.