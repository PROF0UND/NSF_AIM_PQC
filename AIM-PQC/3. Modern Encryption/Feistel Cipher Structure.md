- Each round splits the block in two halves.
- one half is modified by a "Round Function". then XOR'd with the other half.
- Halves swap each round.
- This design ensures invertibility using the same structure for encryption and decryption, foundational to DES and 3DES.

## Feistel uses:
1. Substitution:
	1. Each plaintext char is replaced by corresponding ciphertext element.
2. Permutation: 
	1. A sequence of plaintext elements is replaced by a permutation of that sequence.
	2. (Basically [[transposition]]).
