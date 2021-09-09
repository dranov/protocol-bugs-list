# Errors found in distributed protocols

This page collects bugs (errors) discovered in the description of distributed _protocols_. We are only interested in bugs in the protocols themselves, not implementation bugs. **Please submit a pull request if you know of an error that is not listed!**

The table below is generated from `table.tex`. Please edit that file if you are making a pull request.

## Table of errors

|     Protocol      |                     Reference                      |      Violation      |            Counter-example             |
| :---------------: | :------------------------------------------------: | :-----------------: | :------------------------------------: |
|       Chord       |  \[Stoica et al. 2001; Liben-Nowell et al. 2002\]  |    liveness\[1\]    |        \[Zave 2012; Zave 2017\]        |
|      Pastry       |           \[Rowstron and Druschel 2001\]           |       safety        | \[Azmy et al. 2016; Azmy et al. 2018\] |
| Generalised Paxos |                  \[Lamport 2005\]                  | non-triviality\[2\] |       \[Sutra and Shapiro 2010\]       |
|     FaB Paxos     | \[Martin and Alvisi 2005; Martin and Alvisi 2006\] |      liveness       |        \[Abraham et al. 2017\]         |
| Multi-Paxos\[3\]  |              \[Chandra et al. 2007\]               |       safety        |        \[Michael et al. 2017\]         |
|      Zyzzyva      |      \[Kotla et al. 2007; Kotla et al. 2010\]      |       safety        |        \[Abraham et al. 2017\]         |
|       CRAQ        |           \[Terrace and Freedman 2009\]            |     safety\[4\]     |           \[Whittaker 2020\]           |
|      JPaxos       |              \[Kończak et al. 2011\]               |       safety        |        \[Michael et al. 2017\]         |
|   VR Revisited    |            \[Liskov and Cowling 2012\]             |       safety        |        \[Michael et al. 2017\]         |
|      EPaxos       |               \[Moraru et al. 2013\]               |       safety        |             \[Sutra 2020\]             |
|       Raft        |           \[Ongaro and Ousterhout 2014\]           |    liveness\[5\]    |             \[Hoch 2014\]              |
|       Raft        |                  \[Ongaro 2014\]                   |     safety\[6\]     |  \[Amos and Zhang 2015; Ongaro 2015\]  |
|       Raft        |    \[Ongaro and Ousterhout 2014; Ongaro 2014\]     |      liveness       |      \[Howard and Abraham 2020\]       |
|      DPaxos       |               \[Nawab et al. 2018\]                |       safety        |       \[Whittaker et al. 2021\]        |


## Footnotes

1.  Eventual reachability is Chord’s key correctness property.

2.  Acceptors might accept commands that have not been proposed.

3.  As described in Paxos Made Live.

4.  Client reads might fail due to incorrect garbage collection.

5.  The joint consensus membership change algorithm described in the
    paper version of Raft had a liveness bug, which was fixed in
    Ongaro’s PhD thesis.

6.  The bug is in the single-server membership change scheme described
    in Ongaro’s thesis.

## Acknowledgements

The following people suggested additions to the list:

