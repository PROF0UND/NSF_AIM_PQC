- Most encryption systems rely on the difficulty of one way mathematical problems.
- These problems can be solved using quantum computers in the future.
-  large-scale quantum computer could crack RSA or ECC _exponentially faster_ than any classical algorithm, rendering our current public-key infrastructure insecure.

#### Public key and Grover's
- Symmetric cryptography is less threatened.
- Grover's algorithm speeds up brute force search but only quadratically.
- The _real quantum threat_ looms over asymmetric encryption and signatures.
- NIST recognized that we must act _now_ to develop and standardize **quantum-resistant replacements** for RSA/ECC because deploying new cryptography worldwide can take many years.
- adversaries might record sensitive encrypted data today and simply wait until they have a quantum computer to decrypt it​.

- PQC algorithms are designed to be hard for both classical and quantum computers.
- Instead of factoring or discrete logs, PQC schemes rely on alternatives like lattices, error-correcting codes, multivariate polynomial equations, and hash functions – problems for which no efficient quantum algorithms are known.