- uses hashes like: SHA-256 or SHAKE256
- in different structures (one-time signatures like WOTS, few-time signatures, and a Merkle tree of Merkle trees)
- to allow _an arbitrary number of signatures_ without needing to keep state.

## Trade-off:
- Signatures are large.
- 8 to 15 KB
- signing is slower.
- BUT verification is fast.

---

each one-time key’s public hash is put in a Merkle tree, whose root is the long-term public key. By including a path in the Merkle tree in the signature, one can verify that the one-time public key is authentic. SPHINCS+ uses many layers and a few other tricks to allow reuse of keys without state.