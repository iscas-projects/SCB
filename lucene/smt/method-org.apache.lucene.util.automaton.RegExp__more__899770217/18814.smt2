(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/406973053 (var2000) Int)
(declare-fun originalString/406973053 (var2000) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2000 var2000)
(declare-const var1913 var2000) ; Statement: r0 := @this: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var1913 null-var2000)))
(define-const var3323 Int (pos/406973053 var1913)) ; Statement: $i0 = r0.<org.apache.lucene.util.automaton.RegExp: int pos> 
(define-const var1541 String (originalString/406973053 var1913)) ; Statement: $r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString> 
(assert true)
(define-const var2346 Int (length/-134980193 var1541)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $z0 = 0 
(assert (not (>= var3323 var2346))) ; Negate: Cond: $i0 >= $i1  
(define-const var109 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/406973053=([org.apache.lucene.util.automaton.RegExp], int), originalString/406973053=([org.apache.lucene.util.automaton.RegExp], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2000=org.apache.lucene.util.automaton.RegExp, var1913=r0, var3323=$i0, var1541=$r1, var2346=$i1, var109=$z0}
; {org.apache.lucene.util.automaton.RegExp=var2000, r0=var1913, $i0=var3323, $r1=var1541, $i1=var2346, $z0=var109}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.util.automaton.RegExp;	$i0 = r0.<org.apache.lucene.util.automaton.RegExp: int pos>;	$r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3