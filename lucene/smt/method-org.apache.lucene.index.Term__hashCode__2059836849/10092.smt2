(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3566 0)
(declare-sort var3018 0)
(declare-sort var1881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/907437598 (var3566) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun bytes/907437598 (var3566) var1881)
(declare-fun hashCode/1951338441 (var1881) Int)
(declare-const null-var3566 var3566)
(declare-const null-String String)
(declare-const null-var1881 var1881)
(declare-const var2067 var3566) ; Statement: r0 := @this: org.apache.lucene.index.Term 
(assert (not (= var2067 null-var3566)))
(define-const var1991 String (field/907437598 var2067)) ; Statement: $r1 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(assert (not (= var1991 null-String))) ; Cond: $r1 != null 
(define-const var3181 String (field/907437598 var2067)) ; Statement: $r2 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(assert true)
(define-const var2303 Int (hashCode/-467973558 var3181)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var280 Int (+ 31 var2303)) ; Statement: $i2 = 31 + $i3 
(define-const var2005 Int (* 31 var280)) ; Statement: $i0 = 31 * $i2 
(define-const var2526 var1881 (bytes/907437598 var2067)) ; Statement: $r3 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes> 
(assert (not (= var2526 null-var1881))) ; Cond: $r3 != null 
(define-const var311 var1881 (bytes/907437598 var2067)) ; Statement: $r4 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes> 
(assert true)
(define-const var26 Int (hashCode/1951338441 var311)) ; Statement: $i4 = virtualinvoke $r4.<org.apache.lucene.util.BytesRef: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1774 Int (+ var2005 var26)) ; Statement: $i1 = $i0 + $i4 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {field/907437598=([org.apache.lucene.index.Term], java.lang.String), hashCode/-467973558=([java.lang.String], int), bytes/907437598=([org.apache.lucene.index.Term], org.apache.lucene.util.BytesRef), hashCode/1951338441=([org.apache.lucene.util.BytesRef], int)}
; {var3566=org.apache.lucene.index.Term, var2067=r0, var1991=$r1, var3018=null_type, var3181=$r2, var2303=$i3, var280=$i2, var2005=$i0, var1881=org.apache.lucene.util.BytesRef, var2526=$r3, var311=$r4, var26=$i4, var1774=$i1}
; {org.apache.lucene.index.Term=var3566, r0=var2067, $r1=var1991, null_type=var3018, $r2=var3181, $i3=var2303, $i2=var280, $i0=var2005, org.apache.lucene.util.BytesRef=var1881, $r3=var2526, $r4=var311, $i4=var26, $i1=var1774}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.index.Term;	$r1 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	if $r1 != null goto $r2 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$r2 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = 31 + $i3;	$i0 = 31 * $i2;	$r3 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes>;	if $r3 != null goto $r4 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes>;	$r4 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes>;	$i4 = virtualinvoke $r4.<org.apache.lucene.util.BytesRef: int hashCode()>();	$i1 = $i0 + $i4;	return $i1
;block_num 5