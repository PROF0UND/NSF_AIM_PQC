1. Reduction to Period Finding:
	1. Instead of directly factoring, Shor’s algorithm turns factoring into a problem of finding the repetition period of a mathematical sequence. This is something a quantum computer can do swiftly using interference.
	2. Basically it tries to find the period of a mathematical function.
2. Quantum Parallelism:
	1. The quantum computer evaluates the sequence for many values simultaneously (thanks to superposition).
3. Interference and Measurement:
	1. By applying a quantum Fourier transform, it amplifies results that reveal the period and suppresses others. Measuring the quantum state then gives the period with high probability.
4. Classical Post-Processing:
	1. From the period, classical math can extract the prime factors of the original number.

- Finding prime factors this easy threatens current security systems.

---

## The Algorithm:

1. Given N, check that N is not a prime; otherwise, stop.

2. Choose a random integer 1 < a < N.

3. Compute b = GCD(a, N), if b > 1 it is a factor so return b and stop; otherwise,

**Hard step**
4. Find the order of a mod n  $$ a^r \equiv 1 \mod N$$ so you are finding r ONE-BY-ONE which can only be done with MAGIC or QUANTUM COMPUTERS!!!

5. If r is odd, go to Step 2; otherwise,

6. Compute $$ x = a^{(r/2)} + 1 \mod N$$ $$ y = a^{(r/2)} - 1 \mod N $$
7. If x = 0, Go to Step 2; If y = 0, take r = r/2 and go to step 5.
8. compute p = GCD (x, N) and q = gcd (y, N). At least one of them will be a non-trivial factor of N

### Only step 4 is the Quantum Step.