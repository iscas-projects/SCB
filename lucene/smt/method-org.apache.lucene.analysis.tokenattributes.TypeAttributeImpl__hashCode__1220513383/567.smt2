(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1836 0)
(declare-sort var2584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/2122304168 (var1836) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1836 var1836)
(declare-const null-String String)
(declare-const var1108 var1836) ; Statement: r0 := @this: org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl 
(assert (not (= var1108 null-var1836)))
(define-const var335 String (type/2122304168 var1108)) ; Statement: $r1 = r0.<org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl: java.lang.String type> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl: java.lang.String type> 
(assert (not (= var335 null-String))) ; Cond: $r1 != null 
(define-const var2597 String (type/2122304168 var1108)) ; Statement: $r2 = r0.<org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl: java.lang.String type> 
(assert true)
(define-const var297 Int (hashCode/-467973558 var2597)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {type/2122304168=([org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1836=org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl, var1108=r0, var335=$r1, var2584=null_type, var2597=$r2, var297=$i0}
; {org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl=var1836, r0=var1108, $r1=var335, null_type=var2584, $r2=var2597, $i0=var297}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl;	$r1 = r0.<org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl: java.lang.String type>;	if $r1 != null goto $r2 = r0.<org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl: java.lang.String type>;	$r2 = r0.<org.apache.lucene.analysis.tokenattributes.TypeAttributeImpl: java.lang.String type>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 3