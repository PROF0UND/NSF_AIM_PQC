- Discovered by Lov Grover in 1996.
- searching an unsorted database or, equivalently, guessing a secret key by brute force.
- Clasically, trying all possibilities is **linear** in the number of possibilities (e.g., checking 1 billion items one-by-one takes a billion steps).
- Grover’s quantum algorithm can find a target item in the square root of that number of steps aprox.
- provides _quadratic speedup_ for brute force search
- not as fast as Shor's
- threatens symmetric ciphers (like AES) and what doubling key lengths achieves.

---
> Can break Symmetric Algorithms.

- [[Symmetric Cryptography]] are more robust against quantum attacks.
- Grover gives a quadratic speedup to brute force attacks.

---
- Quantum search algorithm
- finds item in an unsorted list of N items in $$\sqrt N$$ steps.
- a classical brute force takes on average N/2 tries
- Suppose an encryption uses a 128-bit key then the number of possible keys are: $$2^{128}$$ however Grover only checks in $$\sqrt(2^{128}) = 2^{64}$$ steps.

---

- Applies to symmetric keys and hash functions.
- For encryption, it means trying keys; for hash functions, it means finding preimages
- It is a **generic attack** – not targeting a specific structure of an algorithm but the brute-force domain. So, all symmetric ciphers (AES, DES, 3DES, etc.) are uniformly affected.
- The speedup is quadratic, not exponential. This is both good and bad: Good because it’s a smaller advantage than Shor’s (which was exponential), meaning symmetric crypto is **not completely broken** but weakened; bad because for large N, a square root is still a huge improvement

---
## [[Grover's impact on Symmetric Encryption]]

---
- Grover’s algorithm, while powerful, **requires a large number of sequential quantum operations** for big search spaces.
- Quantum computers have to maintain coherence over all those steps, which is technologically challenging. For instance, theoretical analyses have shown that even with Grover’s algorithm, breaking AES-128 might require billions of quantum operations which could translate to impractical run-times if each quantum operation is slow or error-prone.
---
## [[Grover's impact on Hashes]]

---
## Mitigation:

- Simplest strategy: Double Key Length.
- Another mitigation is in design: some symmetric modes or constructions can be made **quantum-proof** by increasing the work factor for a quantum attacker. For example, using keys that are derived through functions that inherently limit quantum speedups or using hashing with salt can complicate straightforward Grover searches.