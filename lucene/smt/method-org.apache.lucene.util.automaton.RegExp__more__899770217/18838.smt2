(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/406973053 (var347) Int)
(declare-fun originalString/406973053 (var347) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var347 var347)
(declare-const var1728 var347) ; Statement: r0 := @this: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var1728 null-var347)))
(define-const var582 Int (pos/406973053 var1728)) ; Statement: $i0 = r0.<org.apache.lucene.util.automaton.RegExp: int pos> 
(define-const var3200 String (originalString/406973053 var1728)) ; Statement: $r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString> 
(assert true)
(define-const var1785 Int (length/-134980193 var3200)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $z0 = 0 
(assert (>= var582 var1785)) ; Cond: $i0 >= $i1 
(define-const var2734 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/406973053=([org.apache.lucene.util.automaton.RegExp], int), originalString/406973053=([org.apache.lucene.util.automaton.RegExp], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var347=org.apache.lucene.util.automaton.RegExp, var1728=r0, var582=$i0, var3200=$r1, var1785=$i1, var2734=$z0}
; {org.apache.lucene.util.automaton.RegExp=var347, r0=var1728, $i0=var582, $r1=var3200, $i1=var1785, $z0=var2734}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.util.automaton.RegExp;	$i0 = r0.<org.apache.lucene.util.automaton.RegExp: int pos>;	$r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3