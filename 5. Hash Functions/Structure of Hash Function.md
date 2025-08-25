- Cryptographic hash functions follow an iterative “Merkle–Damgård” or sponge construction.

1. The input is split into blocks
2. each block is processed by a compression function that updates an internal state.
3. After the final block, the state is output as the digest.

- The compression function blends the message block and current state using bitwise operations (AND, OR, XOR) to maximize diffusion and confusion.
- any change in a single input bit propagates unpredictably through to the final hash.