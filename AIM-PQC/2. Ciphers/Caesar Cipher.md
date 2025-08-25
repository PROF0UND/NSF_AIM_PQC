- Shift each letter by `("letter" + x ) % 26`. 
- A =0 , B = 1, ... , Z = 25.
- Caesar used the shift value to be 3.
## Task:

- VENI VIDI VICI.

```
def encode(str, shift = 1):
    
    encoded_str = ""
    for letter in str:
    
        ascii_let = ord(letter)
        if (ascii_let >= 65 and ascii_let <= 90):
            encoded_str += chr((ascii_let - 64) % 26 + 64 + shift % 27)
        
        elif (ascii_let >= 97 and ascii_let <= 122):
            encoded_str += chr((ascii_let - 96) % 26 + 96 + shift % 27)
        
        else:    
            encoded_str += chr(ascii_let)
    
    return encoded_str

print(encode("VENI VIDI VICI ", 3))
```

### Historical Footnote

Suetonius reports that Caesar used   to protect military dispatches. Because the Latin alphabet lacked J, U, W, the original key space was only 22 options.

