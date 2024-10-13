(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3831 0)
(declare-sort var365 0)
(declare-sort var509 0)
(declare-sort var3514 0)
(declare-sort var3949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3514_extractSqlState/459290286 (var365) String)
(declare-fun var3949-init () var3949)
(declare-fun <init>/-163256382 (var3949 String var365 String) void)
(declare-const null-var3831 var3831)
(declare-const null-var365 var365)
(declare-const null-String String)
(declare-const var1301 var3831) ; Statement: r8 := @this: org.hibernate.dialect.CockroachDB192Dialect$3 
(assert (not (= var1301 null-var3831)))
(declare-const var2452 var365) ; Statement: r0 := @parameter0: java.sql.SQLException 
(assert (not (= var2452 null-var365)))
(declare-const var1010 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1010 null-String)))
(declare-const var264 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var264 null-String)))
(define-const var2200 String (var3514_extractSqlState/459290286 var2452)) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: java.lang.String extractSqlState(java.sql.SQLException)>(r0) 
(define-const var1846 String "40P01") ; Statement: $r2 = "40P01" 
(assert true)
(define-const var1008 Bool (= var1846 var2200)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "55P03" 
(assert (not (= (ite var1008 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1244 var3949 var3949-init) ; Statement: $r7 = new org.hibernate.exception.LockAcquisitionException 
(assert true)
;(assert (<init>/-163256382 var1244 var1010 var2452 var264)) ; Statement: specialinvoke $r7.<org.hibernate.exception.LockAcquisitionException: void <init>(java.lang.String,java.sql.SQLException,java.lang.String)>(r5, r0, r6) 

(declare-const var1244!1 var3949)
(declare-const var1010!1 String)
(declare-const var2452!1 var365)
(declare-const var264!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3514_extractSqlState/459290286=([java.sql.SQLException], java.lang.String), var3949-init=([], org.hibernate.exception.LockAcquisitionException), <init>/-163256382=([org.hibernate.exception.LockAcquisitionException, java.lang.String, java.sql.SQLException, java.lang.String], void)}
; {var3831=org.hibernate.dialect.CockroachDB192Dialect$3, var1301=r8, var365=java.sql.SQLException, var2452=r0, var1010=r5, var509=null_type, var264=r6, var3514=org.hibernate.internal.util.JdbcExceptionHelper, var2200=r1, var1846=$r2, var1008=$z0, var3949=org.hibernate.exception.LockAcquisitionException, var1244=$r7}
; {org.hibernate.dialect.CockroachDB192Dialect$3=var3831, r8=var1301, java.sql.SQLException=var365, r0=var2452, r5=var1010, null_type=var509, r6=var264, org.hibernate.internal.util.JdbcExceptionHelper=var3514, r1=var2200, $r2=var1846, $z0=var1008, org.hibernate.exception.LockAcquisitionException=var3949, $r7=var1244}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.hibernate.dialect.CockroachDB192Dialect$3;	r0 := @parameter0: java.sql.SQLException;	r5 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r1 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: java.lang.String extractSqlState(java.sql.SQLException)>(r0);	$r2 = "40P01";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "55P03";	$r7 = new org.hibernate.exception.LockAcquisitionException;	specialinvoke $r7.<org.hibernate.exception.LockAcquisitionException: void <init>(java.lang.String,java.sql.SQLException,java.lang.String)>(r5, r0, r6);	return $r7
;block_num 2