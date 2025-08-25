- Arguably the most prominent.
- A lattice is like a regular grid of points in a high-dimensional space.
- leverage problems such as finding short vectors in a lattice or solving linear equations with small errors.
---
## Hard Problems:
### 1. Shortest Vector Problem:
- Finding shortest non-zero vector in a lattice.
### 2. Learning With Errors:
- one is given linear equations (mod some number) that are mostly correct but have small random errors added
- solving for the original secret is easy if no errors, but the errors make it as hard as certain worst-case lattice problems​.
---

## Example Problems:
- For encryption/KEM: **CRYSTALS-Kyber**, **SABER**, **NTRU**, **FrodoKEM**, **NTRU Prime**, etc.
- For signatures: **CRYSTALS-Dilithium** and **FALCON**.
- these often used a structured lattice called MODULE or IDEAL LATTICE to get efficiency while relying on the hardness of lattice problems like Module-LWE or Ring-LWE.
- Kyber and Dilithium and built on hardness of Module-LWE/LWR(learning with rounding variant of LWE in a polynomial ring).
- **NTRU** (first proposed in 1996) uses a different lattice problem involving polynomial equations and has no known quantum attacks better than classical ones.

---
## Why are these Quantum Safe?

- unlike factoring, these don't succumb to Shor's
- best known attacks are just brute force or clever lattice reduction algorithms (like BKZ) that are still exponential-time for large lattices.
- Quantum comps don't provide dramatic speedup (aside from Grover's)
-  **lattice cryptography might even survive quantum computing**, which is why NIST’s selection heavily features lattice-based schemes​.
---
## Intuition:

- A simple analogy for LWE: Imagine you have a linear equation like 3x + 4y = 17
- someone has added a small error making it 3x + 4y ≈ 17 (mod 10)
- error makes the solution ambiguous
- LWE uses many equations and small errors to hide secrets, and solving them is like finding a point in a high-dimensional space that is just slightly off from many hyperplanes

---
- Lattice-based schemes performed extremely well in the NIST competition.
-  relatively **small key and ciphertext sizes and high speed**, making them attractive for real-world use​.
- downside is that some lattice schemes require more computation (e.g., number-theoretic transforms, Gaussian sampling) and careful protection against side-channel attacks (e.g., FALCON required masking against a timing attack​)