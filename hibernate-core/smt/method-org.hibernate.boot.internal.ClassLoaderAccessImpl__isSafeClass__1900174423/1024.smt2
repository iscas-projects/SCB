(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1392 0)
(declare-sort var1599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1392 var1392)
(declare-const null-String String)
(declare-const var3989 var1392) ; Statement: r1 := @this: org.hibernate.boot.internal.ClassLoaderAccessImpl 
(assert (not (= var3989 null-var1392)))
(declare-const var1370 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1370 null-String)))
(assert true)
(define-const var163 Bool (startsWith/-1785782452 var1370 "java.")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z0 != 0 goto $z4 = 1 
(assert (not (= (ite var163 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2198 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1392=org.hibernate.boot.internal.ClassLoaderAccessImpl, var3989=r1, var1370=r0, var1599=null_type, var163=$z0, var2198=$z4}
; {org.hibernate.boot.internal.ClassLoaderAccessImpl=var1392, r1=var3989, r0=var1370, null_type=var1599, $z0=var163, $z4=var2198}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.boot.internal.ClassLoaderAccessImpl;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z0 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= return $z4];	return $z4
;block_num 3