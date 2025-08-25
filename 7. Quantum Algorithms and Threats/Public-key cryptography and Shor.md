- Asymmetric cryptography built on one-way functions.
- examples: Integer factorizations in [[RSA]], Discrete logarithmic problems in [[Elliptic Curve Cryptography]], [[Diffie‑Hellman Key Exchange]] and [[Digital Signatures]] (rely on discrete log problems in large prime-number moduli)
- These secure against classical attacks
- Shor's algorithm solves both these problems.
- entire foundation of current public key infrastructure (HTTPS, secure emails, digital signatures etc) can be broken with Shor's Algorithm.

---
## Example of RSA

- Relies on integer factorization. 
- Shor's Algorithm on a quantum computer could find these prime factors in polynomial time.
- time scales as cube of the number of digits.
- Billions of years -> Hours or days.
