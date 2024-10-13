(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1972 0)
(declare-sort var3428 0)
(declare-sort var3912 0)
(declare-sort var138 0)
(declare-sort var627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1972!class ClassObject)
(declare-fun jdbcConnection/-217840331 (var1972) var3428)
(declare-fun var3912-init () var3912)
(declare-fun arr-var138-init () (Array Int var138))
(declare-fun cast-from-var3428-to-var138 (var3428) var138)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var138 (String) var138)
(declare-fun String_format/1339386452 (String (Array Int var138)) String)
(declare-fun <init>/1483537917 (var3912 String) void)
(declare-fun cast-from-var3912-to-var627 (var3912) var627)
(declare-const null-var1972 var1972)
(declare-const null-var3428 var3428)
(declare-const null-__Array__Int__var138__ (Array Int var138))
(declare-const var2212 var1972) ; Statement: r1 := @this: org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl 
(assert (not (= var2212 null-var1972)))
(declare-const var1666 var3428) ; Statement: r0 := @parameter0: java.sql.Connection 
(assert (not (= var1666 null-var3428)))
(define-const var3027 var3428 (jdbcConnection/-217840331 var2212)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl: java.sql.Connection jdbcConnection> 
 ; Statement: if r0 == $r2 goto $z0 = r1.<org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl: boolean wasInitiallyAutoCommit> 
(assert (not (= var1666 var3027))) ; Negate: Cond: r0 == $r2  
(define-const var1424 var3912 var3912-init) ; Statement: $r15 = new javax.persistence.PersistenceException 
(define-const var2436 (Array Int var138) arr-var138-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var2436!1 (Array Int var138))
(assert (not (= var2436!1 null-__Array__Int__var138__)))
(assert (= (select var2436!1 0) (cast-from-var3428-to-var138 var1666))) ; Statement: $r6[0] = r0 
(define-const var424 ClassObject var1972!class) ; Statement: $r7 = class "Lorg/hibernate/tool/schema/internal/exec/JdbcConnectionAccessConnectionProviderImpl;" 
(assert true)
(define-const var3295 String (getName/-1958580599 var424)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2436!2 (Array Int var138))
(assert (not (= var2436!2 null-__Array__Int__var138__)))
(assert (= (select var2436!2 1) (cast-from-String-to-var138 var3295))) ; Statement: $r6[1] = $r8 
(define-const var2749 var3428 (jdbcConnection/-217840331 var2212)) ; Statement: $r9 = r1.<org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl: java.sql.Connection jdbcConnection> 
(declare-const var2436!3 (Array Int var138))
(assert (not (= var2436!3 null-__Array__Int__var138__)))
(assert (= (select var2436!3 2) (cast-from-var3428-to-var138 var2749))) ; Statement: $r6[2] = $r9 
(define-const var1639 String (String_format/1339386452 "Connection [%s] passed back to %s was not the one obtained [%s] from it" var2436!3)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Connection [%s] passed back to %s was not the one obtained [%s] from it", $r6) 
(assert true)
;(assert (<init>/1483537917 var1424 var1639)) ; Statement: specialinvoke $r15.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r10) 

(declare-const var1424!1 var3912)
(declare-const var1639!1 String)
(define-const var301 var627 (cast-from-var3912-to-var627 var1424!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {jdbcConnection/-217840331=([org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl], java.sql.Connection), var3912-init=([], javax.persistence.PersistenceException), arr-var138-init=([], java.lang.Object[]), cast-from-var3428-to-var138=([java.sql.Connection], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var138=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1483537917=([javax.persistence.PersistenceException, java.lang.String], void), cast-from-var3912-to-var627=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var1972=org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl, var2212=r1, var3428=java.sql.Connection, var1666=r0, var3027=$r2, var3912=javax.persistence.PersistenceException, var1424=$r15, var138=java.lang.Object, var2436=$r6, var424=$r7, var3295=$r8, var2749=$r9, var1639=$r10, var627=java.lang.Throwable, var301=$r16}
; {org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl=var1972, r1=var2212, java.sql.Connection=var3428, r0=var1666, $r2=var3027, javax.persistence.PersistenceException=var3912, $r15=var1424, java.lang.Object=var138, $r6=var2436, $r7=var424, $r8=var3295, $r9=var2749, $r10=var1639, java.lang.Throwable=var627, $r16=var301}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl;	r0 := @parameter0: java.sql.Connection;	$r2 = r1.<org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl: java.sql.Connection jdbcConnection>;	if r0 == $r2 goto $z0 = r1.<org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl: boolean wasInitiallyAutoCommit>;	$r15 = new javax.persistence.PersistenceException;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = r0;	$r7 = class "Lorg/hibernate/tool/schema/internal/exec/JdbcConnectionAccessConnectionProviderImpl;";	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r6[1] = $r8;	$r9 = r1.<org.hibernate.tool.schema.internal.exec.JdbcConnectionAccessConnectionProviderImpl: java.sql.Connection jdbcConnection>;	$r6[2] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Connection [%s] passed back to %s was not the one obtained [%s] from it", $r6);	specialinvoke $r15.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r10);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2