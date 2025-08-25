### **Concept**

Instead of a uniform shift, map each plaintext letter to an arbitrary ciphertext letter, yielding a **permutation cipher**.

### **Example Keys**

```
PLAIN : ABCDEFGHIJKLMNOPQRSTUVWXYZ
CIPHER: QWERTYUIOPASDFGHJKLZXCVBNM
```

### **Generating Keys**

A secure implementation would choose the permutation uniformly at random; classical practice often used **keywords** to build the substitution table (e.g., KEYWORD → KEYWORDABCFGHIJLMNPQSTUVXZ).