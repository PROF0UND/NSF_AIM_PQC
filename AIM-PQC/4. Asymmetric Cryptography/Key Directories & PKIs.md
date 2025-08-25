- PKI: Public key infrastructure.
- framework the manages public and private keys.

### **Core Components of PKI:**

1. **Public and Private Keys**  
    The basic asymmetric key pair used for encryption and digital signatures.
    
2. **Certificate Authority (CA)**  
    A trusted third party that **issues digital certificates**, saying:
    
    > “Yes, this public key belongs to this person/organization.”
    
3. **Digital Certificates (e.g., X.509)**  
    A file that contains:
    
    - A public key
        
    - Owner’s name/identity
        
    - Expiration date
        
    - The CA’s digital signature verifying its validity
        
4. **Registration Authority (RA)**  
    Acts like a **bouncer** — it verifies identities before a certificate is issued.
    
5. **Certificate Revocation List (CRL) / OCSP**  
    Lists of **revoked or expired certificates**, so you don’t trust compromised keys.