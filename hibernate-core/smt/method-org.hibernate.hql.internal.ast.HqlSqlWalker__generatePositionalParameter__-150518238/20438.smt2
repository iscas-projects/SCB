(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2736 0)
(declare-sort var3647 0)
(declare-sort var1352 0)
(declare-sort var1015 0)
(declare-sort var121 0)
(declare-sort var1017 0)
(declare-sort var937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSessionFactoryHelper/1539398380 (var2736) var1352)
(declare-fun isStrictJPAQLComplianceEnabled/-1257756706 (var1352) Bool)
(declare-fun namedParameters/-758040019 (var2736) var1015)
(declare-fun var121-init () var121)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun queryTranslatorImpl/-758040019 (var2736) var1017)
(declare-fun getQueryString/-1893002089 (var1017) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1580113206 (var121 String) void)
(declare-fun cast-from-var121-to-var937 (var121) var937)
(declare-const null-var2736 var2736)
(declare-const null-var3647 var3647)
(declare-const null-var1015 var1015)
(declare-const var2087 var2736) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var2087 null-var2736)))
(declare-const var2166 var3647) ; Statement: r8 := @parameter0: antlr.collections.AST 
(assert (not (= var2166 null-var3647)))
(declare-const var390 var3647) ; Statement: r2 := @parameter1: antlr.collections.AST 
(assert (not (= var390 null-var3647)))
(assert true)
(define-const var2117 var1352 (getSessionFactoryHelper/1539398380 var2087)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var1005 Bool (isStrictJPAQLComplianceEnabled/-1257756706 var2117)) ; Statement: $z0 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: boolean isStrictJPAQLComplianceEnabled()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var1005 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3358 var1015 (namedParameters/-758040019 var2087)) ; Statement: $r16 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map namedParameters> 
 ; Statement: if $r16 == null goto (branch) 
(assert (not (= var3358 null-var1015))) ; Negate: Cond: $r16 == null  
(define-const var469 var121 var121-init) ; Statement: $r25 = new antlr.SemanticException 
(define-const var3322 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3322)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3322!1 String)
(assert (= var3322!1 ""))
(assert true)
(define-const var1211 String (append/672562846 var3322!1 "Cannot mix positional and named parameters: ")) ; Statement: $r21 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot mix positional and named parameters: ") 
(declare-const var3322!2 String)
(assert (= var3322!2 (str.++ var3322!1 "Cannot mix positional and named parameters: ")))
(define-const var1653 var1017 (queryTranslatorImpl/-758040019 var2087)) ; Statement: $r19 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslatorImpl> 
(assert true)
(define-const var410 String (getQueryString/-1893002089 var1653)) ; Statement: $r20 = virtualinvoke $r19.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: java.lang.String getQueryString()>() 
(assert true)
(define-const var2855 String (append/672562846 var1211 var410)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1211!1 String)
(assert (= var1211!1 (str.++ var1211 var410)))
(assert true)
(define-const var3971 String (toString/-2075883882 var2855)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1580113206 var469 var3971)) ; Statement: specialinvoke $r25.<antlr.SemanticException: void <init>(java.lang.String)>($r23) 

(declare-const var469!1 var121)
(declare-const var3971!1 String)
(define-const var2811 var937 (cast-from-var121-to-var937 var469!1)) ; Statement: $r28 = (java.lang.Throwable) $r25 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getSessionFactoryHelper/1539398380=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), isStrictJPAQLComplianceEnabled/-1257756706=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper], boolean), namedParameters/-758040019=([org.hibernate.hql.internal.ast.HqlSqlWalker], java.util.Map), var121-init=([], antlr.SemanticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), queryTranslatorImpl/-758040019=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.QueryTranslatorImpl), getQueryString/-1893002089=([org.hibernate.hql.internal.ast.QueryTranslatorImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1580113206=([antlr.SemanticException, java.lang.String], void), cast-from-var121-to-var937=([antlr.SemanticException], java.lang.Throwable)}
; {var2736=org.hibernate.hql.internal.ast.HqlSqlWalker, var2087=r0, var3647=antlr.collections.AST, var2166=r8, var390=r2, var1352=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var2117=$r1, var1005=$z0, var1015=java.util.Map, var3358=$r16, var121=antlr.SemanticException, var469=$r25, var3322=$r24, var1211=$r21, var1017=org.hibernate.hql.internal.ast.QueryTranslatorImpl, var1653=$r19, var410=$r20, var2855=$r22, var3971=$r23, var937=java.lang.Throwable, var2811=$r28}
; {org.hibernate.hql.internal.ast.HqlSqlWalker=var2736, r0=var2087, antlr.collections.AST=var3647, r8=var2166, r2=var390, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var1352, $r1=var2117, $z0=var1005, java.util.Map=var1015, $r16=var3358, antlr.SemanticException=var121, $r25=var469, $r24=var3322, $r21=var1211, org.hibernate.hql.internal.ast.QueryTranslatorImpl=var1017, $r19=var1653, $r20=var410, $r22=var2855, $r23=var3971, java.lang.Throwable=var937, $r28=var2811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker;	r8 := @parameter0: antlr.collections.AST;	r2 := @parameter1: antlr.collections.AST;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$z0 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: boolean isStrictJPAQLComplianceEnabled()>();	if $z0 == 0 goto (branch);	$r16 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map namedParameters>;	if $r16 == null goto (branch);	$r25 = new antlr.SemanticException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot mix positional and named parameters: ");	$r19 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslatorImpl>;	$r20 = virtualinvoke $r19.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: java.lang.String getQueryString()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<antlr.SemanticException: void <init>(java.lang.String)>($r23);	$r28 = (java.lang.Throwable) $r25;	throw $r28
;block_num 3