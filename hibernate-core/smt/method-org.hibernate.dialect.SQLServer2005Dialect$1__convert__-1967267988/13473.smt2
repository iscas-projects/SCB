(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2493 0)
(declare-sort var3818 0)
(declare-sort var1644 0)
(declare-sort var3278 0)
(declare-sort var2372 0)
(declare-sort var762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3278_extractSqlState/459290286 (var3818) String)
(declare-fun var3278_extractErrorCode/-100989814 (var3818) Int)
(declare-fun var2372-init () var2372)
(declare-fun <init>/17758652 (var2372 String var3818 String) void)
(declare-fun cast-from-var2372-to-var762 (var2372) var762)
(declare-const null-var2493 var2493)
(declare-const null-var3818 var3818)
(declare-const null-String String)
(declare-const var2539 var2493) ; Statement: r7 := @this: org.hibernate.dialect.SQLServer2005Dialect$1 
(assert (not (= var2539 null-var2493)))
(declare-const var3047 var3818) ; Statement: r0 := @parameter0: java.sql.SQLException 
(assert (not (= var3047 null-var3818)))
(declare-const var3521 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3521 null-String)))
(declare-const var1569 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1569 null-String)))
(define-const var1601 String (var3278_extractSqlState/459290286 var3047)) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: java.lang.String extractSqlState(java.sql.SQLException)>(r0) 
(define-const var3367 Int (var3278_extractErrorCode/-100989814 var3047)) ; Statement: i0 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: int extractErrorCode(java.sql.SQLException)>(r0) 
(define-const var2604 String "HY008") ; Statement: $r2 = "HY008" 
(assert true)
(define-const var1443 Bool (= var2604 var1601)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var1443 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3797 var2372 var2372-init) ; Statement: $r8 = new org.hibernate.QueryTimeoutException 
(assert true)
;(assert (<init>/17758652 var3797 var3521 var3047 var1569)) ; Statement: specialinvoke $r8.<org.hibernate.QueryTimeoutException: void <init>(java.lang.String,java.sql.SQLException,java.lang.String)>(r4, r0, r5) 

(declare-const var3797!1 var2372)
(declare-const var3521!1 String)
(declare-const var3047!1 var3818)
(declare-const var1569!1 String)
(define-const var3205 var762 (cast-from-var2372-to-var762 var3797!1)) ; Statement: $r10 = (java.lang.Throwable) $r8 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3278_extractSqlState/459290286=([java.sql.SQLException], java.lang.String), var3278_extractErrorCode/-100989814=([java.sql.SQLException], int), var2372-init=([], org.hibernate.QueryTimeoutException), <init>/17758652=([org.hibernate.QueryTimeoutException, java.lang.String, java.sql.SQLException, java.lang.String], void), cast-from-var2372-to-var762=([org.hibernate.QueryTimeoutException], java.lang.Throwable)}
; {var2493=org.hibernate.dialect.SQLServer2005Dialect$1, var2539=r7, var3818=java.sql.SQLException, var3047=r0, var3521=r4, var1644=null_type, var1569=r5, var3278=org.hibernate.internal.util.JdbcExceptionHelper, var1601=r1, var3367=i0, var2604=$r2, var1443=$z0, var2372=org.hibernate.QueryTimeoutException, var3797=$r8, var762=java.lang.Throwable, var3205=$r10}
; {org.hibernate.dialect.SQLServer2005Dialect$1=var2493, r7=var2539, java.sql.SQLException=var3818, r0=var3047, r4=var3521, null_type=var1644, r5=var1569, org.hibernate.internal.util.JdbcExceptionHelper=var3278, r1=var1601, i0=var3367, $r2=var2604, $z0=var1443, org.hibernate.QueryTimeoutException=var2372, $r8=var3797, java.lang.Throwable=var762, $r10=var3205}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: org.hibernate.dialect.SQLServer2005Dialect$1;	r0 := @parameter0: java.sql.SQLException;	r4 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	r1 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: java.lang.String extractSqlState(java.sql.SQLException)>(r0);	i0 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: int extractErrorCode(java.sql.SQLException)>(r0);	$r2 = "HY008";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto (branch);	$r8 = new org.hibernate.QueryTimeoutException;	specialinvoke $r8.<org.hibernate.QueryTimeoutException: void <init>(java.lang.String,java.sql.SQLException,java.lang.String)>(r4, r0, r5);	$r10 = (java.lang.Throwable) $r8;	throw $r10
;block_num 2