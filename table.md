| Protocol  |                     Reference                      |   Violation   |            Counter-example             |
| :-------: | :------------------------------------------------: | :-----------: | :------------------------------------: |
|   Raft    |                  \[Ongaro 2014\]                   |  safety\[1\]  |  \[Amos and Zhang 2015; Ongaro 2015\]  |
|   Raft    |    \[Ongaro and Ousterhout 2014; Ongaro 2014\]     |   liveness    |      \[Howard and Abraham 2020\]       |
|   Chord   |  \[Stoica et al. 2003; Liben-Nowell et al. 2002\]  | liveness\[2\] |        \[Zave 2012; Zave 2017\]        |
|  Pastry   |           \[Rowstron and Druschel 2001\]           |    safety     | \[Azmy et al. 2016; Azmy et al. 2018\] |
|  Zyzzyva  |      \[Kotla et al. 2007; Kotla et al. 2010\]      |    safety     |        \[Abraham et al. 2017\]         |
| FaB Paxos | \[Martin and Alvisi 2005; Martin and Alvisi 2006\] |   liveness    |        \[Abraham et al. 2017\]         |
|  EPaxos   |               \[Moraru et al. 2013\]               |    safety     |             \[Sutra 2020\]             |
|  DPaxos   |               \[Nawab et al. 2018\]                |    safety     |       \[Whittaker et al. 2021\]        |

(Reference list starts on the next page.)

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

<div id="ref-howardRaftDoesNot2020">

<span class="smallcaps">Howard, H. and Abraham, I.</span> 2020. Raft
does not Guarantee Liveness in the face of Network Faults.
<https://decentralizedthoughts.github.io/2020-12-12-raft-liveness-full-omission/>.

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

<div id="ref-liben-nowellAnalysisEvolutionPeertopeer2002">

<span class="smallcaps">Liben-Nowell, D., Balakrishnan, H., and Karger,
D.</span> 2002. Analysis of the evolution of peer-to-peer systems.
*Proceedings of the twenty-first annual symposium on principles of
distributed computing*, Association for Computing Machinery, 233–242.

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

<span class="smallcaps">Stoica, I., Morris, R., Liben-Nowell, D., et
al.</span> 2003. Chord: A scalable peer-to-peer lookup protocol for
internet applications. *IEEE/ACM Trans. Netw.* *11*, 1, 17–32.

</div>

<div id="ref-sutraCorrectnessEgalitarianPaxos2020">

<span class="smallcaps">Sutra, P.</span> 2020. On the correctness of
Egalitarian Paxos. *Information Processing Letters* *156*.

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

1.  The single-server membership change algorithm is described in
    Ongaro’s PhD thesis. The paper version of Raft uses joint
    consensus and does not have this error.

2.  Eventual reachability is Chord’s key correctness property.
