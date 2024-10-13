(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/406973053 (var1070) Int)
(declare-fun originalString/406973053 (var1070) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1070 var1070)
(declare-const null-Int Int)
(declare-const var410 var1070) ; Statement: r0 := @this: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var410 null-var1070)))
(declare-const var3342 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var3342 null-Int)))
(define-const var2657 Int (pos/406973053 var410)) ; Statement: $i0 = r0.<org.apache.lucene.util.automaton.RegExp: int pos> 
(define-const var1770 String (originalString/406973053 var410)) ; Statement: $r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString> 
(assert true)
(define-const var2948 Int (length/-134980193 var1770)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 < $i1 goto $r2 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString> 
(assert (not (< var2657 var2948))) ; Negate: Cond: $i0 < $i1  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/406973053=([org.apache.lucene.util.automaton.RegExp], int), originalString/406973053=([org.apache.lucene.util.automaton.RegExp], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1070=org.apache.lucene.util.automaton.RegExp, var410=r0, var3342=i3, var2657=$i0, var1770=$r1, var2948=$i1}
; {org.apache.lucene.util.automaton.RegExp=var1070, r0=var410, i3=var3342, $i0=var2657, $r1=var1770, $i1=var2948}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.util.automaton.RegExp;	i3 := @parameter0: int;	$i0 = r0.<org.apache.lucene.util.automaton.RegExp: int pos>;	$r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 < $i1 goto $r2 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString>;	return 0
;block_num 2