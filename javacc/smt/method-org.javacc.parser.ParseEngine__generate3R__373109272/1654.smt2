(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2637 0)
(declare-sort var964 0)
(declare-sort var1489 0)
(declare-sort var1692 0)
(declare-sort var431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun internal_name/-1632124174 (var964) String)
(declare-fun phase3table/-1894308792 (var2637) var1692)
(declare-fun get/-1721276195 (var1692 var431) var431)
(declare-fun cast-from-var964-to-var431 (var964) var431)
(declare-fun cast-from-var431-to-var1489 (var431) var1489)
(define-fun cast-from-var1489-to-var1489 ((arg var1489)) var1489 arg)
(declare-fun count/36539919 (var1489) Int)
(declare-const null-var2637 var2637)
(declare-const null-var964 var964)
(declare-const null-var1489 var1489)
(declare-const var99 var2637) ; Statement: r2 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var99 null-var2637)))
(declare-const var2149 var964) ; Statement: r0 := @parameter0: org.javacc.parser.Expansion 
(assert (not (= var2149 null-var964)))
(declare-const var1232 var1489) ; Statement: r7 := @parameter1: org.javacc.parser.Phase3Data 
(assert (not (= var1232 null-var1489)))
(define-const var1329 var964 var2149) ; Statement: r38 = r0 
(define-const var1264 String (internal_name/-1632124174 var2149)) ; Statement: $r1 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var1988 Bool (= var1264 "")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert (= (ite var1988 1 0) 0)) ; Cond: $z0 == 0 
(define-const var795 var1692 (phase3table/-1894308792 var99)) ; Statement: $r3 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert true)
(define-const var1104 var431 (get/-1721276195 var795 (cast-from-var964-to-var431 var2149))) ; Statement: $r4 = virtualinvoke $r3.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var2227 var1489 (cast-from-var431-to-var1489 var1104)) ; Statement: $r5 = (org.javacc.parser.Phase3Data) $r4 
(define-const var71 var1489 (cast-from-var1489-to-var1489 var2227)) ; Statement: $r21 = (org.javacc.parser.Phase3Data) $r5 
 ; Statement: if $r21 == null goto $r6 = new org.javacc.parser.Phase3Data 
(assert (not (= var71 null-var1489))) ; Negate: Cond: $r21 == null  
(define-const var1592 Int (count/36539919 var71)) ; Statement: $i2 = $r21.<org.javacc.parser.Phase3Data: int count> 
(define-const var275 Int (count/36539919 var1232)) ; Statement: $i1 = r7.<org.javacc.parser.Phase3Data: int count> 
 ; Statement: if $i2 >= $i1 goto return 
(assert (>= var1592 var275)) ; Cond: $i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), phase3table/-1894308792=([org.javacc.parser.ParseEngine], java.util.Hashtable), get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-var964-to-var431=([org.javacc.parser.Expansion], java.lang.Object), cast-from-var431-to-var1489=([java.lang.Object], org.javacc.parser.Phase3Data), cast-from-var1489-to-var1489=([org.javacc.parser.Phase3Data], org.javacc.parser.Phase3Data), count/36539919=([org.javacc.parser.Phase3Data], int)}
; {var2637=org.javacc.parser.ParseEngine, var99=r2, var964=org.javacc.parser.Expansion, var2149=r0, var1489=org.javacc.parser.Phase3Data, var1232=r7, var1329=r38, var1264=$r1, var1988=$z0, var1692=java.util.Hashtable, var795=$r3, var431=java.lang.Object, var1104=$r4, var2227=$r5, var71=$r21, var1592=$i2, var275=$i1}
; {org.javacc.parser.ParseEngine=var2637, r2=var99, org.javacc.parser.Expansion=var964, r0=var2149, org.javacc.parser.Phase3Data=var1489, r7=var1232, r38=var1329, $r1=var1264, $z0=var1988, java.util.Hashtable=var1692, $r3=var795, java.lang.Object=var431, $r4=var1104, $r5=var2227, $r21=var71, $i2=var1592, $i1=var275}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Expansion;	r7 := @parameter1: org.javacc.parser.Phase3Data;	r38 = r0;	$r1 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r3 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	$r3 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	$r4 = virtualinvoke $r3.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0);	$r5 = (org.javacc.parser.Phase3Data) $r4;	$r21 = (org.javacc.parser.Phase3Data) $r5;	if $r21 == null goto $r6 = new org.javacc.parser.Phase3Data;	$i2 = $r21.<org.javacc.parser.Phase3Data: int count>;	$i1 = r7.<org.javacc.parser.Phase3Data: int count>;	if $i2 >= $i1 goto return;	return
;block_num 4