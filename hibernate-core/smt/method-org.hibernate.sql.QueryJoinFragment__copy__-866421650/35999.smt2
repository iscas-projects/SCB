(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var991 0)
(declare-sort var1832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var991-init () var991)
(declare-fun dialect/1032958620 (var991) var1832)
(declare-fun useThetaStyleInnerJoins/1032958620 (var991) Bool)
(declare-fun <init>/1023844953 (var991 var1832 Bool) void)
(declare-fun String-init () String)
(declare-fun afterFrom/1032958620 (var991) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun afterWhere/1032958620 (var991) String)
(declare-const null-var991 var991)
(declare-const var81 var991) ; Statement: r1 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var81 null-var991)))
(define-const var1118 var991 var991-init) ; Statement: $r0 = new org.hibernate.sql.QueryJoinFragment 
(define-const var2396 var1832 (dialect/1032958620 var81)) ; Statement: $r2 = r1.<org.hibernate.sql.QueryJoinFragment: org.hibernate.dialect.Dialect dialect> 
(define-const var1809 Bool (useThetaStyleInnerJoins/1032958620 var81)) ; Statement: $z0 = r1.<org.hibernate.sql.QueryJoinFragment: boolean useThetaStyleInnerJoins> 
(assert true)
;(assert (<init>/1023844953 var1118 var2396 var1809)) ; Statement: specialinvoke $r0.<org.hibernate.sql.QueryJoinFragment: void <init>(org.hibernate.dialect.Dialect,boolean)>($r2, $z0) 

(declare-const var1118!1 var991)
(declare-const var2396!1 var1832)
(declare-const var1809!1 Bool)
(define-const var676 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var3943 String (afterFrom/1032958620 var81)) ; Statement: $r4 = r1.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var2491 String (toString/-2075883882 var3943)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var676 var2491)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var676!1 String)
(assert (= var676!1 var2491))
(declare-const var1118!2 var991)
(assert (not (= var1118!2 null-var991)))
(assert (= (afterFrom/1032958620 var1118!2) var676!1)) ; Statement: $r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> = $r3 
(define-const var1195 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(define-const var2701 String (afterWhere/1032958620 var81)) ; Statement: $r7 = r1.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
(define-const var2485 String (toString/-2075883882 var2701)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var1195 var2485)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(java.lang.String)>($r8) 
(declare-const var1195!1 String)
(assert (= var1195!1 var2485))
(declare-const var1118!3 var991)
(assert (not (= var1118!3 null-var991)))
(assert (= (afterWhere/1032958620 var1118!3) var1195!1)) ; Statement: $r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> = $r6 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var991-init=([], org.hibernate.sql.QueryJoinFragment), dialect/1032958620=([org.hibernate.sql.QueryJoinFragment], org.hibernate.dialect.Dialect), useThetaStyleInnerJoins/1032958620=([org.hibernate.sql.QueryJoinFragment], boolean), <init>/1023844953=([org.hibernate.sql.QueryJoinFragment, org.hibernate.dialect.Dialect, boolean], void), String-init=([], java.lang.StringBuilder), afterFrom/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), afterWhere/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder)}
; {var991=org.hibernate.sql.QueryJoinFragment, var81=r1, var1118=$r0, var1832=org.hibernate.dialect.Dialect, var2396=$r2, var1809=$z0, var676=$r3, var3943=$r4, var2491=$r5, var1195=$r6, var2701=$r7, var2485=$r8}
; {org.hibernate.sql.QueryJoinFragment=var991, r1=var81, $r0=var1118, org.hibernate.dialect.Dialect=var1832, $r2=var2396, $z0=var1809, $r3=var676, $r4=var3943, $r5=var2491, $r6=var1195, $r7=var2701, $r8=var2485}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 2}
;stmts r1 := @this: org.hibernate.sql.QueryJoinFragment;	$r0 = new org.hibernate.sql.QueryJoinFragment;	$r2 = r1.<org.hibernate.sql.QueryJoinFragment: org.hibernate.dialect.Dialect dialect>;	$z0 = r1.<org.hibernate.sql.QueryJoinFragment: boolean useThetaStyleInnerJoins>;	specialinvoke $r0.<org.hibernate.sql.QueryJoinFragment: void <init>(org.hibernate.dialect.Dialect,boolean)>($r2, $z0);	$r3 = new java.lang.StringBuilder;	$r4 = r1.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> = $r3;	$r6 = new java.lang.StringBuilder;	$r7 = r1.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.StringBuilder: void <init>(java.lang.String)>($r8);	$r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> = $r6;	return $r0
;block_num 1