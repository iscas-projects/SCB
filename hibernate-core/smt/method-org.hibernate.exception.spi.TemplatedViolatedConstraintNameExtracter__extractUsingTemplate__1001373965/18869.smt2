(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1277 0)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var1277 var1277)
(declare-const null-String String)
(declare-const var2307 var1277) ; Statement: r4 := @this: org.hibernate.exception.spi.TemplatedViolatedConstraintNameExtracter 
(assert (not (= var2307 null-var1277)))
(declare-const var3421 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3421 null-String)))
(declare-const var142 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var142 null-String)))
(declare-const var515 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var515 null-String)))
(assert true)
(define-const var997 Int (indexOf/-1209756239 var515 var3421)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
 ; Statement: if i0 >= 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var997 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var1277=org.hibernate.exception.spi.TemplatedViolatedConstraintNameExtracter, var2307=r4, var3421=r1, var443=null_type, var142=r2, var515=r0, var997=i0}
; {org.hibernate.exception.spi.TemplatedViolatedConstraintNameExtracter=var1277, r4=var2307, r1=var3421, null_type=var443, r2=var142, r0=var515, i0=var997}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.exception.spi.TemplatedViolatedConstraintNameExtracter;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	if i0 >= 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	return null
;block_num 2