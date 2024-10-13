(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1921 0)
(declare-sort var3610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1550914881 (var3610) void)
(declare-fun cast-from-var1921-to-var3610 (var1921) var3610)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun afterFrom/1122535774 (var1921) String)
(declare-fun afterWhere/1122535774 (var1921) String)
(declare-const null-var1921 var1921)
(declare-const var1826 var1921) ; Statement: r0 := @this: org.hibernate.sql.OracleJoinFragment 
(assert (not (= var1826 null-var1921)))
(assert true)
;(assert (<init>/1550914881 (cast-from-var1921-to-var3610 var1826))) ; Statement: specialinvoke r0.<org.hibernate.sql.JoinFragment: void <init>()>() 

(declare-const var1826!1 var1921)
(define-const var3465 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3465)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3465!1 String)
(assert (= var3465!1 ""))
(declare-const var1826!2 var1921)
(assert (not (= var1826!2 null-var1921)))
(assert (= (afterFrom/1122535774 var1826!2) var3465!1)) ; Statement: r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> = $r1 
(define-const var3216 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3216)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3216!1 String)
(assert (= var3216!1 ""))
(declare-const var1826!3 var1921)
(assert (not (= var1826!3 null-var1921)))
(assert (= (afterWhere/1122535774 var1826!3) var3216!1)) ; Statement: r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1550914881=([org.hibernate.sql.JoinFragment], void), cast-from-var1921-to-var3610=([org.hibernate.sql.OracleJoinFragment], org.hibernate.sql.JoinFragment), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), afterFrom/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder), afterWhere/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder)}
; {var1921=org.hibernate.sql.OracleJoinFragment, var1826=r0, var3610=org.hibernate.sql.JoinFragment, var3465=$r1, var3216=$r2}
; {org.hibernate.sql.OracleJoinFragment=var1921, r0=var1826, org.hibernate.sql.JoinFragment=var3610, $r1=var3465, $r2=var3216}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r0 := @this: org.hibernate.sql.OracleJoinFragment;	specialinvoke r0.<org.hibernate.sql.JoinFragment: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere> = $r2;	return
;block_num 1