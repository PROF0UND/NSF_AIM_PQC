## Exercise 1:

echo -n "Hello World" | md5sum

OUTPUT: b10a8db164e0754105b7a99be72e3fe5 -

echo -n "Hello world" | md5sum 

OUTPUT: 3e25960a79dbc69b674cd4ec67a72c62 -

## Exercise 2:

The W. Due to Avalanche effect achieved by hash functions.

## Exercise 3:
  
echo -n "Hello world" | sha1sum
OUTPUT: 7b502c3a1f48c8609ae212cdfb639dee39673f5e - 
echo -n "Hello World" | sha1sum 
OUTPUT: 0a4d55a8d778e5022fab701977c5d840bbc486d0 -

## Exercise 4:

SHA1 hash is longer.

## Exercise 5:

echo -n "Hello World" | sha256sum 
OUTPUT: a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e - 

echo -n "Hello world" | sha256sum 
OUTPUT: 64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c - 

echo -n "Hello World" | sha512sum 
OUTPUT: 2c74fd17edafd80e8447b0d46741ee243b7eb74dd2149a0ab1b9246fb30382f27e853d8585719e0e67cbda0daa8f51671064615d645ae27acb15bfb1447f459b - 

echo -n "Hello world" | sha512sum 
OUTPUT: b7f783baed8297f0db917462184ff4f08e69c2d5e5f79a942600f9725f58ce1f29c18139bf80b06c0fff2bdd34738452ecf40c488c22a7e3d80cdf6f9c1c0d47 -

## Exercise 6:

The length of SHA1 is  40, SHA256 is 64 and SHA 512 is 128 characters

## Exercise 7:

```
#!/bin/bash  
  
# MD5  
  
# uppercase w  
echo "Hash of Hello World"  
echo -n "Hello World" | openssl dgst -md5 -hex  
  
# lowercase w  
echo "Hash of Hello world"  
echo -n "Hello world" | openssl dgst -md5 -hex  
  
  
# SHA1  
  
# uppercase w  
echo "Hash of Hello World"  
echo -n "Hello World" | openssl dgst -sha1 -hex  
  
# lowercase w  
echo "Hash of Hello world"  
echo -n "Hello world" | openssl dgst -sha1 -hex  
  
  
# SHA256  
  
# uppercase w  
echo "Hash of Hello World"  
echo -n "Hello World" | openssl dgst -sha256 -hex  
  
# lowercase w  
echo "Hash of Hello world"  
echo -n "Hello world" | openssl dgst -sha256 -hex  
  
  
# SHA512  
  
# uppercase w  
echo "Hash of Hello World"  
echo -n "Hello World" | openssl dgst -sha512 -hex  
  
# lowercase w  
echo "Hash of Hello world"  
echo -n "Hello world" | openssl dgst -sha512 -hex
```

OUTPUT: 
```
$ bash hashopen.sh
Hash of Hello World
MD5(stdin)= b10a8db164e0754105b7a99be72e3fe5
Hash of Hello world
MD5(stdin)= 3e25960a79dbc69b674cd4ec67a72c62
Hash of Hello World
SHA1(stdin)= 0a4d55a8d778e5022fab701977c5d840bbc486d0
Hash of Hello world
SHA1(stdin)= 7b502c3a1f48c8609ae212cdfb639dee39673f5e
Hash of Hello World
SHA2-256(stdin)= a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e
Hash of Hello world
SHA2-256(stdin)= 64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c
Hash of Hello World
SHA2-512(stdin)= 2c74fd17edafd80e8447b0d46741ee243b7eb74dd2149a0ab1b9246fb30382f27e853d8585719e0e67cbda0daa8f51671064615d645ae27acb15bfb1447f459b
Hash of Hello world
SHA2-512(stdin)= b7f783baed8297f0db917462184ff4f08e69c2d5e5f79a942600f9725f58ce1f29c18139bf80b06c0fff2bdd34738452ecf40c488c22a7e3d80cdf6f9c1c0d47
```

The Hashes match.

## Exercise 8:

python3
import hashlib
print(hashlib.algorthms_guaranteed)

OUTPUT: {'blake2b', 'sha3_512', 'sha384', 'sha3_384', 'shake_128', 'sha3_224', 'sha512', 'md5', 'sha224', 'sha3_256', 'shake_256', 'sha1', 'blake2s', 'sha256'}

## Exercise 9:

```
import hashlib  
  
upper_hello = "Hello World"  
lower_hello = "Hello world"  
  
def print_hashes(algorithm):  
  
print(algorithm)  
  
# uppercase  
hasher_up = hashlib.new(algorithm)  
hasher_up.update(upper_hello.encode())  
print("hash of Hello World:")  
print(hasher_up.hexdigest())  
  
#lowercase  
hasher_down = hashlib.new(algorithm)  
hasher_down.update(lower_hello.encode())  
print("hash of Hello world:")  
print(hasher_down.hexdigest())  
  
print('\n')  
  
# md5  
print_hashes('md5')  
  
# sha1  
print_hashes('sha1')  
  
# sha256  
print_hashes('sha256')  
  
# sha512  
print_hashes('sha512')
```

