(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var941 0)
(declare-sort var1723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1550914881 (var1723) void)
(declare-fun cast-from-var941-to-var1723 (var941) var1723)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/-1501424381 (var941) String)
(declare-fun conditions/-1501424381 (var941) String)
(declare-const null-var941 var941)
(declare-const var1210 var941) ; Statement: r0 := @this: org.hibernate.sql.ANSIJoinFragment 
(assert (not (= var1210 null-var941)))
(assert true)
;(assert (<init>/1550914881 (cast-from-var941-to-var1723 var1210))) ; Statement: specialinvoke r0.<org.hibernate.sql.JoinFragment: void <init>()>() 

(declare-const var1210!1 var941)
(define-const var659 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var659)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var659!1 String)
(assert (= var659!1 ""))
(declare-const var1210!2 var941)
(assert (not (= var1210!2 null-var941)))
(assert (= (buffer/-1501424381 var1210!2) var659!1)) ; Statement: r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> = $r1 
(define-const var385 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var385)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var385!1 String)
(assert (= var385!1 ""))
(declare-const var1210!3 var941)
(assert (not (= var1210!3 null-var941)))
(assert (= (conditions/-1501424381 var1210!3) var385!1)) ; Statement: r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder conditions> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1550914881=([org.hibernate.sql.JoinFragment], void), cast-from-var941-to-var1723=([org.hibernate.sql.ANSIJoinFragment], org.hibernate.sql.JoinFragment), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/-1501424381=([org.hibernate.sql.ANSIJoinFragment], java.lang.StringBuilder), conditions/-1501424381=([org.hibernate.sql.ANSIJoinFragment], java.lang.StringBuilder)}
; {var941=org.hibernate.sql.ANSIJoinFragment, var1210=r0, var1723=org.hibernate.sql.JoinFragment, var659=$r1, var385=$r2}
; {org.hibernate.sql.ANSIJoinFragment=var941, r0=var1210, org.hibernate.sql.JoinFragment=var1723, $r1=var659, $r2=var385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r0 := @this: org.hibernate.sql.ANSIJoinFragment;	specialinvoke r0.<org.hibernate.sql.JoinFragment: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder conditions> = $r2;	return
;block_num 1