(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3128 0)
(declare-sort var834 0)
(declare-sort var2083 0)
(declare-sort var919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun accept/1960709945 (var919) var2083)
(declare-fun cast-from-var3128-to-var919 (var3128) var919)
(declare-fun get/2066102533 (var2083 Int) Bool)
(declare-const null-var3128 var3128)
(declare-const null-String String)
(declare-const var3341 var3128) ; Statement: r1 := @this: org.apache.lucene.util.automaton.CharacterRunAutomaton 
(assert (not (= var3341 null-var3128)))
(declare-const var3756 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3756 null-String)))
(define-const var133 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var1646 Int (length/-134980193 var3756)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3559 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r2 = r1.<org.apache.lucene.util.automaton.CharacterRunAutomaton: org.apache.lucene.util.FixedBitSet accept> 
(assert (>= var3559 var1646)) ; Cond: i4 >= i0 
(define-const var3060 var2083 (accept/1960709945 (cast-from-var3128-to-var919 var3341))) ; Statement: $r2 = r1.<org.apache.lucene.util.automaton.CharacterRunAutomaton: org.apache.lucene.util.FixedBitSet accept> 
(assert true)
(define-const var2938 Bool (get/2066102533 var3060 var133)) ; Statement: $z0 = virtualinvoke $r2.<org.apache.lucene.util.FixedBitSet: boolean get(int)>(i3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), accept/1960709945=([org.apache.lucene.util.automaton.RunAutomaton], org.apache.lucene.util.FixedBitSet), cast-from-var3128-to-var919=([org.apache.lucene.util.automaton.CharacterRunAutomaton], org.apache.lucene.util.automaton.RunAutomaton), get/2066102533=([org.apache.lucene.util.FixedBitSet, int], boolean)}
; {var3128=org.apache.lucene.util.automaton.CharacterRunAutomaton, var3341=r1, var3756=r0, var834=null_type, var133=i3, var1646=i0, var3559=i4, var2083=org.apache.lucene.util.FixedBitSet, var919=org.apache.lucene.util.automaton.RunAutomaton, var3060=$r2, var2938=$z0}
; {org.apache.lucene.util.automaton.CharacterRunAutomaton=var3128, r1=var3341, r0=var3756, null_type=var834, i3=var133, i0=var1646, i4=var3559, org.apache.lucene.util.FixedBitSet=var2083, org.apache.lucene.util.automaton.RunAutomaton=var919, $r2=var3060, $z0=var2938}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.lucene.util.automaton.CharacterRunAutomaton;	r0 := @parameter0: java.lang.String;	i3 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto $r2 = r1.<org.apache.lucene.util.automaton.CharacterRunAutomaton: org.apache.lucene.util.FixedBitSet accept>;	$r2 = r1.<org.apache.lucene.util.automaton.CharacterRunAutomaton: org.apache.lucene.util.FixedBitSet accept>;	$z0 = virtualinvoke $r2.<org.apache.lucene.util.FixedBitSet: boolean get(int)>(i3);	return $z0
;block_num 3