OUTPUT:
```
md5
hash of Hello World:
b10a8db164e0754105b7a99be72e3fe5
hash of Hello world:
3e25960a79dbc69b674cd4ec67a72c62


sha1
hash of Hello World:
0a4d55a8d778e5022fab701977c5d840bbc486d0
hash of Hello world:
7b502c3a1f48c8609ae212cdfb639dee39673f5e


sha256
hash of Hello World:
a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e
hash of Hello world:
64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c


sha512
hash of Hello World:
2c74fd17edafd80e8447b0d46741ee243b7eb74dd2149a0ab1b9246fb30382f27e853d8585719e0e67cbda0daa8f51671064615d645ae27acb15bfb1447f459b
hash of Hello world:
b7f783baed8297f0db917462184ff4f08e69c2d5e5f79a942600f9725f58ce1f29c18139bf80b06c0fff2bdd34738452ecf40c488c22a7e3d80cdf6f9c1c0d47


```

The results for the lowercase W string for all hashes are different

## Exercise 10

```
import hashlib  
  
upper_hello = "Hello World"  
lower_hello = "Hello world"  
  
def print_hashes(algorithm):  
  
print(algorithm)  
  
# uppercase  
hasher_up = hashlib.new(algorithm)  
hasher_up.update(upper_hello.encode())  
print("hash of Hello World:")  
print(hasher_up.hexdigest())  
  
#lowercase  
hasher_down = hashlib.new(algorithm)  
hasher_down.update(lower_hello.encode())  
print("hash of Hello world:")  
print(hasher_down.hexdigest())  
  
print('\n')  
  
# md5  
print_hashes('md5')  
  
# sha1  
print_hashes('sha1')  
  
# sha256  
print_hashes('sha256')  
  
# sha512  
print_hashes('sha512')  
  
#sha3-512  
print_hashes('sha3-512')
```

OUTPUT:
```
md5
hash of Hello World:
b10a8db164e0754105b7a99be72e3fe5
hash of Hello world:
3e25960a79dbc69b674cd4ec67a72c62


sha1
hash of Hello World:
0a4d55a8d778e5022fab701977c5d840bbc486d0
hash of Hello world:
7b502c3a1f48c8609ae212cdfb639dee39673f5e


sha256
hash of Hello World:
a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e
hash of Hello world:
64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c


sha512
hash of Hello World:
2c74fd17edafd80e8447b0d46741ee243b7eb74dd2149a0ab1b9246fb30382f27e853d8585719e0e67cbda0daa8f51671064615d645ae27acb15bfb1447f459b
hash of Hello world:
b7f783baed8297f0db917462184ff4f08e69c2d5e5f79a942600f9725f58ce1f29c18139bf80b06c0fff2bdd34738452ecf40c488c22a7e3d80cdf6f9c1c0d47


sha3-512
hash of Hello World:
3d58a719c6866b0214f96b0a67b37e51a91e233ce0be126a08f35fdf4c043c6126f40139bfbc338d44eb2a03de9f7bb8eff0ac260b3629811e389a5fbee8a894
hash of Hello world:
e2e1c9e522efb2495a178434c8bb8f11000ca23f1fd679058b7d7e141f0cf3433f94fc427ec0b9bebb12f327a3240021053db6091196576d5e6d9bd8fac71c0c

```

The hash produced by sha3-512 has the same length but different characters compared to sha512.


## Exercise 11:

```
#!/bin/bash  
  
upper_str="Hello World"  
lower_str="Hello world"  
  
echo $upper_str  
echo -n $upper_str | openssl mac -digest sha512 -macopt key:OneKeyToRuleThemAll HMAC  
echo $lower_str  
echo -n $lower_str | openssl mac -digest sha512 -macopt key:OneKeyToRuleThemAll HMAC
```

OUTPUT:
```
$ bash maccreate.sh
Hello World
C268796B5678B630609725477E31C927DA9A2D28DC4B0A42928E7D50EC0249681DD517868919B4133423B68C1836401532789763D423CC69D61CC22DC4EC3E04
Hello world
B776DD48ACE22393B56ABC30BCC02DFF8711D3DEC2C7B18D101DBBAA8917BD222A3A6E12B5155D82054E839583E7B68D0C89977EB3BA5D36A7A87367E5608808

```

## Exercise 12:

```
#!/bin/bash  
  
key="OneKeyToRuleThemAll"  
  
openssl dgst -sha3-512 -hex -out quotes_hashed.txt -hmac $key quotes.txt
```

OUTPUT
```
HMAC-SHA3-512(quotes.txt)= 047d23b7bc18e57b421af2a3ab447facbd5bec94eb040fbcabcbf88f4f873286cb5d97b9cfe8b6fec76a930ffb8c34d338a6016e62c3d2d479dd4e356d3f0e7f
```

## Exercise 13
```
import hmac  
  
key = "OneKeyToRuleThemAll"  
  
with open("quotes.txt", 'rb') as quotes_file:  
quotes = quotes_file.read()  
  
# create the MAC  
quotes_mac = hmac.new(key.encode(), quotes, "sha3-512")  
  
  
print(quotes_mac.hexdigest())
```

OUTPUT
```
047d23b7bc18e57b421af2a3ab447facbd5bec94eb040fbcabcbf88f4f873286cb5d97b9cfe8b6fec76a930ffb8c34d338a6016e62c3d2d479dd4e356d3f0e7f
```

## Exercise 14
```
from cryptography.hazmat.primitives import hashes, hmac  
  
key = "OneKeyToRuleThemAll"  
  
with open("quotes.txt", 'rb') as quotes_file:  
quotes = quotes_file.read()  
  
  
h = hmac.HMAC(key.encode(), hashes.SHA3_512())  
h.update(quotes)  
signature = h.finalize()  
print(signature.hex())
```

OUTPUT:
```
047d23b7bc18e57b421af2a3ab447facbd5bec94eb040fbcabcbf88f4f873286cb5d97b9cfe8b6fec76a930ffb8c34d338a6016e62c3d2d479dd4e356d3f0e7f

```