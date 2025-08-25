**Entropy** in cryptography measures how unpredictable or random a key is. It's usually given in **bits**—more bits mean more possible keys and stronger security.

For example, a substitution cipher has about **88 bits of entropy**, meaning there are `2^88` possible ways to map the alphabet. That sounds secure, but in practice it’s still breakable using patterns like letter frequency.

So:

- **High entropy = harder to guess**
    
- **But real-world ciphers also need to hide patterns** to stay secure.

## English is redundant

- It means that some letters are more common than others.
#### What does 1.5 bits per letter mean?

It means:

> **On average, each letter in English gives you 1.5 bits of _new information_.**

- 1 bit = 2 choices (e.g., A or B?)
    
- 2 bits = 4 choices
    
- 3 bits = 8 choices
    
- ...
    
- 4.7 bits = 26 choices (random letter from A–Z)

but english is not truly random so we dont choose from 26 we kinda choose from 2.6!!


## Meaning of x bits of entropy

> Choosing randomly from 2^x options.


