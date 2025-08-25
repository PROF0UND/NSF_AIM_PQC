- **Name & Inventors:** Rivest–Shamir–Adleman (1977).
    
- **Security Basis:** Integer factorization.
    
- **Key Recommendations:**
    
    - 2048 bit keys for near‑term security.
        
    - 3072 bit or larger for long‑term.
        
- **Padding:** Essential (e.g., OAEP, PSS) to prevent chosen‑ciphertext attacks.

---

## Generating Keys

1. Choose two large primes p, q.
2. compute n = p.q and f(n) = (p-1)(q-1)
3. select a coprime (the only positive integer that divides both of them is 1) 'e' to f(n)
4. compute d = e^[-1] % f(n).

- **Performance Note:** Prime generation is the computational bottleneck; done infrequently.
