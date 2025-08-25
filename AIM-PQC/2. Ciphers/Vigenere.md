### **Motivation**

Mono‑alphabetic ciphers leak frequency information. **Polyalphabetic** schemes rotate among several substitution alphabets, controlled by a keyword.

### **Vigenère Tableau**

- 26x26 table
- row i is [[Caesar Cipher]] shift i.
- ![[Pasted image 20250521193012.jpg]]

### **Example**

Key: LEMON (length 5) Plaintext: ATTACKATDAWN Ciphertext: LXFOPVEFRNHR
Plaintext:  A   T   T   A   C   K   A   T   D   A   W   N
Key:          L    E  M  O   N   L   E   M  O   N   L    E
  - now check the character in the Key row under plaintext column

### **Breaking Vigenère**

- **Kasiski test** (1863) and **Friedman’s index of coincidence** (1920 s) estimate key length.
    
- Once the period is known, each column reduces to a Caesar cipher.