(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2779-init () var2779)
(declare-fun <init>/-1698960289 (var2779) void)
(declare-fun String-init () String)
(declare-fun afterFrom/1122535774 (var2779) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun afterWhere/1122535774 (var2779) String)
(declare-const null-var2779 var2779)
(declare-const var2509 var2779) ; Statement: r2 := @this: org.hibernate.sql.OracleJoinFragment 
(assert (not (= var2509 null-var2779)))
(define-const var596 var2779 var2779-init) ; Statement: $r0 = new org.hibernate.sql.OracleJoinFragment 
(assert true)
;(assert (<init>/-1698960289 var596)) ; Statement: specialinvoke $r0.<org.hibernate.sql.OracleJoinFragment: void <init>()>() 

(declare-const var596!1 var2779)
(define-const var3688 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var1039 String (afterFrom/1122535774 var2509)) ; Statement: $r3 = r2.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var2000 String (toString/-2075883882 var1039)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var3688 var2000)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var3688!1 String)
(assert (= var3688!1 var2000))
(declare-const var596!2 var2779)
(assert (not (= var596!2 null-var2779)))
(assert (= (afterFrom/1122535774 var596!2) var3688!1)) ; Statement: $r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> = $r1 
(define-const var2729 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(define-const var389 String (afterWhere/1122535774 var2509)) ; Statement: $r6 = r2.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
(define-const var3860 String (toString/-2075883882 var389)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2729 var3860)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r7) 
(declare-const var2729!1 String)
(assert (= var2729!1 var3860))
(declare-const var596!3 var2779)
(assert (not (= var596!3 null-var2779)))
(assert (= (afterWhere/1122535774 var596!3) var2729!1)) ; Statement: $r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere> = $r5 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2779-init=([], org.hibernate.sql.OracleJoinFragment), <init>/-1698960289=([org.hibernate.sql.OracleJoinFragment], void), String-init=([], java.lang.StringBuilder), afterFrom/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), afterWhere/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder)}
; {var2779=org.hibernate.sql.OracleJoinFragment, var2509=r2, var596=$r0, var3688=$r1, var1039=$r3, var2000=$r4, var2729=$r5, var389=$r6, var3860=$r7}
; {org.hibernate.sql.OracleJoinFragment=var2779, r2=var2509, $r0=var596, $r1=var3688, $r3=var1039, $r4=var2000, $r5=var2729, $r6=var389, $r7=var3860}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 2}
;stmts r2 := @this: org.hibernate.sql.OracleJoinFragment;	$r0 = new org.hibernate.sql.OracleJoinFragment;	specialinvoke $r0.<org.hibernate.sql.OracleJoinFragment: void <init>()>();	$r1 = new java.lang.StringBuilder;	$r3 = r2.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	$r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> = $r1;	$r5 = new java.lang.StringBuilder;	$r6 = r2.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r7);	$r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere> = $r5;	return $r0
;block_num 1