- [Dan Ports](https://drkp.net/)
- [Michael Whittaker](https://mwhittaker.github.io/)
## References

<div id="refs" class="references">

<div id="ref-abrahamRevisitingFastPractical2017">

<span class="smallcaps">Abraham, I., Gueta, G., Malkhi, D., Alvisi, L.,
Kotla, R., and Martin, J.-P.</span> 2017. Revisiting Fast Practical
Byzantine Fault Tolerance. *arXiv:1712.01367 \[cs\]*.

</div>

<div id="ref-amos15812TermPaper2015">

<span class="smallcaps">Amos, B. and Zhang, H.</span> 2015. *15-812 Term
Paper: Specifying and proving cluster membership for the Raft
distributed consensus algorithm*..

</div>

<div id="ref-azmyRigorousCorrectnessProof2016">

<span class="smallcaps">Azmy, N., Merz, S., and Weidenbach, C.</span>
2016. A Rigorous Correctness Proof for Pastry. In: M. Butler, K.-D.
Schewe, A. Mashkoor and M. Biro, eds., *Abstract State Machines, Alloy,
B, TLA, VDM, and Z*. Springer International Publishing, Cham, 86–101.

</div>

<div id="ref-azmyMachinecheckedCorrectnessProof2018">

<span class="smallcaps">Azmy, N., Merz, S., and Weidenbach, C.</span>
2018. A machine-checked correctness proof for Pastry. *Science of
Computer Programming* *158*, 64–80.

</div>

<div id="ref-chandraPaxosMadeLive2007">

<span class="smallcaps">Chandra, T.D., Griesemer, R., and Redstone,
J.</span> 2007. Paxos made live: An engineering perspective.
*Proceedings of the twenty-sixth annual ACM symposium on Principles of
distributed computing - PODC ’07*, ACM Press, 398–407.

</div>

<div id="ref-hochConfigurationChanges2014">

<span class="smallcaps">Hoch, E.</span> 2014. Configuration changes.
<https://groups.google.com/g/raft-dev/c/xux5HRxH3Ic/m/mz_PDK-qMJgJ>.

</div>

<div id="ref-howardRaftDoesNot2020">

<span class="smallcaps">Howard, H. and Abraham, I.</span> 2020. Raft
does not Guarantee Liveness in the face of Network Faults.
<https://decentralizedthoughts.github.io/2020-12-12-raft-liveness-full-omission/>.

</div>

<div id="ref-konczakJPaxosStateMachine2011">

<span class="smallcaps">Kończak, J., Sousa Santos, N.F. de, Żurkowski,
T., Wojciechowski, P.T., and Schiper, A.</span> 2011. *JPaxos: State
machine replication based on the Paxos protocol*..

</div>

<div id="ref-kotlaZyzzyvaSpeculativeByzantine2007">

<span class="smallcaps">Kotla, R., Alvisi, L., Dahlin, M., Clement, A.,
and Wong, E.</span> 2007. Zyzzyva: Speculative byzantine fault
tolerance. *SIGOPS Oper. Syst. Rev.* *41*, 6, 45–58.

</div>

<div id="ref-kotlaZyzzyvaSpeculativeByzantine2009">

<span class="smallcaps">Kotla, R., Alvisi, L., Dahlin, M., Clement, A.,
and Wong, E.</span> 2010. Zyzzyva: Speculative byzantine fault
tolerance. *ACM Trans. Comput. Syst.* *27*, 4.

</div>

<div id="ref-lamportGeneralizedConsensusPaxos2005">

<span class="smallcaps">Lamport, L.</span> 2005. *Generalized Consensus
and Paxos*. Microsoft Research.

</div>

<div id="ref-liben-nowellAnalysisEvolutionPeertopeer2002">

<span class="smallcaps">Liben-Nowell, D., Balakrishnan, H., and Karger,
D.</span> 2002. Analysis of the evolution of peer-to-peer systems.
*Proceedings of the twenty-first annual symposium on principles of
distributed computing*, Association for Computing Machinery, 233–242.

</div>

<div id="ref-liskovViewstampedReplicationRevisited2012">

<span class="smallcaps">Liskov, B. and Cowling, J.</span> 2012.
*Viewstamped Replication Revisited*..

</div>

<div id="ref-martinFastByzantineConsensus2005">

<span class="smallcaps">Martin, J.-P. and Alvisi, L.</span> 2005. Fast
Byzantine Consensus. *2005 International Conference on Dependable
Systems and Networks (DSN’05)*, 402–411.

</div>

<div id="ref-martinFastByzantineConsensus2006">

<span class="smallcaps">Martin, J.-P. and Alvisi, L.</span> 2006. Fast
Byzantine Consensus. *IEEE Transactions on Dependable and Secure
Computing* *3*, 3, 202–215.

</div>

<div id="ref-michaelRecoveringSharedObjects2017">

<span class="smallcaps">Michael, E., Ports, D.R.K., Sharma, N.K., and
Szekeres, A.</span> 2017. Recovering Shared Objects Without Stable
Storage. 27.

</div>

<div id="ref-moraruThereMoreConsensus2013">

<span class="smallcaps">Moraru, I., Andersen, D.G., and Kaminsky,
M.</span> 2013. There is more consensus in Egalitarian parliaments.
*Proceedings of the Twenty-Fourth ACM Symposium on Operating Systems
Principles*, Association for Computing Machinery, 358–372.

</div>

<div id="ref-nawabDPaxosManagingData2018">

<span class="smallcaps">Nawab, F., Agrawal, D., and El Abbadi, A.</span>
2018. DPaxos: Managing Data Closer to Users for Low-Latency and Mobile
Applications. *Proceedings of the 2018 International Conference on
Management of Data*, Association for Computing Machinery, 1221–1236.

</div>

<div id="ref-ongaroConsensusBridgingTheory2014">

<span class="smallcaps">Ongaro, D.</span> 2014. Consensus: Bridging
theory and practice..

</div>

<div id="ref-ongaroBugSingleserverMembership2015">

<span class="smallcaps">Ongaro, D.</span> 2015. Bug in single-server
membership changes.
<https://groups.google.com/g/raft-dev/c/t4xj6dJTP6E/m/d2D9LrWRza8J>.

</div>

<div id="ref-ongaroSearchUnderstandableConsensus2014">

<span class="smallcaps">Ongaro, D. and Ousterhout, J.</span> 2014. In
search of an understandable consensus algorithm. *Proceedings of the
2014 usenix conference on usenix annual technical conference*, USENIX
Association, 305–320.

</div>

<div id="ref-rowstronPastryScalableDecentralized2001">

<span class="smallcaps">Rowstron, A. and Druschel, P.</span> 2001.
Pastry: Scalable, Decentralized Object Location, and Routing for
Large-Scale Peer-to-Peer Systems. *Middleware 2001*, Springer, 329–350.

</div>

<div id="ref-stoicaChordScalablePeertopeer2001">

<span class="smallcaps">Stoica, I., Morris, R., Karger, D., Kaashoek,
M.F., and Balakrishnan, H.</span> 2001. Chord: A scalable peer-to-peer
lookup service for internet applications. *SIGCOMM Comput. Commun. Rev.*
*31*, 4, 149–160.

</div>

<div id="ref-sutraCorrectnessEgalitarianPaxos2020">

<span class="smallcaps">Sutra, P.</span> 2020. On the correctness of
Egalitarian Paxos. *Information Processing Letters* *156*.

</div>

<div id="ref-sutraFastGenuineGeneralized2010">

<span class="smallcaps">Sutra, P. and Shapiro, M.</span> 2010. *Fast
Genuine Generalized Consensus*..

</div>

<div id="ref-terraceObjectStorageCRAQ2009">

<span class="smallcaps">Terrace, J. and Freedman, M.J.</span> 2009.
Object Storage on {CRAQ}: High-Throughput Chain Replication for
Read-Mostly Workloads..

</div>

<div id="ref-whittakerCRAQBug2020">

<span class="smallcaps">Whittaker, M.</span> 2020. CRAQ Bug.
<https://github.com/mwhittaker/craq_bug>.

</div>

<div id="ref-whittakerMatchmakerPaxosReconfigurable2021">

<span class="smallcaps">Whittaker, M., Hellerstein, J.M., Giridharan,
N., Szekeres, A., Howard, H., and Nawab, F.</span> 2021. Matchmaker
Paxos: A Reconfigurable Consensus Protocol. *Journal of Systems
Research*, 22.

</div>

<div id="ref-zaveUsingLightweightModeling2012">

<span class="smallcaps">Zave, P.</span> 2012. Using lightweight modeling
to understand chord. *ACM SIGCOMM Computer Communication Review* *42*,
2, 49–57.

</div>

<div id="ref-zaveReasoningIdentifierSpaces2017">

<span class="smallcaps">Zave, P.</span> 2017. Reasoning About Identifier
Spaces: How to Make Chord Correct. *IEEE Transactions on Software
Engineering* *43*, 12, 1144–1156.

</div>

</div>