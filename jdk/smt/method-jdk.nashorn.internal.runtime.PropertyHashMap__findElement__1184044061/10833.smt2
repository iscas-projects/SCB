(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var639 0)
(declare-sort var304 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var639 var639)
(declare-const null-String String)
(declare-const var452 var639) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyHashMap$Element 
(assert (not (= var452 null-var639)))
(declare-const var2419 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2419 null-String)))
(assert true)
(define-const var949 Int (hashCode/-467973558 var2419)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var1044 var639 var452) ; Statement: r2 = r1 
(assert true) ; Non Conditional
 ; Statement: if r2 == null goto return null 
(assert (= var1044 null-var639)) ; Cond: r2 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var639=jdk.nashorn.internal.runtime.PropertyHashMap$Element, var452=r1, var2419=r0, var304=null_type, var949=i0, var1044=r2}
; {jdk.nashorn.internal.runtime.PropertyHashMap$Element=var639, r1=var452, r0=var2419, null_type=var304, i0=var949, r2=var1044}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyHashMap$Element;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	r2 = r1;	if r2 == null goto return null;	return null
;block_num 3