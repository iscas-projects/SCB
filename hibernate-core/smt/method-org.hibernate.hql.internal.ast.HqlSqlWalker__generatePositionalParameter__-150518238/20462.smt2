(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3157 0)
(declare-sort var1466 0)
(declare-sort var1419 0)
(declare-sort var2125 0)
(declare-sort var1489 0)
(declare-sort var2675 0)
(declare-sort var481 0)
(declare-sort var3551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSessionFactoryHelper/1539398380 (var3157) var1419)
(declare-fun isStrictJPAQLComplianceEnabled/-1257756706 (var1419) Bool)
(declare-fun var2125-init () var2125)
(declare-fun arr-var2675-init () (Array Int var2675))
(declare-fun queryTranslatorImpl/-758040019 (var3157) var481)
(declare-fun getQueryString/-1893002089 (var481) String)
(declare-fun cast-from-String-to-var2675 (String) var2675)
(declare-fun String_format/-647569892 (var1489 String (Array Int var2675)) String)
(declare-fun <init>/-1391884909 (var2125 String) void)
(declare-fun cast-from-var2125-to-var3551 (var2125) var3551)
(declare-const null-var3157 var3157)
(declare-const null-var1466 var1466)
(declare-const var1489-ROOT var1489)
(declare-const null-__Array__Int__var2675__ (Array Int var2675))
(declare-const var116 var3157) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var116 null-var3157)))
(declare-const var1686 var1466) ; Statement: r8 := @parameter0: antlr.collections.AST 
(assert (not (= var1686 null-var1466)))
(declare-const var2409 var1466) ; Statement: r2 := @parameter1: antlr.collections.AST 
(assert (not (= var2409 null-var1466)))
(assert true)
(define-const var52 var1419 (getSessionFactoryHelper/1539398380 var116)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var3405 Bool (isStrictJPAQLComplianceEnabled/-1257756706 var52)) ; Statement: $z0 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: boolean isStrictJPAQLComplianceEnabled()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3405 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r2 != null goto r3 = interfaceinvoke r2.<antlr.collections.AST: java.lang.String getText()>() 
(assert (not (not (= var2409 null-var1466)))) ; Negate: Cond: r2 != null  
(define-const var1968 var2125 var2125-init) ; Statement: $r26 = new org.hibernate.QueryException 
(define-const var1965 var1489 var1489-ROOT) ; Statement: $r13 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3479 (Array Int var2675) arr-var2675-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(define-const var2539 var481 (queryTranslatorImpl/-758040019 var116)) ; Statement: $r12 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslatorImpl> 
(assert true)
(define-const var235 String (getQueryString/-1893002089 var2539)) ; Statement: $r14 = virtualinvoke $r12.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: java.lang.String getQueryString()>() 
(declare-const var3479!1 (Array Int var2675))
(assert (not (= var3479!1 null-__Array__Int__var2675__)))
(assert (= (select var3479!1 0) (cast-from-String-to-var2675 var235))) ; Statement: $r11[0] = $r14 
(define-const var2211 String (String_format/-647569892 var1965 "Legacy-style query parameters (`?`) are no longer supported; use JPA-style ordinal parameters (e.g., `?1`) instead : %s" var3479!1)) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r13, "Legacy-style query parameters (`?`) are no longer supported; use JPA-style ordinal parameters (e.g., `?1`) instead : %s", $r11) 
(assert true)
;(assert (<init>/-1391884909 var1968 var2211)) ; Statement: specialinvoke $r26.<org.hibernate.QueryException: void <init>(java.lang.String)>($r15) 

(declare-const var1968!1 var2125)
(declare-const var2211!1 String)
(define-const var3227 var3551 (cast-from-var2125-to-var3551 var1968!1)) ; Statement: $r29 = (java.lang.Throwable) $r26 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {getSessionFactoryHelper/1539398380=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), isStrictJPAQLComplianceEnabled/-1257756706=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper], boolean), var2125-init=([], org.hibernate.QueryException), arr-var2675-init=([], java.lang.Object[]), queryTranslatorImpl/-758040019=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.QueryTranslatorImpl), getQueryString/-1893002089=([org.hibernate.hql.internal.ast.QueryTranslatorImpl], java.lang.String), cast-from-String-to-var2675=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2125-to-var3551=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3157=org.hibernate.hql.internal.ast.HqlSqlWalker, var116=r0, var1466=antlr.collections.AST, var1686=r8, var2409=r2, var1419=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var52=$r1, var3405=$z0, var2125=org.hibernate.QueryException, var1968=$r26, var1489=java.util.Locale, var1965=$r13, var2675=java.lang.Object, var3479=$r11, var481=org.hibernate.hql.internal.ast.QueryTranslatorImpl, var2539=$r12, var235=$r14, var2211=$r15, var3551=java.lang.Throwable, var3227=$r29}
; {org.hibernate.hql.internal.ast.HqlSqlWalker=var3157, r0=var116, antlr.collections.AST=var1466, r8=var1686, r2=var2409, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var1419, $r1=var52, $z0=var3405, org.hibernate.QueryException=var2125, $r26=var1968, java.util.Locale=var1489, $r13=var1965, java.lang.Object=var2675, $r11=var3479, org.hibernate.hql.internal.ast.QueryTranslatorImpl=var481, $r12=var2539, $r14=var235, $r15=var2211, java.lang.Throwable=var3551, $r29=var3227}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker;	r8 := @parameter0: antlr.collections.AST;	r2 := @parameter1: antlr.collections.AST;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$z0 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: boolean isStrictJPAQLComplianceEnabled()>();	if $z0 == 0 goto (branch);	if r2 != null goto r3 = interfaceinvoke r2.<antlr.collections.AST: java.lang.String getText()>();	$r26 = new org.hibernate.QueryException;	$r13 = <java.util.Locale: java.util.Locale ROOT>;	$r11 = newarray (java.lang.Object)[1];	$r12 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslatorImpl>;	$r14 = virtualinvoke $r12.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: java.lang.String getQueryString()>();	$r11[0] = $r14;	$r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r13, "Legacy-style query parameters (`?`) are no longer supported; use JPA-style ordinal parameters (e.g., `?1`) instead : %s", $r11);	specialinvoke $r26.<org.hibernate.QueryException: void <init>(java.lang.String)>($r15);	$r29 = (java.lang.Throwable) $r26;	throw $r29
;block_num 3