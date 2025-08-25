
![[Pasted image 20250619230348.jpg]]

- Db2 compiles with various security standards
- Db2 consists of a Db2 server and data server clients.
- server is an enterprise-grade relational database management system that delivers data to clients.
- client is an application that runs Db2 and SQL commands against the server.
- first step: Authentication
- done by user ID and password
- To keep intransit data safe, Db2 uses TLS
- TLS has asymmetric cryptography for private key exchange
- DH is used for asymmetric cryptography
- AES is used for symmetric



1. key pair is generated.
2. They then exchange their public keys.
3. client and the server independently compute the shared secret (s) using the other's public keys and their own private keys.
4. The client encrypts the user ID and password using the shared secret (s) and sends them to the server.
5. decrypting the user ID and password using the shared secret (s), the server finishes the authentication of the client.