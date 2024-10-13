(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var3137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun betweenSpecialCase/258954410 (var609) Bool)
(declare-const null-var609 var609)
(declare-const null-String String)
(declare-const var177 var609) ; Statement: r1 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var177 null-var609)))
(declare-const var1122 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1122 null-String)))
(assert true)
(define-const var579 Bool (= var1122 "between")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("between") 
 ; Statement: if $z0 != 0 goto r1.<org.hibernate.hql.internal.classic.WhereParser: boolean betweenSpecialCase> = 1 
(assert (not (= (ite var579 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var177!1 var609)
(assert (not (= var177!1 null-var609)))
(assert (= (betweenSpecialCase/258954410 var177!1) (ite (= 1 1) true false))) ; Statement: r1.<org.hibernate.hql.internal.classic.WhereParser: boolean betweenSpecialCase> = 1 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {betweenSpecialCase/258954410=([org.hibernate.hql.internal.classic.WhereParser], boolean)}
; {var609=org.hibernate.hql.internal.classic.WhereParser, var177=r1, var1122=r0, var3137=null_type, var579=$z0}
; {org.hibernate.hql.internal.classic.WhereParser=var609, r1=var177, r0=var1122, null_type=var3137, $z0=var579}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.classic.WhereParser;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("between");	if $z0 != 0 goto r1.<org.hibernate.hql.internal.classic.WhereParser: boolean betweenSpecialCase> = 1;	r1.<org.hibernate.hql.internal.classic.WhereParser: boolean betweenSpecialCase> = 1;	return
;block_num 3