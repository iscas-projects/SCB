(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1324 0)
(declare-sort var536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1324 var1324)
(declare-const null-String String)
(declare-const var2965 var1324) ; Statement: r1 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var2965 null-var1324)))
(declare-const var940 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var940 null-String)))
(assert true)
(define-const var176 Bool (= var940 "between")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("between") 
 ; Statement: if $z0 != 0 goto r1.<org.hibernate.hql.internal.classic.WhereParser: boolean betweenSpecialCase> = 1 
(assert (not (not (= (ite var176 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3037 Bool (= var940 "not between")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("not between") 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3037 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1324=org.hibernate.hql.internal.classic.WhereParser, var2965=r1, var940=r0, var536=null_type, var176=$z0, var3037=$z1}
; {org.hibernate.hql.internal.classic.WhereParser=var1324, r1=var2965, r0=var940, null_type=var536, $z0=var176, $z1=var3037}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r1 := @this: org.hibernate.hql.internal.classic.WhereParser;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("between");	if $z0 != 0 goto r1.<org.hibernate.hql.internal.classic.WhereParser: boolean betweenSpecialCase> = 1;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("not between");	if $z1 == 0 goto return;	return
;block_num 3