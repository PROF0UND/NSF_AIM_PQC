
discuss the implementation of Kyber, Dilithium, and TLS 1.3 in Db2.

---

## GSKit

- IBM GSKit provides libraries for cryptography and Secure Sockets Laye (SSL) or TLS communications.
- has 2 seperate packages:
	1. GSKit Crypt: contains the cryptographic algorithms that the package of GSKit SSL depends on
	2. GSKit SSL: includes essential runtime support to enable security calls and use of TLS.


## In our experiments...

- we use cryptographic library to evolve the algorithm used in Db2 user auth towards quantum safety. (DH -> Kyber)
- use of the TLS implementation to evolve the Db2 TLS capability towards quantum safety (i.e., we migrate from TLS 1.2 to TLS 1.3).

---
## Kyber Implementation

- Kyber shares the secret key between the server and the client in 3 steps:
	1. Client generates a private/public Kyber key pair and sends the public key to the server.
	2. Server takes a public key and uses a random seed to generate a shared key and ciphertext.
	3. Client uses private key and ciphertext to get the shared key.

pretty basic stuff

- then we can use the Kyber shared secret key as a symmetric key further
- GSKit implements Kyber and provides three APIs corresponding to the three key steps above.

```
//Keypair generation API (client)  
int crypto_kem_keypair (unsigned char *pk,   
                        unsigned char *sk,   
                        KYBK k);

//Key encryption API (server)  
int crypto_kem_enc (unsigned char *ct,   
                    unsigned char *ss,   
                    const unsigned char *pk,   
                    KYBK k);

//Key decryption API (client)  
int crypto_kem_dec (unsigned char *ss,   
                    const unsigned char *ct,   
                    const unsigned char *sk,   
                    KYBK k);
```

- The parameter **pk** is the public key, 
- **sk** is a secret key, 
- **ct** is the ciphertext, 
- **ss** is the shared secret, and 
- **k** is the Kyber key, 
- which indicates the security level of Kyber.
