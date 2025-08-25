- Current keys are long enough to fend off brute force attacks.

1. [[DES Algorithm]]:
	1. old Cipher. 56 bits 
	2. already broken by classical computers.
	3. around 268 million tries. too low
2. [[Triple DES]]
	1. 112 bit key.
	2. borderline secure
	3. Grover reduces to $$2^{56}\sim7.2 *10^{16}$$ tries which is easily within reach.
3. [[Advanced Encryption Standard]] -128:
	1. classically 2^[128] complexity
	2. unbreakable by brute force.
	3. not completely secure against quantum attacks.
4. [[Advanced Encryption Standard]] - 256:
	1. astronomically secure.
	2. practically unbreakable even after grovers.
	3. Considered **QUANTUM RESISTANT**

---

- In general Doubling key length increases security.
