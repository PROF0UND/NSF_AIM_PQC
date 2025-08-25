- Exercise1: print_script.sh
```
#!/bin/bash  
  
echo Enter a number!  
  
read USRNUM  
  
# If the number is less than 2  
if [ $USRNUM -lt "2" ]; then  
echo No primes!  
exit 1  
fi  
  
  
for ((i = 2 ; i <= $USRNUM ; i++)); do  
# Var containing string output of prime command  
ISPRIME=$(openssl prime $i)  
  
# If the output contains the string is prime  
if [[ "$ISPRIME" == *"is prime" ]]; then  
echo $i  
fi  
  
done
```
- Exercise 2, 3: bitprime.sh

```
#!/bin/bash  
  
echo 32-bit prime number  
echo $(openssl prime -generate -bits 32)  
  
echo -e "64-bit prime number"  
echo $(openssl prime -generate -bits 64)  
  
echo -e "128-bit prime number"  
echo $(openssl prime -generate -bits 128)  
  
  
echo 32-bit prime number in hex  
echo $(openssl prime -generate -bits 32 -hex)  
  
echo -e "64-bit prime number in hex"  
echo $(openssl prime -generate -bits 64 -hex)  
  
echo -e "16-bit prime number in hex"  
echo $(openssl prime -generate -bits 16 -hex)
```

- Exercise 4:
```
$ openssl prime 6869
1AD5 (6869) is prime

$ openssl prime 19087
4A8F (19087) is prime

$ openssl prime 207897
32C19 (207897) is not prime
```

- Exercise 5:
```
import random

randomlist = []

for i in range(10):
    randomlist.append(int(random.random() * 100))
    
for num in randomlist:
    print(num)
```

- Exercise 6:
```
import secrets

randlist = []

for i in range (10):
    randlist.append(secrets.randbelow(100))

for i in range (10):
    print(randlist[i])
```
- Exercise 7:
	- secrets uses Cryptographically Secure PRNGs (CSPRNGs)
	- random uses PRNGs
	- [[Stream Ciphers]]
- Exercise 8:
```
import secrets
import string

alphanum_list = list(string.ascii_letters + string.digits)

key = 'aa'

while (len(key)*8 < 128):
    key += secrets.choice(alphanum_list)

with open("key_128-bit.txt" , 'w') as keyfile:
    keyfile.write(key)
```


- Exercise 9:
`openssl rand -base64 128

- Exercise 10:
`openssl rand -out 1024key.bin 1024`

- Exercise 11
```
from cryptography.hazmat.primitives import padding


given_str = "May you live all the days of your life."

  
def padder(input_str):

    padder = padding.PKCS7(128).padder()

    padded_data = padder.update(input_str.encode())

    padded_data += padder.finalize()

    return padded_data

  
def unpadder(input_str):

    unpadder = padding.PKCS7(128).unpadder()

    data = unpadder.update(input_str)

    data += unpadder.finalize()

    return data

  
padded_data = padder(given_str)

unpadded_data = unpadder(padded_data)

  
print(padded_data)

print(unpadded_data)
```


- Exercise 12
```python
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

import os

from cryptography.hazmat.primitives import padding

  

# Save the key as key

with (open("key_128-bit.txt", 'r')) as key_file:

    key = key_file.read().strip()

  

# Save the Paragraph as paragraph

with (open("paragraph.txt", 'r')) as paragraph_file:

    paragraph = paragraph_file.read()

  

# initialization vector

iv = os.urandom(16)

  
  

def padder(input_str):

    padder = padding.PKCS7(128).padder()

    padded_data = padder.update(input_str.encode())

    padded_data += padder.finalize()

    return padded_data

  
  

def unpadder(input_str):

    unpadder = padding.PKCS7(128).unpadder()

    data = unpadder.update(input_str)

    data += unpadder.finalize()

    return data

  
  

cipher = Cipher(algorithms.AES128(key.encode()), modes.CBC(iv))

encryptor = cipher.encryptor()

  

ct = encryptor.update(padder(paragraph)) + encryptor.finalize()

  

decryptor = cipher.decryptor()

dt = decryptor.update(ct) + decryptor.finalize()

# Unpad and decode the dt

dt = unpadder(dt).decode()

  

if (dt == paragraph):

    print("PASS")

else:

    print("FAIL")
```


