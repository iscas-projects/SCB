(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3195 0)
(declare-sort var3593 0)
(declare-sort var881 0)
(declare-sort var3566 0)
(declare-sort var747 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3566) String)
(declare-fun expectingJoin/1559443237 (var3195) Bool)
(declare-fun expectingAs/1559443237 (var3195) Bool)
(declare-fun var747-init () var747)
(declare-fun <init>/-1391884909 (var747 String) void)
(declare-fun cast-from-var747-to-var3850 (var747) var3850)
(declare-const null-var3195 var3195)
(declare-const null-String String)
(declare-const null-var881 var881)
(declare-const var3566-ROOT var3566)
(declare-const var1033 var3195) ; Statement: r6 := @this: org.hibernate.hql.internal.classic.FromParser 
(assert (not (= var1033 null-var3195)))
(declare-const var2086 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2086 null-String)))
(declare-const var406 var881) ; Statement: r14 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var406 null-var881)))
(define-const var2482 var3566 var3566-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var857 String (toLowerCase/1946809429 var2086 var2482)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var1028 Bool (= var857 ",")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(",") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("join") 
(assert (not (= (ite var1028 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3929 Bool (expectingJoin/1559443237 var1033)) ; Statement: $z37 = r6.<org.hibernate.hql.internal.classic.FromParser: boolean expectingJoin> 
(define-const var2229 Bool (expectingAs/1559443237 var1033)) ; Statement: $z36 = r6.<org.hibernate.hql.internal.classic.FromParser: boolean expectingAs> 
(define-const var3659 Bool (ite (= 1 (bv2nat (bvor ((_ int2bv 64) (ite var3929 1 0)) ((_ int2bv 64) (ite var2229 1 0))))) true false)) ; Statement: $z38 = $z37 | $z36 
 ; Statement: if $z38 != 0 goto r6.<org.hibernate.hql.internal.classic.FromParser: boolean expectingJoin> = 0 
(assert (not (not (= (ite var3659 1 0) 0)))) ; Negate: Cond: $z38 != 0  
(define-const var3825 var747 var747-init) ; Statement: $r131 = new org.hibernate.QueryException 
(assert true)
;(assert (<init>/-1391884909 var3825 "unexpected token: ,")) ; Statement: specialinvoke $r131.<org.hibernate.QueryException: void <init>(java.lang.String)>("unexpected token: ,") 

(declare-const var3825!1 var747)
(declare-const var3239 String)
(define-const var2667 var3850 (cast-from-var747-to-var3850 var3825!1)) ; Statement: $r162 = (java.lang.Throwable) $r131 
 ; Statement: throw $r162 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), expectingJoin/1559443237=([org.hibernate.hql.internal.classic.FromParser], boolean), expectingAs/1559443237=([org.hibernate.hql.internal.classic.FromParser], boolean), var747-init=([], org.hibernate.QueryException), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var747-to-var3850=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3195=org.hibernate.hql.internal.classic.FromParser, var1033=r6, var2086=r0, var3593=null_type, var881=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var406=r14, var3566=java.util.Locale, var2482=$r1, var857=r2, var1028=$z0, var3929=$z37, var2229=$z36, var3659=$z38, var747=org.hibernate.QueryException, var3825=$r131, var3239="unexpected token: ,", var3850=java.lang.Throwable, var2667=$r162}
; {org.hibernate.hql.internal.classic.FromParser=var3195, r6=var1033, r0=var2086, null_type=var3593, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var881, r14=var406, java.util.Locale=var3566, $r1=var2482, r2=var857, $z0=var1028, $z37=var3929, $z36=var2229, $z38=var3659, org.hibernate.QueryException=var747, $r131=var3825, "unexpected token: ,"=var3239, java.lang.Throwable=var3850, $r162=var2667}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.hibernate.hql.internal.classic.FromParser;	r0 := @parameter0: java.lang.String;	r14 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(",");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("join");	$z37 = r6.<org.hibernate.hql.internal.classic.FromParser: boolean expectingJoin>;	$z36 = r6.<org.hibernate.hql.internal.classic.FromParser: boolean expectingAs>;	$z38 = $z37 | $z36;	if $z38 != 0 goto r6.<org.hibernate.hql.internal.classic.FromParser: boolean expectingJoin> = 0;	$r131 = new org.hibernate.QueryException;	specialinvoke $r131.<org.hibernate.QueryException: void <init>(java.lang.String)>("unexpected token: ,");	$r162 = (java.lang.Throwable) $r131;	throw $r162
;block_num 3