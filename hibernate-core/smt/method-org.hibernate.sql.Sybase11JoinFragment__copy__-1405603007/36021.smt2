(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3694-init () var3694)
(declare-fun <init>/-2100578952 (var3694) void)
(declare-fun String-init () String)
(declare-fun afterFrom/-585940105 (var3694) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun afterWhere/-585940105 (var3694) String)
(declare-const null-var3694 var3694)
(declare-const var2257 var3694) ; Statement: r2 := @this: org.hibernate.sql.Sybase11JoinFragment 
(assert (not (= var2257 null-var3694)))
(define-const var663 var3694 var3694-init) ; Statement: $r0 = new org.hibernate.sql.Sybase11JoinFragment 
(assert true)
;(assert (<init>/-2100578952 var663)) ; Statement: specialinvoke $r0.<org.hibernate.sql.Sybase11JoinFragment: void <init>()>() 

(declare-const var663!1 var3694)
(define-const var2775 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var627 String (afterFrom/-585940105 var2257)) ; Statement: $r3 = r2.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var722 String (toString/-2075883882 var627)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2775 var722)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var2775!1 String)
(assert (= var2775!1 var722))
(declare-const var663!2 var3694)
(assert (not (= var663!2 null-var3694)))
(assert (= (afterFrom/-585940105 var663!2) var2775!1)) ; Statement: $r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> = $r1 
(define-const var2575 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(define-const var1699 String (afterWhere/-585940105 var2257)) ; Statement: $r6 = r2.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
(define-const var1500 String (toString/-2075883882 var1699)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2575 var1500)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r7) 
(declare-const var2575!1 String)
(assert (= var2575!1 var1500))
(declare-const var663!3 var3694)
(assert (not (= var663!3 null-var3694)))
(assert (= (afterWhere/-585940105 var663!3) var2575!1)) ; Statement: $r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere> = $r5 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3694-init=([], org.hibernate.sql.Sybase11JoinFragment), <init>/-2100578952=([org.hibernate.sql.Sybase11JoinFragment], void), String-init=([], java.lang.StringBuilder), afterFrom/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), afterWhere/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder)}
; {var3694=org.hibernate.sql.Sybase11JoinFragment, var2257=r2, var663=$r0, var2775=$r1, var627=$r3, var722=$r4, var2575=$r5, var1699=$r6, var1500=$r7}
; {org.hibernate.sql.Sybase11JoinFragment=var3694, r2=var2257, $r0=var663, $r1=var2775, $r3=var627, $r4=var722, $r5=var2575, $r6=var1699, $r7=var1500}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 2}
;stmts r2 := @this: org.hibernate.sql.Sybase11JoinFragment;	$r0 = new org.hibernate.sql.Sybase11JoinFragment;	specialinvoke $r0.<org.hibernate.sql.Sybase11JoinFragment: void <init>()>();	$r1 = new java.lang.StringBuilder;	$r3 = r2.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	$r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> = $r1;	$r5 = new java.lang.StringBuilder;	$r6 = r2.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r7);	$r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere> = $r5;	return $r0
;block_num 1