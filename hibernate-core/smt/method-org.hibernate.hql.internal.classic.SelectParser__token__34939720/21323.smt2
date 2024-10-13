(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var604 0)
(declare-sort var3496 0)
(declare-sort var1144 0)
(declare-sort var2409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2409) String)
(declare-fun first/-1438986249 (var604) Bool)
(declare-fun setDistinct/1397404047 (var1144 Bool) void)
(declare-const null-var604 var604)
(declare-const null-String String)
(declare-const null-var1144 var1144)
(declare-const var2409-ROOT var2409)
(declare-const var2728 var604) ; Statement: r3 := @this: org.hibernate.hql.internal.classic.SelectParser 
(assert (not (= var2728 null-var604)))
(declare-const var3215 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3215 null-String)))
(declare-const var3055 var1144) ; Statement: r8 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3055 null-var1144)))
(define-const var1810 var2409 var2409-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var171 String (toLowerCase/1946809429 var3215 var1810)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var2837 Bool (first/-1438986249 var2728)) ; Statement: $z0 = r3.<org.hibernate.hql.internal.classic.SelectParser: boolean first> 
 ; Statement: if $z0 == 0 goto $z1 = r3.<org.hibernate.hql.internal.classic.SelectParser: boolean afterNew> 
(assert (not (= (ite var2837 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2728!1 var604)
(assert (not (= var2728!1 null-var604)))
(assert (= (first/-1438986249 var2728!1) (ite (= 1 0) true false))) ; Statement: r3.<org.hibernate.hql.internal.classic.SelectParser: boolean first> = 0 
(define-const var1080 String "distinct") ; Statement: $r77 = "distinct" 
(assert true)
(define-const var1630 Bool (= var1080 var171)) ; Statement: $z30 = virtualinvoke $r77.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z30 == 0 goto $r78 = "all" 
(assert (not (= (ite var1630 1 0) 0))) ; Negate: Cond: $z30 == 0  
(assert true)
;(assert (setDistinct/1397404047 var3055 (ite (= 1 1) true false))) ; Statement: virtualinvoke r8.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: void setDistinct(boolean)>(1) 

(declare-const var3055!1 var1144)
(declare-const var3160 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), first/-1438986249=([org.hibernate.hql.internal.classic.SelectParser], boolean), setDistinct/1397404047=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, boolean], void)}
; {var604=org.hibernate.hql.internal.classic.SelectParser, var2728=r3, var3215=r0, var3496=null_type, var1144=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3055=r8, var2409=java.util.Locale, var1810=$r1, var171=r2, var2837=$z0, var1080=$r77, var1630=$z30, var3160=1}
; {org.hibernate.hql.internal.classic.SelectParser=var604, r3=var2728, r0=var3215, null_type=var3496, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var1144, r8=var3055, java.util.Locale=var2409, $r1=var1810, r2=var171, $z0=var2837, $r77=var1080, $z30=var1630, 1=var3160}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.hql.internal.classic.SelectParser;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z0 = r3.<org.hibernate.hql.internal.classic.SelectParser: boolean first>;	if $z0 == 0 goto $z1 = r3.<org.hibernate.hql.internal.classic.SelectParser: boolean afterNew>;	r3.<org.hibernate.hql.internal.classic.SelectParser: boolean first> = 0;	$r77 = "distinct";	$z30 = virtualinvoke $r77.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z30 == 0 goto $r78 = "all";	virtualinvoke r8.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: void setDistinct(boolean)>(1);	return
;block_num 3