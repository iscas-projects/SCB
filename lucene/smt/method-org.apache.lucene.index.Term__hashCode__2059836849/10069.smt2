(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var623 0)
(declare-sort var358 0)
(declare-sort var3473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/907437598 (var623) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun bytes/907437598 (var623) var3473)
(declare-const null-var623 var623)
(declare-const null-String String)
(declare-const null-var3473 var3473)
(declare-const var107 var623) ; Statement: r0 := @this: org.apache.lucene.index.Term 
(assert (not (= var107 null-var623)))
(define-const var1201 String (field/907437598 var107)) ; Statement: $r1 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(assert (not (= var1201 null-String))) ; Cond: $r1 != null 
(define-const var2262 String (field/907437598 var107)) ; Statement: $r2 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(assert true)
(define-const var2767 Int (hashCode/-467973558 var2262)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3425 Int (+ 31 var2767)) ; Statement: $i2 = 31 + $i3 
(define-const var2598 Int (* 31 var3425)) ; Statement: $i0 = 31 * $i2 
(define-const var1611 var3473 (bytes/907437598 var107)) ; Statement: $r3 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes> 
(assert (not (not (= var1611 null-var3473)))) ; Negate: Cond: $r3 != null  
(define-const var3977 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= $i1 = $i0 + $i4] 
(assert true) ; Non Conditional
(define-const var2508 Int (+ var2598 var3977)) ; Statement: $i1 = $i0 + $i4 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {field/907437598=([org.apache.lucene.index.Term], java.lang.String), hashCode/-467973558=([java.lang.String], int), bytes/907437598=([org.apache.lucene.index.Term], org.apache.lucene.util.BytesRef)}
; {var623=org.apache.lucene.index.Term, var107=r0, var1201=$r1, var358=null_type, var2262=$r2, var2767=$i3, var3425=$i2, var2598=$i0, var3473=org.apache.lucene.util.BytesRef, var1611=$r3, var3977=$i4, var2508=$i1}
; {org.apache.lucene.index.Term=var623, r0=var107, $r1=var1201, null_type=var358, $r2=var2262, $i3=var2767, $i2=var3425, $i0=var2598, org.apache.lucene.util.BytesRef=var3473, $r3=var1611, $i4=var3977, $i1=var2508}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.index.Term;	$r1 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	if $r1 != null goto $r2 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$r2 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = 31 + $i3;	$i0 = 31 * $i2;	$r3 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes>;	if $r3 != null goto $r4 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes>;	$i4 = 0;	goto [?= $i1 = $i0 + $i4];	$i1 = $i0 + $i4;	return $i1
;block_num 5