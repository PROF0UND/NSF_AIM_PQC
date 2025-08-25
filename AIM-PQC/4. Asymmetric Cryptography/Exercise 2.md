## bob.py
```
from cryptography.hazmat.primitives.asymmetric import rsa

from cryptography.hazmat.primitives import serialization

import secrets

from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

from cryptography.hazmat.primitives import padding

from cryptography.hazmat.primitives import hashes

  

# ACT 1

  
  

# Generate private key

private_key = rsa.generate_private_key(

    public_exponent=65537,

    key_size=2048,

)

# Write it to a file.

pem = private_key.private_bytes(

   encoding=serialization.Encoding.PEM,

   format=serialization.PrivateFormat.PKCS8,

   encryption_algorithm=serialization.BestAvailableEncryption(b'mypassword')

)

pem.splitlines()[0]

  

with open("bob_private_key.pem", 'w') as bob_private_key:

    bob_private_key.write(pem.decode())

  
  

# Extract public key

public_key = private_key.public_key()

# Write it to a file.

pem = public_key.public_bytes(

   encoding=serialization.Encoding.PEM,

   format=serialization.PublicFormat.SubjectPublicKeyInfo

)

pem.splitlines()[0]

  

with open("bob_public_key.pem", 'w') as bob_public_key:

    bob_public_key.write(pem.decode())

  
  

# ACT 2

  

secret_key = secrets.token_bytes(16)

iv = secrets.token_bytes(16)

  

# Encrypt large file

with open("shakespeare.txt", 'r') as shake:

    # Var containing shakespeare data.

    file_content = shake.read()

  

    # Add padding

    padder = padding.PKCS7(128).padder()

    padded_data = padder.update(file_content.encode()) + padder.finalize()

  

    cipher = Cipher(algorithms.AES(secret_key), modes.CBC(iv))

    encryptor = cipher.encryptor()

    ct = encryptor.update(padded_data) + encryptor.finalize()

  

with open("enc_shake.txt", 'wb') as enc_sha:

    enc_sha.write(ct)

  
  
  
  

# Encrypt secret key

# Load Alice's public key from PEM file

with open("alice_public_key.pem", "rb") as f:

    alice_public_key = serialization.load_pem_public_key(f.read())

  

# Encrypt the AES key (secret_key) with Alice's RSA public key

from cryptography.hazmat.primitives.asymmetric import padding

encrypted_key = alice_public_key.encrypt(

    secret_key,

    padding.OAEP(

        mgf=padding.MGF1(algorithm=hashes.SHA256()),

        algorithm=hashes.SHA256(),

        label=None

    )

)

  

encrypted_iv = alice_public_key.encrypt(

    iv,

    padding.OAEP(

        mgf=padding.MGF1(algorithm=hashes.SHA256()),

        algorithm=hashes.SHA256(),

        label=None

    )

)

  

# Save the encrypted AES key

with open("encrypted_key.bin", "wb") as key_file:

    key_file.write(encrypted_key)

  

with open("encrypted_iv.bin", "wb") as iv_file:

    iv_file.write(encrypted_iv)
```

### alice.py
```
from cryptography.hazmat.primitives.asymmetric import rsa

from cryptography.hazmat.primitives import serialization

from cryptography.hazmat.primitives import hashes

from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

  
  

# ACT 1

  

'''

# Generate private key

private_key = rsa.generate_private_key(

    public_exponent=65537,

    key_size=2048,

)

# Write it to a file.

pem = private_key.private_bytes(

   encoding=serialization.Encoding.PEM,

   format=serialization.PrivateFormat.PKCS8,

   encryption_algorithm=serialization.BestAvailableEncryption(b'mypassword')

)

pem.splitlines()[0]

  

with open("alice_private_key.pem", 'w') as alice_private_key:

    alice_private_key.write(pem.decode())

  
  

# Extract public key

public_key = private_key.public_key()

# Write it to a file.

pem = public_key.public_bytes(

   encoding=serialization.Encoding.PEM,

   format=serialization.PublicFormat.SubjectPublicKeyInfo

)

pem.splitlines()[0]

  

with open("alice_public_key.pem", 'w') as alice_public_key:

    alice_public_key.write(pem.decode())

'''

  

# ACT 2

from cryptography.hazmat.primitives.asymmetric import padding

  

# Load Alice's private key from PEM file

with open("alice_private_key.pem", "rb") as f:

    private_key = serialization.load_pem_private_key(f.read(), b'mypassword')

# Alice's private key is loaded to not change the previous key on which the encryption was done.

  
  

# get the secret files and decrypt them

with open("encrypted_key.bin", 'rb') as encryp_key:

    encrypted_key = encryp_key.read()

    secret_key = private_key.decrypt(

        encrypted_key,

        padding.OAEP(

            mgf=padding.MGF1(algorithm=hashes.SHA256()),

            algorithm=hashes.SHA256(),

            label=None

        )

    )

  

with open("encrypted_iv.bin", 'rb') as encryp_iv:

    encrypted_iv = encryp_iv.read()

    secret_iv = private_key.decrypt(

    encrypted_iv,

    padding.OAEP(

        mgf=padding.MGF1(algorithm=hashes.SHA256()),

        algorithm=hashes.SHA256(),

        label=None

    )

)

  

# Decrypt file

with open("enc_shake.txt", "rb") as enc_sha_file:

    encrypted_shake = enc_sha_file.read()

  

cipher = Cipher(algorithms.AES(secret_key), modes.CBC(secret_iv))

decryptor = cipher.decryptor()

decrypted_text = decryptor.update(encrypted_shake) + decryptor.finalize()

  

with open("decrypted_shake.txt", 'w') as decrypted_file:

    decrypted_file.write(decrypted_text.decode())
```