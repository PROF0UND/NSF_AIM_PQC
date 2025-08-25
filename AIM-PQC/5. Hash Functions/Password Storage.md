- systems store the hash of each password.
- an attacker obtaining the hash cannot recover the original password.
- To authenticate, the system hashes the user’s input and compares it to the stored hash.
- If they match, the password is correct. 
- Adding per-user salts prevents attackers from using precomputed rainbow tables and further improves security.

	salts: a random string that is added to a user's password **before hashing**.

	Rainbow tables: **Rainbow tables** are **precomputed tables** of **hashed passwords** used by attackers to **reverse-engineer passwords from hashes**.