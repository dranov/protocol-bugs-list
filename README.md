# Errors found in distributed protocols

This page collects bugs (errors) discovered in the description of
distributed *protocols*. We are only interested in bugs in the protocols
themselves, not implementation bugs.

**Please submit a pull request if you know of an error that is not
listed!** See `CONTRIBUTING.md` for detailed instructions.

## Table of errors

|     Protocol      |                     Reference                      |     Violation      |                 Counter-example                 |
|:-----------------:|:--------------------------------------------------:|:------------------:|:-----------------------------------------------:|
|     PBFT[^1]      |             \[Castro and Liskov 1999\]             |      liveness      |             \[Berger et al. 2021\]              |
|       Chord       |  \[Stoica et al. 2001; Liben-Nowell et al. 2002\]  |    liveness[^2]    |            \[Zave 2012; Zave 2017\]             |
|      Pastry       |           \[Rowstron and Druschel 2001\]           |       safety       |     \[Azmy et al. 2016; Azmy et al. 2018\]      |
| Generalised Paxos |                  \[Lamport 2005\]                  | non-triviality[^3] |           \[Sutra and Shapiro 2010\]            |
|     FaB Paxos     | \[Martin and Alvisi 2005; Martin and Alvisi 2006\] |      liveness      |             \[Abraham et al. 2017\]             |
|  Multi-Paxos[^4]  |              \[Chandra et al. 2007\]               |       safety       |             \[Michael et al. 2017\]             |
|      Zyzzyva      |      \[Kotla et al. 2007; Kotla et al. 2010\]      |       safety       |             \[Abraham et al. 2017\]             |
|       CRAQ        |           \[Terrace and Freedman 2009\]            |     safety[^5]     |               \[Whittaker 2020\]                |
|      JPaxos       |              \[Kończak et al. 2011\]               |       safety       |             \[Michael et al. 2017\]             |
|   VR Revisited    |            \[Liskov and Cowling 2012\]             |       safety       |             \[Michael et al. 2017\]             |
|      EPaxos       |               \[Moraru et al. 2013\]               |       safety       |                 \[Sutra 2020\]                  |
|      EPaxos       |               \[Moraru et al. 2013\]               |       safety       |               \[Whittaker 2021\]                |
|       Raft        |           \[Ongaro and Ousterhout 2014\]           |    liveness[^6]    |                  \[Hoch 2014\]                  |
|       Raft        |                  \[Ongaro 2014\]                   |     safety[^7]     |      \[Amos and Zhang 2015; Ongaro 2015\]       |
|       Raft        |    \[Ongaro and Ousterhout 2014; Ongaro 2014\]     |      liveness      | \[Howard and Abraham 2020; Jensen et al. 2021\] |
|       hBFT        |                \[Duan et al. 2015\]                |       safety       |            \[Shrestha et al. 2019\]             |
|    Tendermint     |                  \[Buchman 2016\]                  |      liveness      |           \[Cachin and Vukolić 2017\]           |
|      CAESAR       |                \[Arun et al. 2017\]                |      liveness      |              \[Enes et al. 2021\]               |
|      DPaxos       |               \[Nawab et al. 2018\]                |       safety       |            \[Whittaker et al. 2021\]            |
|   Sync HotStuff   |              \[Abraham et al. 2019\]               | safety & liveness  |            \[Momose and Cruz 2019\]             |
|      Gasper       |              \[Buterin et al. 2020\]               | safety & liveness  |               \[Neu et al. 2021\]               |
|        STM        |              \[Imbs and Raynal 2010\]              | safety & liveness  |                 \[Беляев 2010\]                 |

## Acknowledgements

The following people suggested additions to the list:

