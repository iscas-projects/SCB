(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1527 0)
(declare-sort var2478 0)
(declare-sort var2134 0)
(declare-sort var302 0)
(declare-sort var128 0)
(declare-sort var648 0)
(declare-sort var3190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCurrentSchemaCommand/2080575983 (var2134) String)
(declare-fun var128-init () var128)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var648) ClassObject)
(declare-fun cast-from-var2134-to-var648 (var2134) var648)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var128 String) void)
(declare-fun cast-from-var128-to-var3190 (var128) var3190)
(declare-const null-var1527 var1527)
(declare-const null-var2478 var2478)
(declare-const null-var2134 var2134)
(declare-const null-String String)
(declare-const var3637 var1527) ; Statement: r17 := @this: org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate 
(assert (not (= var3637 null-var1527)))
(declare-const var2267 var2478) ; Statement: r2 := @parameter0: java.sql.Connection 
(assert (not (= var2267 null-var2478)))
(declare-const var800 var2134) ; Statement: r0 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var800 null-var2134)))
(assert true)
(define-const var231 String (getCurrentSchemaCommand/2080575983 var800)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getCurrentSchemaCommand()>() 
 ; Statement: if r1 != null goto r3 = interfaceinvoke r2.<java.sql.Connection: java.sql.Statement createStatement()>() 
(assert (not (not (= var231 null-String)))) ; Negate: Cond: r1 != null  
(define-const var2504 var128 var128-init) ; Statement: $r22 = new org.hibernate.HibernateException 
(define-const var1495 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1495)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1495!1 String)
(assert (= var1495!1 ""))
(assert true)
(define-const var1351 String (append/672562846 var1495!1 "Use of DefaultSchemaNameResolver requires Dialect to provide the proper SQL statement/command but provided Dialect [")) ; Statement: $r9 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Use of DefaultSchemaNameResolver requires Dialect to provide the proper SQL statement/command but provided Dialect [") 
(declare-const var1495!2 String)
(assert (= var1495!2 (str.++ var1495!1 "Use of DefaultSchemaNameResolver requires Dialect to provide the proper SQL statement/command but provided Dialect [")))
(assert true)
(define-const var2295 ClassObject (getClass/1258963082 (cast-from-var2134-to-var648 var800))) ; Statement: $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1552 String (getName/-1958580599 var2295)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var99 String (append/672562846 var1351 var1552)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1351!1 String)
(assert (= var1351!1 (str.++ var1351 var1552)))
(assert true)
(define-const var1554 String (append/672562846 var99 "] did not return anything from Dialect#getCurrentSchemaCommand")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not return anything from Dialect#getCurrentSchemaCommand") 
(declare-const var99!1 String)
(assert (= var99!1 (str.++ var99 "] did not return anything from Dialect#getCurrentSchemaCommand")))
(assert true)
(define-const var3279 String (toString/-2075883882 var1554)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2504 var3279)) ; Statement: specialinvoke $r22.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var2504!1 var128)
(declare-const var3279!1 String)
(define-const var51 var3190 (cast-from-var128-to-var3190 var2504!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {getCurrentSchemaCommand/2080575983=([org.hibernate.dialect.Dialect], java.lang.String), var128-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2134-to-var648=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var128-to-var3190=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1527=org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate, var3637=r17, var2478=java.sql.Connection, var2267=r2, var2134=org.hibernate.dialect.Dialect, var800=r0, var231=r1, var302=null_type, var128=org.hibernate.HibernateException, var2504=$r22, var1495=$r21, var1351=$r9, var648=java.lang.Object, var2295=$r7, var1552=$r8, var99=$r10, var1554=$r11, var3279=$r12, var3190=java.lang.Throwable, var51=$r23}
; {org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate=var1527, r17=var3637, java.sql.Connection=var2478, r2=var2267, org.hibernate.dialect.Dialect=var2134, r0=var800, r1=var231, null_type=var302, org.hibernate.HibernateException=var128, $r22=var2504, $r21=var1495, $r9=var1351, java.lang.Object=var648, $r7=var2295, $r8=var1552, $r10=var99, $r11=var1554, $r12=var3279, java.lang.Throwable=var3190, $r23=var51}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r17 := @this: org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate;	r2 := @parameter0: java.sql.Connection;	r0 := @parameter1: org.hibernate.dialect.Dialect;	r1 = virtualinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getCurrentSchemaCommand()>();	if r1 != null goto r3 = interfaceinvoke r2.<java.sql.Connection: java.sql.Statement createStatement()>();	$r22 = new org.hibernate.HibernateException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Use of DefaultSchemaNameResolver requires Dialect to provide the proper SQL statement/command but provided Dialect [");	$r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not return anything from Dialect#getCurrentSchemaCommand");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 2