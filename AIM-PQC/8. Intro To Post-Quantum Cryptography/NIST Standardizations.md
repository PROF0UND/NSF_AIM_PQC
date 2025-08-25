2025, NIST’s PQC selection process has delivered the first official standards for post-quantum cryptography

- **Published Standards (FIPS):** In August 2024, NIST published three new FIPS (Federal Information Processing Standards) for PQC:
	- FIPS 203: "**Module-Lattice-Based Key-Encapsulation Mechanism (ML-KEM)**"
		- standard for general encryption/key exchange
		- Kyber’s algorithm under the standardized name ML-KEM
		- Governments and industries can now start using this for secure key establishment
	- **FIPS 204** – **“Module-Lattice-Based Digital Signature Algorithm (ML-DSA)”**
		- **CRYSTALS-Dilithium**​
		- strong security and efficient operations, with moderate signature size (~2-3 KB)​.
	- **FIPS 205** – **“Stateless Hash-Based Digital Signature Algorithm (SLH-DSA)”**:
		- [[SPHINCS+]]
- many web browsers, VPNs, etc., are testing Kyber and Dilithium in pre-production settings

---

## Upcoming standards:

- FIPS 206 (planned):
	- FALCON-based NTRU digital signature algorithm
	- FN-DSA
	- smaller signatures
- **FIPS 2?? (TBD)** – In March 2025, NIST announced it will be drafting a standard for **HQC (Hamming Quasi-Cyclic)** KEM
	- likely will become FIPS 207
	- raft is expected around 2026 and final in 2027
	- HQC -> code-based KEM standard
	- HQC is a _backup_, not intended to replace Kyber

---

## Migration and Deployment:

- TLS protocol (which secures HTTPS) is being updated to support Kyber-based key exchange
- Certificate authorities are testing Dilithium and Falcon for issuing quantum-safe certificates.
- VPN products and secure messaging apps are adding support for PQC.
- The U.S. government (through NSA’s CNSA 2.0 suite) has announced requirements to switch to quantum-resistant algorithms in the coming years – likely aligning with NIST choices.
- **Open Quantum Safe (OQS)** project provides open-source libraries (like liboqs and even PQC-integrated OpenSSL forks) implementing Kyber, Dilithium, etc., which developers can experiment with​.

If you want to play with these algorithms:
- Open Quantum safe (OQS)
- NIST's PQC project portal
- algorithm's website

---

- **“Additional Signatures”** on-ramp process (started 2023) is evaluating new signature schemes, some based on totally different math (like **code-based signatures** and improved **multivariate schemes**).
- October 2024, NIST announced 10+ second-round candidates in this track, including schemes like **CROSS (code-based)**, **LESS (code-based)**, **MAYO (multivariate)**
- standards bodies like the **IETF** are drafting RFCs for these algorithms in Internet protocols