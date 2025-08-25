- Grover's affects Hashing [[1. Hash Functions]] in terms of Preimage Resistance.
- if a hash output has n bits, finding a message that produces a given hash (Preimage attack) takes 2^[n] steps classically
- but $$2^{n/2}$$ with grover.
- [[SHA Family]] SHA-256 (256-bit output) has 256-bit security against preimage classically, but only 128-bit with a quantum computer.

---

- **Collision resistance** (finding two different messages with the same hash) is classically  $$ 2^{n/2} $$by the birthday paradox.
- Quantum offers potentially a slight speedup on collision-finding beyond Grover (there are more specialized quantum algorithms, though with less dramatic gains), but it’s believed not much better than the classical birthday bound in practice.
- not drastically worsened by quantum