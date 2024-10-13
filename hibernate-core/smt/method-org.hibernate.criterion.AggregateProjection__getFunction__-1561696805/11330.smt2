(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2324 0)
(declare-sort var1811 0)
(declare-sort var703 0)
(declare-sort var559 0)
(declare-sort var2230 0)
(declare-sort var2977 0)
(declare-sort var3711 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var703_getFactory/960862227 (var703) var559)
(declare-fun var559_getSqlFunctionRegistry/18379863 (var559) var2230)
(declare-fun findSQLFunction/1942375706 (var2230 String) var2977)
(declare-fun var3711-init () var3711)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3711 String) void)
(declare-fun cast-from-var3711-to-var1709 (var3711) var1709)
(declare-const null-var2324 var2324)
(declare-const null-String String)
(declare-const null-var703 var703)
(declare-const null-var2977 var2977)
(declare-const var2311 var2324) ; Statement: r11 := @this: org.hibernate.criterion.AggregateProjection 
(assert (not (= var2311 null-var2324)))
(declare-const var530 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var530 null-String)))
(declare-const var3480 var703) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var3480 null-var703)))
(define-const var629 var559 (var703_getFactory/960862227 var3480)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2265 var2230 (var559_getSqlFunctionRegistry/18379863 var629)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.function.SQLFunctionRegistry getSqlFunctionRegistry()>() 
(assert true)
(define-const var3412 var2977 (findSQLFunction/1942375706 var2265 var530)) ; Statement: r4 = virtualinvoke $r3.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r2) 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var3412 null-var2977)))) ; Negate: Cond: r4 != null  
(define-const var3675 var3711 var3711-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var2008 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2008)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2008!1 String)
(assert (= var2008!1 ""))
(assert true)
(define-const var3061 String (append/672562846 var2008!1 "Unable to locate mapping for function named [")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate mapping for function named [") 
(declare-const var2008!2 String)
(assert (= var2008!2 (str.++ var2008!1 "Unable to locate mapping for function named [")))
(assert true)
(define-const var319 String (append/672562846 var3061 var530)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3061!1 String)
(assert (= var3061!1 (str.++ var3061 var530)))
(assert true)
(define-const var1512 String (append/672562846 var319 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var319!1 String)
(assert (= var319!1 (str.++ var319 "]")))
(assert true)
(define-const var1359 String (toString/-2075883882 var1512)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3675 var1359)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var3675!1 var3711)
(declare-const var1359!1 String)
(define-const var2389 var1709 (cast-from-var3711-to-var1709 var3675!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var703_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var559_getSqlFunctionRegistry/18379863=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.dialect.function.SQLFunctionRegistry), findSQLFunction/1942375706=([org.hibernate.dialect.function.SQLFunctionRegistry, java.lang.String], org.hibernate.dialect.function.SQLFunction), var3711-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3711-to-var1709=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2324=org.hibernate.criterion.AggregateProjection, var2311=r11, var530=r2, var1811=null_type, var703=org.hibernate.criterion.CriteriaQuery, var3480=r0, var559=org.hibernate.engine.spi.SessionFactoryImplementor, var629=$r1, var2230=org.hibernate.dialect.function.SQLFunctionRegistry, var2265=$r3, var2977=org.hibernate.dialect.function.SQLFunction, var3412=r4, var3711=org.hibernate.HibernateException, var3675=$r13, var2008=$r12, var3061=$r7, var319=$r8, var1512=$r9, var1359=$r10, var1709=java.lang.Throwable, var2389=$r14}
; {org.hibernate.criterion.AggregateProjection=var2324, r11=var2311, r2=var530, null_type=var1811, org.hibernate.criterion.CriteriaQuery=var703, r0=var3480, org.hibernate.engine.spi.SessionFactoryImplementor=var559, $r1=var629, org.hibernate.dialect.function.SQLFunctionRegistry=var2230, $r3=var2265, org.hibernate.dialect.function.SQLFunction=var2977, r4=var3412, org.hibernate.HibernateException=var3711, $r13=var3675, $r12=var2008, $r7=var3061, $r8=var319, $r9=var1512, $r10=var1359, java.lang.Throwable=var1709, $r14=var2389}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.criterion.AggregateProjection;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r1 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.function.SQLFunctionRegistry getSqlFunctionRegistry()>();	r4 = virtualinvoke $r3.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r2);	if r4 != null goto return r4;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate mapping for function named [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2