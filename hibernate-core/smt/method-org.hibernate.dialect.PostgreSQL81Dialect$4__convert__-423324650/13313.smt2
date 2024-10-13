(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3614 0)
(declare-sort var1698 0)
(declare-sort var785 0)
(declare-sort var51 0)
(declare-sort var1546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var51_extractSqlState/459290286 (var1698) String)
(declare-fun var1546-init () var1546)
(declare-fun <init>/-163256382 (var1546 String var1698 String) void)
(declare-const null-var3614 var3614)
(declare-const null-var1698 var1698)
(declare-const null-String String)
(declare-const var556 var3614) ; Statement: r10 := @this: org.hibernate.dialect.PostgreSQL81Dialect$4 
(assert (not (= var556 null-var3614)))
(declare-const var1203 var1698) ; Statement: r0 := @parameter0: java.sql.SQLException 
(assert (not (= var1203 null-var1698)))
(declare-const var1598 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1598 null-String)))
(declare-const var296 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var296 null-String)))
(define-const var684 String (var51_extractSqlState/459290286 var1203)) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: java.lang.String extractSqlState(java.sql.SQLException)>(r0) 
(define-const var3015 String "40P01") ; Statement: $r2 = "40P01" 
(assert true)
(define-const var1256 Bool (= var3015 var684)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "55P03" 
(assert (not (= (ite var1256 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2885 var1546 var1546-init) ; Statement: $r9 = new org.hibernate.exception.LockAcquisitionException 
(assert true)
;(assert (<init>/-163256382 var2885 var1598 var1203 var296)) ; Statement: specialinvoke $r9.<org.hibernate.exception.LockAcquisitionException: void <init>(java.lang.String,java.sql.SQLException,java.lang.String)>(r6, r0, r7) 

(declare-const var2885!1 var1546)
(declare-const var1598!1 String)
(declare-const var1203!1 var1698)
(declare-const var296!1 String)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var51_extractSqlState/459290286=([java.sql.SQLException], java.lang.String), var1546-init=([], org.hibernate.exception.LockAcquisitionException), <init>/-163256382=([org.hibernate.exception.LockAcquisitionException, java.lang.String, java.sql.SQLException, java.lang.String], void)}
; {var3614=org.hibernate.dialect.PostgreSQL81Dialect$4, var556=r10, var1698=java.sql.SQLException, var1203=r0, var1598=r6, var785=null_type, var296=r7, var51=org.hibernate.internal.util.JdbcExceptionHelper, var684=r1, var3015=$r2, var1256=$z0, var1546=org.hibernate.exception.LockAcquisitionException, var2885=$r9}
; {org.hibernate.dialect.PostgreSQL81Dialect$4=var3614, r10=var556, java.sql.SQLException=var1698, r0=var1203, r6=var1598, null_type=var785, r7=var296, org.hibernate.internal.util.JdbcExceptionHelper=var51, r1=var684, $r2=var3015, $z0=var1256, org.hibernate.exception.LockAcquisitionException=var1546, $r9=var2885}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r10 := @this: org.hibernate.dialect.PostgreSQL81Dialect$4;	r0 := @parameter0: java.sql.SQLException;	r6 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	r1 = staticinvoke <org.hibernate.internal.util.JdbcExceptionHelper: java.lang.String extractSqlState(java.sql.SQLException)>(r0);	$r2 = "40P01";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "55P03";	$r9 = new org.hibernate.exception.LockAcquisitionException;	specialinvoke $r9.<org.hibernate.exception.LockAcquisitionException: void <init>(java.lang.String,java.sql.SQLException,java.lang.String)>(r6, r0, r7);	return $r9
;block_num 2