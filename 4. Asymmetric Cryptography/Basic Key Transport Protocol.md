- **Rationale:** Use slow asymmetric crypto only to exchange keys; use fast symmetric crypto for bulk data.
    
- **Example:** TLS handshake uses RSA or DH to agree on session keys, then AES for data encryption.
---
1. Bob generates asymmetric key pair and symmetric session key.
    
2. Bob signs or encrypts session key with his private key (or uses recipient’s public key).
    
3. Bob sends encrypted session key to Alice over insecure channel.
4. __WORNG__![[Pasted image 20250526135236.png]]
5. 