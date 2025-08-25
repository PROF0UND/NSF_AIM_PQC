### bob.sh

```
# ACT 1

# generating two sets of public-private keys

  

# Generate Bob's private key

openssl genrsa -out bob_private.pem 2048

  

# Extract the public key out

openssl rsa -in bob_private.pem -outform PEM -pubout -out bob_public.pem

  
  

# ACT 2

  

# make the 128 bit key

openssl rand -hex 16 >> secret_key.txt

  

# make the 128 bit IV

openssl rand -hex 16 >> init_vec.txt

  

# Save as string variable

key=$(cat secret_key.txt)

iv=$(cat init_vec.txt)

  

# Encrypt large file

openssl enc -aes-128-cbc -in shakespeare.txt -out encryptedshake.txt -k $key -iv $iv

  

# Encrypt secret key

openssl rsautl -in secret_key.txt -out encrypted_key.txt -inkey alice_public.pem -keyform PEM -pubin -encrypt

  

# Encrypt iv

openssl rsautl -in init_vec.txt -out encrypted_iv.txt -inkey alice_public.pem -keyform PEM -pubin -encrypt
```

### alice.sh
```
# ACT 1

# generating two sets of public-private keys

  

# Generate Alice's private key

# openssl genrsa -out alice_private.pem 2048

  

# Extract the public key out

# openssl rsa -in alice_private.pem -outform PEM -pubout -out alice_public.pem

  
  

# ACT 2

  

# decrypt secret key

openssl rsautl -in encrypted_key.txt -out decrypted_key.txt -inkey alice_private.pem -keyform PEM -decrypt

  

# decrypt iv

openssl rsautl -in encrypted_iv.txt -out decrypted_iv.txt -inkey alice_private.pem -keyform PEM -decrypt

  

key=$(cat decrypted_key.txt)

iv=$(cat decrypted_iv.txt)

  

# decrypt large file

openssl enc -aes-128-cbc -in encryptedshake.txt -out decrypted_shake.txt -d -k $key -iv $iv
```
