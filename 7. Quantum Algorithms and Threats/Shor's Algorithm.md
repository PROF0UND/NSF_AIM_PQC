- Discovered by Peter Shor, 1994
- demonstrated that a quantum computer could find the prime factors of a large number exponentially faster than any known classical method.
- factoring a large number is practically impossible for classical computers
- it would take longer than the age of the universe.
- Shor’s algorithm uses a quantum technique (quantum Fourier transform and periodicity finding) to crack this problem feasibly.
- large scale quantum computers can therefore break encryption of ciphers that rely on factorization like rsa.
- RSA factorizes
- ![[Pasted image 20250603005511.png]]

---

- employs the strange powers of quantum mechanics to factor large numbers efficiently.
- a quantum routine that finds the **period** of a certain function related to the number being factored.
- The full mechanism involves advanced math (Fourier Transformations and modular arithmetic)

## [[Mechanism of Shor's Algorithm]]

---

## [[Public-key cryptography and Shor]]

---


|                                        |                                           |                                                     |                                                              |
| -------------------------------------- | ----------------------------------------- | --------------------------------------------------- | ------------------------------------------------------------ |
| **Public-Key Algorithm**               | **Typical Key Size**                      | **Classical Security**                              | **Security with Quantum**                                    |
| **RSA (current standard)**             | 2048 bits (modulus)                       | ~112-bit strength (infeasible to break classically) | **Broken by Shor’s algorithm** (quantum poly-time factoring) |
| **RSA (larger legacy)**                | 3072 bits                                 | ~128-bit strength (secure classically)              | **Broken by Shor’s** (no security once large QC exists)      |
| **Diffie–Hellman (DH)**                | 2048-bit prime (group)                    | ~112-bit strength (classically safe)                | **Broken by Shor’s** (solves discrete log)                   |
| **DSA (Digital Sig. Algorithm)**       | 2048-bit p / 224-bit q                    | ~112-bit strength (classically safe)                | **Broken by Shor’s** (solves discrete log)                   |
| **ECC (e.g., secp256r1, Curve P-256)** | 256-bit curve (e.g., 256-bit prime field) | ~128-bit strength classically                       | **Broken by Shor’s** (solves elliptic curve discrete log)    |
| **ECC (higher, e.g., P-384)**          | 384-bit curve                             | ~192-bit strength classically                       | **Broken by Shor’s** (same as above)                         |

---
## Cryptosystems affected by Shor's Algorithm

1. [[RSA]] :
	1. Secure against classical attacks (estimated ~112-bit strength for RSA-2048)
	2. No matter how large the RSA key (4096, 8192 bits, etc.), Shor’s algorithm can factor it in polynomial time
2. [[Diffie‑Hellman Key Exchange]] and DSA:
	1. Based on discrete logarithms in large prime fields.
	2. secure classically (DH with 2048-bit prime ~112-bit strength classically)
3. [[Elliptic Curve Cryptography]]:
	1. Based on discrete log on elliptical curves.
4. Other:
	1. - **Other systems based on factoring or discrete log** (such as **RSA-OAEP encryption**, **ElGamal**, **ECDSA signatures**, etc.): All fall under the same category – **quantum-broken**.


---

## [[Shor Exercise]]