- [Dan Ports](https://drkp.net/)
- [Michael Whittaker](https://mwhittaker.github.io/)
- [Heidi Howard](https://www.heidihoward.co.uk/)
- [François Garillot](https://www.garillot.net/)
- [Prateek Saxena](https://www.comp.nus.edu.sg/~prateeks/)
- [Nibesh Shrestha](https://cs.rit.edu/~nxs4564/)
- [Benedict Elliott Smith](https://twitter.com/_belliottsmith)
- [Adi Seredinschi](https://twitter.com/AdiSeredinschi)
- [Sergey Bronnikov](https://bronevichok.ru/)

## References

ABRAHAM, I., GUETA, G., MALKHI, D., ALVISI, L., KOTLA, R., AND MARTIN,
J.-P. 2017. [Revisiting Fast Practical Byzantine Fault
Tolerance](http://arxiv.org/abs/1712.01367). *arXiv:1712.01367 \[cs\]*.

ABRAHAM, I., MALKHI, D., NAYAK, K., REN, L., AND YIN, M. 2019. *[Sync
HotStuff: Simple and Practical Synchronous State Machine
Replication](http://eprint.iacr.org/2019/270)*.

AMOS, B. AND ZHANG, H. 2015. *[15-812 Term Paper: Specifying and proving
cluster membership for the Raft distributed consensus
algorithm](https://www.cs.cmu.edu/~aplatzer/course/pls15/projects/bamos.pdf)*.

ARUN, B., PELUSO, S., PALMIERI, R., LOSA, G., AND RAVINDRAN, B. 2017.
[Speeding up Consensus by Chasing Fast
Decisions](https://doi.org/10.1109/DSN.2017.35). *2017 47th Annual
IEEE/IFIP International Conference on Dependable Systems and Networks
(DSN)*, 49–60.

AZMY, N., MERZ, S., AND WEIDENBACH, C. 2016. [A Rigorous Correctness
Proof for Pastry](https://doi.org/10.1007/978-3-319-33600-8_5). In: M.
Butler, K.-D. Schewe, A. Mashkoor and M. Biro, eds., *Abstract State
Machines, Alloy, B, TLA, VDM, and Z*. Springer International Publishing,
Cham, 86–101.

AZMY, N., MERZ, S., AND WEIDENBACH, C. 2018. [A machine-checked
correctness proof for
Pastry](https://doi.org/10.1016/j.scico.2017.08.003). *Science of
Computer Programming* *158*, 64–80.

BERGER, C., REISER, H.P., AND BESSANI, A. 2021. [Making Reads in BFT
State Machine Replication Fast, Linearizable, and
Live](http://arxiv.org/abs/2107.11144). *arXiv:2107.11144 \[cs\]*.

BUCHMAN, E. 2016. Tendermint: Byzantine Fault Tolerance in the Age of
Blockchains. <https://atrium.lib.uoguelph.ca/xmlui/handle/10214/9769>.

BUTERIN, V., HERNANDEZ, D., KAMPHEFNER, T., ET AL. 2020. [Combining
GHOST and Casper](http://arxiv.org/abs/2003.03052). *arXiv:2003.03052
\[cs\]*.

CACHIN, C. AND VUKOLIĆ, M. 2017. [Blockchain Consensus Protocols in the
Wild](http://arxiv.org/abs/1707.01873). *arXiv:1707.01873 \[cs\]*.

CASTRO, M. AND LISKOV, B. 1999. [Practical byzantine fault
tolerance](https://www.usenix.org/conference/osdi-99/practical-byzantine-fault-tolerance).
*3rd symposium on operating systems design and implementation (OSDI
99)*, USENIX Association.

CHANDRA, T.D., GRIESEMER, R., AND REDSTONE, J. 2007. [Paxos made live:
An engineering perspective](https://doi.org/10.1145/1281100.1281103).
*Proceedings of the twenty-sixth annual ACM symposium on Principles of
distributed computing - PODC ’07*, ACM Press, 398–407.

DUAN, S., PEISERT, S., AND LEVITT, K.N. 2015. [hBFT: Speculative
Byzantine Fault Tolerance with Minimum
Cost](https://doi.org/10.1109/TDSC.2014.2312331). *IEEE Transactions on
Dependable and Secure Computing* *12*, 1, 58–70.

ENES, V., BAQUERO, C., GOTSMAN, A., AND SUTRA, P. 2021. [Efficient
replication via timestamp
stability](https://doi.org/10.1145/3447786.3456236). *Proceedings of the
Sixteenth European Conference on Computer Systems*, ACM, 178–193.

HOCH, E. 2014. Configuration changes.
<https://groups.google.com/g/raft-dev/c/xux5HRxH3Ic/m/mz_PDK-qMJgJ>.

HOWARD, H. AND ABRAHAM, I. 2020. Raft does not Guarantee Liveness in the
face of Network Faults.
<https://decentralizedthoughts.github.io/2020-12-12-raft-liveness-full-omission/>.

IMBS, D. AND RAYNAL, M. 2010. Software transactional memories:
An approach for multicore programming. *The journal of supercomputing*.

JENSEN, C., HOWARD, H., AND MORTIER, R. 2021. [Examining Raft’s
behaviour during partial network
failures](https://doi.org/10.1145/3447851.3458739). *Proceedings of the
1st Workshop on High Availability and Observability of Cloud Systems*,
Association for Computing Machinery, 11–17.

KOŃCZAK, J., SOUSA SANTOS, N.F. DE, ŻURKOWSKI, T., WOJCIECHOWSKI, P.T.,
AND SCHIPER, A. 2011. *JPaxos: State machine replication based on the
Paxos protocol*.

KOTLA, R., ALVISI, L., DAHLIN, M., CLEMENT, A., AND WONG, E. 2007.
[Zyzzyva: Speculative byzantine fault
tolerance](https://doi.org/10.1145/1323293.1294267). *SIGOPS Oper. Syst.
Rev.* *41*, 6, 45–58.

KOTLA, R., ALVISI, L., DAHLIN, M., CLEMENT, A., AND WONG, E. 2010.
[Zyzzyva: Speculative byzantine fault
tolerance](https://doi.org/10.1145/1658357.1658358). *ACM Trans. Comput.
Syst.* *27*, 4.

LAMPORT, L. 2005. *[Generalized Consensus and
Paxos](https://www.microsoft.com/en-us/research/publication/generalized-consensus-and-paxos/)*.
Microsoft Research.

LIBEN-NOWELL, D., BALAKRISHNAN, H., AND KARGER, D. 2002. [Analysis of
the evolution of peer-to-peer
systems](https://doi.org/10.1145/571825.571863). *Proceedings of the
twenty-first annual symposium on principles of distributed computing*,
Association for Computing Machinery, 233–242.

LISKOV, B. AND COWLING, J. 2012. *Viewstamped Replication Revisited*.

MARTIN, J.-P. AND ALVISI, L. 2005. [Fast Byzantine
Consensus](https://doi.org/10.1109/DSN.2005.48). *2005 International
Conference on Dependable Systems and Networks (DSN’05)*, 402–411.

MARTIN, J.-P. AND ALVISI, L. 2006. [Fast Byzantine
Consensus](http://dx.doi.org.libproxy1.nus.edu.sg/10.1109/TDSC.2006.35).
*IEEE Transactions on Dependable and Secure Computing* *3*, 3, 202–215.

MICHAEL, E., PORTS, D.R.K., SHARMA, N.K., AND SZEKERES, A. 2017.
Recovering Shared Objects Without Stable Storage. 27.

MOMOSE, A. AND CRUZ, J.P. 2019. *[Force-Locking Attack on Sync
Hotstuff](http://eprint.iacr.org/2019/1484)*.

MORARU, I., ANDERSEN, D.G., AND KAMINSKY, M. 2013. [There is more
consensus in Egalitarian
parliaments](https://doi.org/10.1145/2517349.2517350). *Proceedings of
the Twenty-Fourth ACM Symposium on Operating Systems Principles*,
Association for Computing Machinery, 358–372.

NAWAB, F., AGRAWAL, D., AND EL ABBADI, A. 2018. [DPaxos: Managing Data
Closer to Users for Low-Latency and Mobile
Applications](https://doi.org/10.1145/3183713.3196928). *Proceedings of
the 2018 International Conference on Management of Data*, Association
for Computing Machinery, 1221–1236.

NEU, J., TAS, E.N., AND TSE, D. 2021. [Ebb-and-Flow Protocols: A
Resolution of the Availability-Finality
Dilemma](http://arxiv.org/abs/2009.04987). *arXiv:2009.04987 \[cs\]*.

ONGARO, D. 2014. Consensus: Bridging theory and practice.

ONGARO, D. 2015. Bug in single-server membership changes.
<https://groups.google.com/g/raft-dev/c/t4xj6dJTP6E/m/d2D9LrWRza8J>.

ONGARO, D. AND OUSTERHOUT, J. 2014. In search of an understandable
consensus algorithm. *Proceedings of the 2014 USENIX conference on
USENIX annual technical conference*, USENIX Association, 305–320.

ROWSTRON, A. AND DRUSCHEL, P. 2001. [Pastry: Scalable, Decentralized
Object Location, and Routing for Large-Scale Peer-to-Peer
Systems](https://doi.org/10.1007/3-540-45518-3_18). *Middleware 2001*,
Springer, 329–350.

SHRESTHA, N., KUMAR, M., AND DUAN, S. 2019. [Revisiting hBFT:
Speculative Byzantine Fault Tolerance with Minimum
Cost](http://arxiv.org/abs/1902.08505). *arXiv:1902.08505 \[cs\]*.

STOICA, I., MORRIS, R., KARGER, D., KAASHOEK, M.F., AND BALAKRISHNAN, H.
2001. [Chord: A scalable peer-to-peer lookup service for internet
applications](https://doi.org/10.1145/964723.383071). *SIGCOMM Comput.
Commun. Rev.* *31*, 4, 149–160.

SUTRA, P. 2020. [On the correctness of Egalitarian
Paxos](https://doi.org/10.1016/j.ipl.2019.105901). *Information
Processing Letters* *156*.

SUTRA, P. AND SHAPIRO, M. 2010. *[Fast Genuine Generalized
Consensus](https://drive.google.com/open?id=0BwFkGepvBDQoRjNYRGJTdWQ0SzA)*.

TERRACE, J. AND FREEDMAN, M.J. 2009. [Object Storage on {CRAQ}:
High-Throughput Chain Replication for Read-Mostly
Workloads](https://www.usenix.org/conference/usenix-09/object-storage-craq-high-throughput-chain-replication-read-mostly-workloads).

WHITTAKER, M. 2020. CRAQ Bug. <https://github.com/mwhittaker/craq_bug>.

WHITTAKER, M. 2021. EPaxos Dependency Set Compaction Bug.
<https://github.com/mwhittaker/bipartisan_paxos/blob/cbd99cc735215d18c163dc41cb0a05edcb55437d/epaxos_bugs/epaxos_dependency_bug.pdf>.

WHITTAKER, M., HELLERSTEIN, J.M., GIRIDHARAN, N., SZEKERES, A., HOWARD,
H., AND NAWAB, F. 2021. Matchmaker Paxos: A Reconfigurable Consensus
Protocol. *Journal of Systems Research*, 22.

ZAVE, P. 2012. [Using lightweight modeling to understand
chord](https://doi.org/10.1145/2185376.2185383). *ACM SIGCOMM Computer
Communication Review* *42*, 2, 49–57.

ZAVE, P. 2017. [Reasoning About Identifier Spaces: How to Make Chord
Correct](https://doi.org/10.1109/TSE.2017.2655056). *IEEE Transactions
on Software Engineering* *43*, 12, 1144–1156.

БЕЛЯЕВ. 2010. [Верификация алгоритма поддержки транзакционной
памяти](https://cyberleninka.ru/article/n/verifikatsiya-algoritma-podderzhki-tranzaktsionnoy-pamyati).
*Информатика, телекоммуникации и управление. 2010. №3 (101)*.

## Footnotes

[^1]: With the read-only optimisation.

[^2]: Eventual reachability is Chord’s key correctness property.

[^3]: Acceptors might accept commands that have not been proposed.

[^4]: As described in Paxos Made Live.

[^5]: Client reads might fail due to incorrect garbage collection.

[^6]: The joint consensus membership change algorithm described in the
    paper version of Raft had a liveness bug, which was fixed in
    Ongaro’s PhD thesis.

[^7]: The bug is in the single-server membership change scheme described
    in Ongaro’s thesis.
