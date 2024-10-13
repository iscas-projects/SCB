(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2088 0)
(declare-sort var1907 0)
(declare-sort var2071 0)
(declare-sort var3660 0)
(declare-sort var3073 0)
(declare-sort var1836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3660_extractSqlState/459290286 (var1907) String)
(declare-fun var3660_extractErrorCode/-100989814 (var1907) Int)
(declare-fun var3073-init () var3073)
(declare-fun <init>/1734072214 (var3073 String var1907 String) void)
(declare-fun cast-from-var3073-to-var1836 (var3073) var1836)
(declare-const null-var2088 var2088)
(declare-const null-var1907 var1907)
(declare-const null-String String)
(declare-const var2146 var2088) ; Statement: r8 := @this: org.hibernate.dialect.SybaseASE157Dialect$1 
(assert (not (= var2146 null-var2088)))
(declare-const var3580 var1907) ; Statement: r0 := @parameter0: java.sql.SQLException 
(assert (not (= var3580 null-var1907)))
(declare-const var1615 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1615 null-String)))
(declare-const var3848 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var3848 null-String)))
(define-const var804 String (var3660_extractSqlState/459290286 var3580)) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: java.lang.String extractSqlState(java.sql.SQLException)>(r0) 
(define-const var1485 Int (var3660_extractErrorCode/-100989814 var3580)) ; Statement: i0 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: int extractErrorCode(java.sql.SQLException)>(r0) 
(define-const var2032 String "JZ0TO") ; Statement: $r2 = "JZ0TO" 
(assert true)
(define-const var3857 Bool (= var2032 var804)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r13 = new org.hibernate.exception.LockTimeoutException 
(assert (not (= (ite var3857 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2162 var3073 var3073-init) ; Statement: $r13 = new org.hibernate.exception.LockTimeoutException 
(assert true)
;(assert (<init>/1734072214 var2162 var1615 var3580 var3848)) ; Statement: specialinvoke $r13.<org.hibernate.exception.LockTimeoutException: void <init>(java.lang.String,java.sql.SQLException,java.lang.String)>(r4, r0, r5) 

(declare-const var2162!1 var3073)
(declare-const var1615!1 String)
(declare-const var3580!1 var1907)
(declare-const var3848!1 String)
(define-const var3692 var1836 (cast-from-var3073-to-var1836 var2162!1)) ; Statement: $r15 = (java.lang.Throwable) $r13 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3660_extractSqlState/459290286=([java.sql.SQLException], java.lang.String), var3660_extractErrorCode/-100989814=([java.sql.SQLException], int), var3073-init=([], org.hibernate.exception.LockTimeoutException), <init>/1734072214=([org.hibernate.exception.LockTimeoutException, java.lang.String, java.sql.SQLException, java.lang.String], void), cast-from-var3073-to-var1836=([org.hibernate.exception.LockTimeoutException], java.lang.Throwable)}
; {var2088=org.hibernate.dialect.SybaseASE157Dialect$1, var2146=r8, var1907=java.sql.SQLException, var3580=r0, var1615=r4, var2071=null_type, var3848=r5, var3660=org.hibernate.internal.util.JdbcExceptionHelper, var804=r1, var1485=i0, var2032=$r2, var3857=$z0, var3073=org.hibernate.exception.LockTimeoutException, var2162=$r13, var1836=java.lang.Throwable, var3692=$r15}
; {org.hibernate.dialect.SybaseASE157Dialect$1=var2088, r8=var2146, java.sql.SQLException=var1907, r0=var3580, r4=var1615, null_type=var2071, r5=var3848, org.hibernate.internal.util.JdbcExceptionHelper=var3660, r1=var804, i0=var1485, $r2=var2032, $z0=var3857, org.hibernate.exception.LockTimeoutException=var3073, $r13=var2162, java.lang.Throwable=var1836, $r15=var3692}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.hibernate.dialect.SybaseASE157Dialect$1;	r0 := @parameter0: java.sql.SQLException;	r4 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	r1 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: java.lang.String extractSqlState(java.sql.SQLException)>(r0);	i0 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: int extractErrorCode(java.sql.SQLException)>(r0);	$r2 = "JZ0TO";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $r13 = new org.hibernate.exception.LockTimeoutException;	$r13 = new org.hibernate.exception.LockTimeoutException;	specialinvoke $r13.<org.hibernate.exception.LockTimeoutException: void <init>(java.lang.String,java.sql.SQLException,java.lang.String)>(r4, r0, r5);	$r15 = (java.lang.Throwable) $r13;	throw $r15
;block_num 2