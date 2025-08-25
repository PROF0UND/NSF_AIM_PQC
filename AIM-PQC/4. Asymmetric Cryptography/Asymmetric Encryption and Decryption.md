
- Bob encrypts messages for Alice using her public key.
- Alice decrypts using her private key.
- Conversely, encrypting with a private key and decrypting with a public key provides authentication.

## Encryption with public key

- **Security Guarantee:** Only the holder of the matching private key can recover the message.
    
- **Performance Considerations:** Asymmetric operations are orders of magnitude slower than symmetric; often used to encrypt small data (e.g., session keys).
    

Hybrid systems combine the strengths of both: use public‑key crypto to exchange a symmetric session key, then bulk‑encrypt with a fast symmetric cipher.
 > Funny how I came up with this at the exact same time.

---

### Encryption with private key - Authentication & Signatures

- **Mechanism:**
    
    1. Message Digest → _Sign(PrivateKey_sender)_ → Signature
        
    2. Signature + Message → _Verify(Signature, PublicKey_sender)_
        
- **Non‑Repudiation:** Only the private‑key holder could have produced that signature.
    
- **Applications:** Digital signatures for files, certificates, blockchain transactions.

Signatures usually operate on hashes of messages for efficiency and security (collision resistance). Algorithms include [[RSA]], DSA, ECDSA.