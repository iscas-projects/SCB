(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var218 0)
(declare-sort var2254 0)
(declare-sort var808 0)
(declare-sort var3684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2254_getCommonPrefix/1108197239 (var218) String)
(declare-fun var808-init () var808)
(declare-fun <init>/1025162430 (var808) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun get/841749320 (var808) var3684)
(declare-const null-var218 var218)
(declare-const var1010 var218) ; Statement: r0 := @parameter0: org.apache.lucene.util.automaton.Automaton 
(assert (not (= var1010 null-var218)))
(define-const var76 String (var2254_getCommonPrefix/1108197239 var1010)) ; Statement: r1 = staticinvoke <org.apache.lucene.util.automaton.Operations: java.lang.String getCommonPrefix(org.apache.lucene.util.automaton.Automaton)>(r0) 
(define-const var1339 var808 var808-init) ; Statement: $r5 = new org.apache.lucene.util.BytesRefBuilder 
(assert true)
;(assert (<init>/1025162430 var1339)) ; Statement: specialinvoke $r5.<org.apache.lucene.util.BytesRefBuilder: void <init>()>() 

(declare-const var1339!1 var808)
(define-const var3481 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2337 Int (length/-134980193 var76)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto $r3 = virtualinvoke $r5.<org.apache.lucene.util.BytesRefBuilder: org.apache.lucene.util.BytesRef get()>() 
(assert (>= var3481 var2337)) ; Cond: i3 >= $i0 
(assert true)
(define-const var2283 var3684 (get/841749320 var1339!1)) ; Statement: $r3 = virtualinvoke $r5.<org.apache.lucene.util.BytesRefBuilder: org.apache.lucene.util.BytesRef get()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2254_getCommonPrefix/1108197239=([org.apache.lucene.util.automaton.Automaton], java.lang.String), var808-init=([], org.apache.lucene.util.BytesRefBuilder), <init>/1025162430=([org.apache.lucene.util.BytesRefBuilder], void), length/-134980193=([java.lang.String], int), get/841749320=([org.apache.lucene.util.BytesRefBuilder], org.apache.lucene.util.BytesRef)}
; {var218=org.apache.lucene.util.automaton.Automaton, var1010=r0, var2254=org.apache.lucene.util.automaton.Operations, var76=r1, var808=org.apache.lucene.util.BytesRefBuilder, var1339=$r5, var3481=i3, var2337=$i0, var3684=org.apache.lucene.util.BytesRef, var2283=$r3}
; {org.apache.lucene.util.automaton.Automaton=var218, r0=var1010, org.apache.lucene.util.automaton.Operations=var2254, r1=var76, org.apache.lucene.util.BytesRefBuilder=var808, $r5=var1339, i3=var3481, $i0=var2337, org.apache.lucene.util.BytesRef=var3684, $r3=var2283}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: org.apache.lucene.util.automaton.Automaton;	r1 = staticinvoke <org.apache.lucene.util.automaton.Operations: java.lang.String getCommonPrefix(org.apache.lucene.util.automaton.Automaton)>(r0);	$r5 = new org.apache.lucene.util.BytesRefBuilder;	specialinvoke $r5.<org.apache.lucene.util.BytesRefBuilder: void <init>()>();	i3 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i3 >= $i0 goto $r3 = virtualinvoke $r5.<org.apache.lucene.util.BytesRefBuilder: org.apache.lucene.util.BytesRef get()>();	$r3 = virtualinvoke $r5.<org.apache.lucene.util.BytesRefBuilder: org.apache.lucene.util.BytesRef get()>();	return $r3
;block_num 3