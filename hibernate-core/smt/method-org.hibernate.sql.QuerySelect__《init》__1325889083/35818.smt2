(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var772 0)
(declare-sort var3455 0)
(declare-sort var341 0)
(declare-sort var1085 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var341) void)
(declare-fun cast-from-var772-to-var341 (var772) var341)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun select/-1123813506 (var772) String)
(declare-fun where/-1123813506 (var772) String)
(declare-fun groupBy/-1123813506 (var772) String)
(declare-fun orderBy/-1123813506 (var772) String)
(declare-fun having/-1123813506 (var772) String)
(declare-fun dialect/-1123813506 (var772) var3455)
(declare-fun var1085-init () var1085)
(declare-fun <init>/1023844953 (var1085 var3455 Bool) void)
(declare-fun cast-from-var1085-to-var3404 (var1085) var3404)
(declare-fun joins/-1123813506 (var772) var3404)
(declare-const null-var772 var772)
(declare-const null-var3455 var3455)
(declare-const var3039 var772) ; Statement: r0 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var3039 null-var772)))
(declare-const var2785 var3455) ; Statement: r6 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var2785 null-var3455)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var772-to-var341 var3039))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3039!1 var772)
(define-const var3657 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3657)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3657!1 String)
(assert (= var3657!1 ""))
(declare-const var3039!2 var772)
(assert (not (= var3039!2 null-var772)))
(assert (= (select/-1123813506 var3039!2) var3657!1)) ; Statement: r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> = $r1 
(define-const var2258 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2258)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2258!1 String)
(assert (= var2258!1 ""))
(declare-const var3039!3 var772)
(assert (not (= var3039!3 null-var772)))
(assert (= (where/-1123813506 var3039!3) var2258!1)) ; Statement: r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> = $r2 
(define-const var58 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var58)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var58!1 String)
(assert (= var58!1 ""))
(declare-const var3039!4 var772)
(assert (not (= var3039!4 null-var772)))
(assert (= (groupBy/-1123813506 var3039!4) var58!1)) ; Statement: r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> = $r3 
(define-const var1965 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1965)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1965!1 String)
(assert (= var1965!1 ""))
(declare-const var3039!5 var772)
(assert (not (= var3039!5 null-var772)))
(assert (= (orderBy/-1123813506 var3039!5) var1965!1)) ; Statement: r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> = $r4 
(define-const var1124 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1124)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1124!1 String)
(assert (= var1124!1 ""))
(declare-const var3039!6 var772)
(assert (not (= var3039!6 null-var772)))
(assert (= (having/-1123813506 var3039!6) var1124!1)) ; Statement: r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> = $r5 
(declare-const var3039!7 var772)
(assert (not (= var3039!7 null-var772)))
(assert (= (dialect/-1123813506 var3039!7) var2785)) ; Statement: r0.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> = r6 
(define-const var1857 var1085 var1085-init) ; Statement: $r7 = new org.hibernate.sql.QueryJoinFragment 
(assert true)
;(assert (<init>/1023844953 var1857 var2785 (ite (= 1 0) true false))) ; Statement: specialinvoke $r7.<org.hibernate.sql.QueryJoinFragment: void <init>(org.hibernate.dialect.Dialect,boolean)>(r6, 0) 

(declare-const var1857!1 var1085)
(declare-const var2785!1 var3455)
(declare-const var3778 Int)
(declare-const var3039!8 var772)
(assert (not (= var3039!8 null-var772)))
(assert (= (joins/-1123813506 var3039!8) (cast-from-var1085-to-var3404 var1857!1))) ; Statement: r0.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var772-to-var341=([org.hibernate.sql.QuerySelect], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), select/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), groupBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), having/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), dialect/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.dialect.Dialect), var1085-init=([], org.hibernate.sql.QueryJoinFragment), <init>/1023844953=([org.hibernate.sql.QueryJoinFragment, org.hibernate.dialect.Dialect, boolean], void), cast-from-var1085-to-var3404=([org.hibernate.sql.QueryJoinFragment], org.hibernate.sql.JoinFragment), joins/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.sql.JoinFragment)}
; {var772=org.hibernate.sql.QuerySelect, var3039=r0, var3455=org.hibernate.dialect.Dialect, var2785=r6, var341=java.lang.Object, var3657=$r1, var2258=$r2, var58=$r3, var1965=$r4, var1124=$r5, var1085=org.hibernate.sql.QueryJoinFragment, var1857=$r7, var3778=0, var3404=org.hibernate.sql.JoinFragment}
; {org.hibernate.sql.QuerySelect=var772, r0=var3039, org.hibernate.dialect.Dialect=var3455, r6=var2785, java.lang.Object=var341, $r1=var3657, $r2=var2258, $r3=var58, $r4=var1965, $r5=var1124, org.hibernate.sql.QueryJoinFragment=var1085, $r7=var1857, 0=var3778, org.hibernate.sql.JoinFragment=var3404}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5}
;stmts r0 := @this: org.hibernate.sql.QuerySelect;	r6 := @parameter0: org.hibernate.dialect.Dialect;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> = $r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> = $r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> = $r4;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> = $r5;	r0.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> = r6;	$r7 = new org.hibernate.sql.QueryJoinFragment;	specialinvoke $r7.<org.hibernate.sql.QueryJoinFragment: void <init>(org.hibernate.dialect.Dialect,boolean)>(r6, 0);	r0.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> = $r7;	return
;block_num 1