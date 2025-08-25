## Multivariate Quadratic Cryptography

- Solving multivariate polynomial equations.

## Hard Problem:

- general problem is often called MQ (Multivariate Quadratic) problem
- given a set of quadratic eqs in $x_1, x_2 ... x_n$ over a field (say GF(2) or GF(256)), find a solution vector
- For a large number of equations and variables, this is believed intractable (exponential time) for both classical and quantum algorithms
- hardness is somewhat analogous to Sudoku puzzles or nonlinear optimization with many variables – easy in small cases, but explodes in difficulty for big systems.

---
## Examples:
- mainly used for digital signatures
- encryption schemes based on MQ tended to be inefficient or broken
A notable class is **Rainbow**, which was a third-round finalist signature scheme in the NIST process​.
- Rainbow is an improved variant of earlier multivariate schemes (like Unbalanced Oil-and-Vinegar (UOV) signatures).
- works by constructing a trapdoor function using layers of quadratic equations that only the signer can invert.
Another is GeMSS (alternate candidate)
- based on the idea of HFE (Hidden Field Equations).

> These schemes often boast very fast signing and verifying operations and small signatures, _if_ the system is not broken. However, they typically have large public keys (because the public key is essentially the list of quadratic polynomials).

---

## Why Quantum Safe:
- Solving random multivariate quadratic systems is not known to be significantly easier on a quantum computer
- multivariate schemes often have complex algebraic structures that clever cryptanalysts have been able to exploit.
- many proposed multivariate schemes were _broken by classical attacks_, and some that survived had to increase their parameters (making keys huge). 
>The fundamental hardness (MQ problem) remains solid, but designing a secure _trapdoor_ scheme around it has proven tricky.

---
## NIST Competition Note:

- _Rainbow_ was a front-runner among multivariate signatures and made it to the final round.
- in early 2022, cryptanalysts **successfully broke Rainbow** – they found an attack that could recover the secret key in about 2 days on a single PC​.
- researchers discovered a clever method (the “intersection attack” and a variant of MinRank attack) to solve for Rainbow’s secret structure much faster than brute force​.
- ELIMINAtED!!
- The “weekend attack” on Rainbow underscored the risk that complex multivariate constructions might hide weaknesses​.
- **GeMSS**, also suffered some cryptanalysis that made it arguably insecure or impractical by requiring very large parameters to avoid attacks.
>NIST did _not_ select any multivariate signature in the first round of PQC standards.

- Multivariate cryptography offers the potential for **very short signatures and fast verification**