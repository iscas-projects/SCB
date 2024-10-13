(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3875 0)
(declare-sort var2442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1550914881 (var2442) void)
(declare-fun cast-from-var3875-to-var2442 (var3875) var2442)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun afterFrom/-585940105 (var3875) String)
(declare-fun afterWhere/-585940105 (var3875) String)
(declare-const null-var3875 var3875)
(declare-const var1601 var3875) ; Statement: r0 := @this: org.hibernate.sql.Sybase11JoinFragment 
(assert (not (= var1601 null-var3875)))
(assert true)
;(assert (<init>/1550914881 (cast-from-var3875-to-var2442 var1601))) ; Statement: specialinvoke r0.<org.hibernate.sql.JoinFragment: void <init>()>() 

(declare-const var1601!1 var3875)
(define-const var2771 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2771)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2771!1 String)
(assert (= var2771!1 ""))
(declare-const var1601!2 var3875)
(assert (not (= var1601!2 null-var3875)))
(assert (= (afterFrom/-585940105 var1601!2) var2771!1)) ; Statement: r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> = $r1 
(define-const var1504 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1504)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1504!1 String)
(assert (= var1504!1 ""))
(declare-const var1601!3 var3875)
(assert (not (= var1601!3 null-var3875)))
(assert (= (afterWhere/-585940105 var1601!3) var1504!1)) ; Statement: r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1550914881=([org.hibernate.sql.JoinFragment], void), cast-from-var3875-to-var2442=([org.hibernate.sql.Sybase11JoinFragment], org.hibernate.sql.JoinFragment), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), afterFrom/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder), afterWhere/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder)}
; {var3875=org.hibernate.sql.Sybase11JoinFragment, var1601=r0, var2442=org.hibernate.sql.JoinFragment, var2771=$r1, var1504=$r2}
; {org.hibernate.sql.Sybase11JoinFragment=var3875, r0=var1601, org.hibernate.sql.JoinFragment=var2442, $r1=var2771, $r2=var1504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r0 := @this: org.hibernate.sql.Sybase11JoinFragment;	specialinvoke r0.<org.hibernate.sql.JoinFragment: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere> = $r2;	return
;block_num 1