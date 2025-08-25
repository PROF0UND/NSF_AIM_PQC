- xor op is central for stream cipher cryptography.

| A   | B   | AxB |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   |
- output is 1 only is exactly one of the inputs is 1.
- XOR twice reverses its effect perfectly suited for encryption and subsequent decryption processes.
- A x B x B = A.
- This table below shows how each bit of plaintext (​X) combines with the key stream bit (K​) to produce the ciphertext bit (C​).
- ![[Pasted image 20250522215759.png]]


Modulo 2 addition and XOR are equivalent when binary bits are restricted to {0, 1}.

---
With a perfectly random key, ciphertext has a balanced chance (50%) of being 0 or 1, enhancing security by ensuring unpredictability—ideal for hiding any patterns in the plaintext. This property underpins the security of stream ciphers: predictability of Ki​ must be minimized to avoid statistical attack

---

