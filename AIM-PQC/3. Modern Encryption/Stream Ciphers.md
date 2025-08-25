- In stream ciphers, plaintext bits are encrypted individually using a [[Key Stream]]. Stream ciphers are classified into:

## Types: 
	1. Synchronous Stream Ciphers:
		1. keystream depends only on encryption key.
	2. Asynchronous Stream Ciphers:
		1. [[Key Stream]] depends on both key and ciphertext.
- Example: - Encrypt "A" (ASCII binary 1000001) using a random key stream (0101100). XOR gives ciphertext "m" (binary 1101101). Decryption reverses this, recovering "A".


## Random Number Generation in Stream Ciphers:

- Security in stream ciphers depends on randomness of the keystream.
- which is derives from key bits using:

1. True Random Number Generators (TRNG):
	1. Rely on Physical Phenomenon
	2. noise, Radioactive Decay etc.
	3. Output is non-reproducible and ideal for one-time pads and generating session keys.
	4. Hardware intensive.
2. Pseudorandom Number Generators (PRNG):
	1. Start from a seed.
	2. Fast and resource efficient.
	3. Predictable if the seed id compromised
3. Cryptographically Secure PRNGs (CSPRNGs):
	1. Unpredictable outputs, computationally infeasible to guess subsequent or preceding bits.
	2. combine algorithmic seen with inpredictability
	3. given any contiguous block of output bits, it is infeasible to predict future or past bits.
	4. underpin practical stream ciphers in software.