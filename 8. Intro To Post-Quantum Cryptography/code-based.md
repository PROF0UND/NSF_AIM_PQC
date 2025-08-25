- Oldest approaches
- dating back to the McEliece cryptosystem, 1978
- relies on problems from _error-correcting codes_
- given a random-looking code with errors, **decoding it (recovering the original message) is very hard without the secret key**.

## Hard-Problem:

- syndrome decoding.
- Given a linear error-correcting code and a received word that has been encoded and then corrupted by some errors, find the original message or the error pattern.
- for general linear code this is NP-Hard.
- McEliece uses the difficulty of decoding a general _binary Goppa code_ – a type of error-correcting code – without knowing the private structure of the code.
- Even with quantum algorithms, no efficient solution is known
- best attacks essentially try to guess or solve large linear systems (which grows combinatorially hard for long codes).

---
## Algorithms:

- poster child: Classic McEliece (Updated version of the 1978 scheme).
### McEliece:
- Hides a message by encoding it with an error-correcting code and intentionally introducing errors.
- only someone with a secret trapdoor (the structure of the code) can correct those errors and retrieve the message.

- Other code-based KEM:
	- HQC (Hamming Quasi-Cyclic) and BIKE
	- use structured codes (QC-LDPC codes) to reduce key size
	- NTS-KEM (merged into classic McEliece).
- Code-based digital sig exist but are less competitive.
- one of the candidates: GeMSS uses multivariable equations but partially code-based ideas.

---
## Why Quantum safe:

- McEllice cryptosystem has withstood 40 years of cryptanalysis, using binary Goppa codes.
- one would still face essentially brute-force search among error patterns or generic linear algebra attacks.
- original McElice scheme 1978 remains unbroken
- main drawback = key size.
- keys are sometimes hundreds of kilobytes  or even a megabyte.
---
## Intuition:
- sending a message in a bottle thrown into a sea of random noise.
- Only the intended recipient knows how to fish out the bottle (they know the structure of the message and how to correct the random noise).
---
## Competition Note:
- MccEliece was a finalist
- But it had a very large key size
- kept as a backup
- NIST later chose **HQC** (a newer code-based KEM with smaller keys than McEliece) as a backup algorithm for standardization​.
- HQC is based on codes (QC Reed-Solomon codes with BCH component) and has more manageable key sizes (though still larger than lattice schemes).
- BIKE had some security concerns (it suffered an issue with error leakage attacks that required patching) and was not selected
- code-based crypto is viewed as a **strong Plan B**