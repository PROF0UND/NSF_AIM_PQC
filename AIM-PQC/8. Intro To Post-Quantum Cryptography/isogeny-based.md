- built on advanced mathematics of **elliptic curves**, specifically structures called _isogenies_.
- an Isogeny: special function (mapping) between two elliptic curves that preserves certain structure.
- hard problem here is: given two elliptic curves that are related by a secret isogeny, find that isogeny.
- allows very small key sizes
---
## Hard Problem:

- Main problem often called SIDH (Supersingular Isogeny Diffie Hellman)
- [[Diffie‑Hellman Key Exchange]]
- in certain elliptic curve settings, finding a path (through a sequence of small isogeny steps) between two given “supersingular” elliptic curves is hard.
- Supersingular elliptic curves form a graph (the vertices are curves, edges are isogenies of a fixed small degree).
- if you start at a curve and walk a sequence according to the secret (private key) you reach a new curve (public key)
- An attacker sees the start and end curves but not the path.
- finding the secret path is like finding a needle in a haystack
---
## Example Algorithm:

- The notable scheme was **SIKE (Supersingular Isogeny Key Encapsulation)**, which was a KEM based on the SIDH protocol.
- Extremely small key sizes. ~300bytes
- It was an alternate candidate in Round 3
- no isogeny-based signature finalists; isogeny-based signatures exist in research (e.g., SQISign) but were not as far along during the competition.
---
## Why (Potentially) Quantum-Safe:

- believed to resist quantum attacks since it's related to **discrete log problem on certain group structures**
- but in a context (supersingular isogeny graphs) where even quantum algorithms didn’t have a clear advantage.
- SIDH was often touted as “the closest thing to quantum-resistant ECC” – same math domain (elliptic curves) but using a different hard problem.
- Up until 2022, no significant attack was known, and SIKE progressed through the competition due to its tiny keys and novel math.
---
## Intuition:

Consider two people playing a game on a very large maze of interconnected nodes. Alice knows a secret route through the maze (an isogeny path) that leads from the entrance to an exit. She tells Bob where she ended (the exit curve). Without the map (the secret path), Bob would have to wander the maze to find how she got there, which could take ages because the maze is exponentially large. That was the security of SIDH/SIKE in a nutshell: a massive maze (graph of curves) and the difficulty of finding a particular path.

---
## NIST Competition Note:

-  Isogeny crypto had a **dramatic turn of events**. In **August 2022, SIKE was broken by a _classical_ cryptanalysis**
- researchers devised an attack that recovered the secret isogeny from the public information in about an hour on a single core (for one of SIKE’s parameter sets)​.
- The break meant that SIKE (and the underlying SIDH protocol) was _completely insecure_. This was a surprise because SIKE had withstood years of scrutiny until a new insight was found. As a result, NIST immediately **dropped SIKE from consideration** – it was an alternate, but obviously a broken one is out.
> At present, **no isogeny-based scheme is being standardized**.

