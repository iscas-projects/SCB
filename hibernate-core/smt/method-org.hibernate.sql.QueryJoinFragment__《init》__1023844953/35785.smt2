(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2137 0)
(declare-sort var1070 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1550914881 (var1472) void)
(declare-fun cast-from-var2137-to-var1472 (var2137) var1472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun afterFrom/1032958620 (var2137) String)
(declare-fun afterWhere/1032958620 (var2137) String)
(declare-fun dialect/1032958620 (var2137) var1070)
(declare-fun useThetaStyleInnerJoins/1032958620 (var2137) Bool)
(declare-const null-var2137 var2137)
(declare-const null-var1070 var1070)
(declare-const null-Bool Bool)
(declare-const var1771 var2137) ; Statement: r0 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var1771 null-var2137)))
(declare-const var3578 var1070) ; Statement: r3 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var3578 null-var1070)))
(declare-const var1412 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1412 null-Bool)))
(assert true)
;(assert (<init>/1550914881 (cast-from-var2137-to-var1472 var1771))) ; Statement: specialinvoke r0.<org.hibernate.sql.JoinFragment: void <init>()>() 

(declare-const var1771!1 var2137)
(define-const var931 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var931)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var931!1 String)
(assert (= var931!1 ""))
(declare-const var1771!2 var2137)
(assert (not (= var1771!2 null-var2137)))
(assert (= (afterFrom/1032958620 var1771!2) var931!1)) ; Statement: r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> = $r1 
(define-const var2731 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2731)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2731!1 String)
(assert (= var2731!1 ""))
(declare-const var1771!3 var2137)
(assert (not (= var1771!3 null-var2137)))
(assert (= (afterWhere/1032958620 var1771!3) var2731!1)) ; Statement: r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> = $r2 
(declare-const var1771!4 var2137)
(assert (not (= var1771!4 null-var2137)))
(assert (= (dialect/1032958620 var1771!4) var3578)) ; Statement: r0.<org.hibernate.sql.QueryJoinFragment: org.hibernate.dialect.Dialect dialect> = r3 
(declare-const var1771!5 var2137)
(assert (not (= var1771!5 null-var2137)))
(assert (= (useThetaStyleInnerJoins/1032958620 var1771!5) var1412)) ; Statement: r0.<org.hibernate.sql.QueryJoinFragment: boolean useThetaStyleInnerJoins> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1550914881=([org.hibernate.sql.JoinFragment], void), cast-from-var2137-to-var1472=([org.hibernate.sql.QueryJoinFragment], org.hibernate.sql.JoinFragment), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), afterFrom/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), afterWhere/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), dialect/1032958620=([org.hibernate.sql.QueryJoinFragment], org.hibernate.dialect.Dialect), useThetaStyleInnerJoins/1032958620=([org.hibernate.sql.QueryJoinFragment], boolean)}
; {var2137=org.hibernate.sql.QueryJoinFragment, var1771=r0, var1070=org.hibernate.dialect.Dialect, var3578=r3, var1412=z0, var1472=org.hibernate.sql.JoinFragment, var931=$r1, var2731=$r2}
; {org.hibernate.sql.QueryJoinFragment=var2137, r0=var1771, org.hibernate.dialect.Dialect=var1070, r3=var3578, z0=var1412, org.hibernate.sql.JoinFragment=var1472, $r1=var931, $r2=var2731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r0 := @this: org.hibernate.sql.QueryJoinFragment;	r3 := @parameter0: org.hibernate.dialect.Dialect;	z0 := @parameter1: boolean;	specialinvoke r0.<org.hibernate.sql.JoinFragment: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> = $r2;	r0.<org.hibernate.sql.QueryJoinFragment: org.hibernate.dialect.Dialect dialect> = r3;	r0.<org.hibernate.sql.QueryJoinFragment: boolean useThetaStyleInnerJoins> = z0;	return
;block_num 1