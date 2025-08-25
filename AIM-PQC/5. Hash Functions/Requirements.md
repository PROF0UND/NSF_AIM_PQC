A Hash must satisfy:
1. _preimage Resistance_ : given h, it is infeasible to find M/
2. _second preimage resistance_ : Given M, infeasible to find M' != M with H(M') = H(M). (Basically, injectivity)
3. _Collision Resistance_ : Injectivity again.
4. _Efficiency_ : Fast to compute large msgs.
5. _Determinism_ :  Same input always yields the same digest.