(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2567 0)
(declare-sort var3740 0)
(declare-sort var284 0)
(declare-sort var3340 0)
(declare-sort var37 0)
(declare-sort var3707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nots/258954410 (var2567) var3340)
(declare-fun addLast/1864600108 (var3340 var3707) void)
(declare-fun cast-from-var37-to-var3707 (var37) var3707)
(declare-fun booleanTests/258954410 (var2567) var3340)
(declare-fun joins/258954410 (var2567) var3340)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-String-to-var3707 (String) var3707)
(declare-const null-var2567 var2567)
(declare-const null-var3740 var3740)
(declare-const null-String String)
(declare-const var37-FALSE var37)
(declare-const var3818 var2567) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var3818 null-var2567)))
(declare-const var3414 var3740) ; Statement: r9 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3414 null-var3740)))
(declare-const var614 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var614 null-String)))
(define-const var72 var3340 (nots/258954410 var3818)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList nots> 
(define-const var1241 var37 var37-FALSE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean FALSE> 
(assert true)
;(assert (addLast/1864600108 var72 (cast-from-var37-to-var3707 var1241))) ; Statement: virtualinvoke $r2.<java.util.LinkedList: void addLast(java.lang.Object)>($r1) 

(declare-const var72!1 var3340)
(declare-const var1241!1 var37)
(define-const var2173 var3340 (booleanTests/258954410 var3818)) ; Statement: $r4 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList booleanTests> 
(define-const var548 var37 var37-FALSE) ; Statement: $r3 = <java.lang.Boolean: java.lang.Boolean FALSE> 
(assert true)
;(assert (addLast/1864600108 var2173 (cast-from-var37-to-var3707 var548))) ; Statement: virtualinvoke $r4.<java.util.LinkedList: void addLast(java.lang.Object)>($r3) 

(declare-const var2173!1 var3340)
(declare-const var548!1 var37)
(define-const var2565 var3340 (joins/258954410 var3818)) ; Statement: $r6 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins> 
(define-const var3591 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3591)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3591!1 String)
(assert (= var3591!1 ""))
(assert true)
;(assert (addLast/1864600108 var2565 (cast-from-String-to-var3707 var3591!1))) ; Statement: virtualinvoke $r6.<java.util.LinkedList: void addLast(java.lang.Object)>($r5) 

(declare-const var2565!1 var3340)
(declare-const var3591!2 String)
(define-const var2712 String "(") ; Statement: $r8 = "(" 
(assert true)
(define-const var1852 Bool (= var2712 var614)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1852 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {nots/258954410=([org.hibernate.hql.internal.classic.WhereParser], java.util.LinkedList), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-var37-to-var3707=([java.lang.Boolean], java.lang.Object), booleanTests/258954410=([org.hibernate.hql.internal.classic.WhereParser], java.util.LinkedList), joins/258954410=([org.hibernate.hql.internal.classic.WhereParser], java.util.LinkedList), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-String-to-var3707=([java.lang.StringBuilder], java.lang.Object)}
; {var2567=org.hibernate.hql.internal.classic.WhereParser, var3818=r0, var3740=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3414=r9, var614=r7, var284=null_type, var3340=java.util.LinkedList, var72=$r2, var37=java.lang.Boolean, var1241=$r1, var3707=java.lang.Object, var2173=$r4, var548=$r3, var2565=$r6, var3591=$r5, var2712=$r8, var1852=$z0}
; {org.hibernate.hql.internal.classic.WhereParser=var2567, r0=var3818, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var3740, r9=var3414, r7=var614, null_type=var284, java.util.LinkedList=var3340, $r2=var72, java.lang.Boolean=var37, $r1=var1241, java.lang.Object=var3707, $r4=var2173, $r3=var548, $r6=var2565, $r5=var3591, $r8=var2712, $z0=var1852}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.WhereParser;	r9 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r7 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList nots>;	$r1 = <java.lang.Boolean: java.lang.Boolean FALSE>;	virtualinvoke $r2.<java.util.LinkedList: void addLast(java.lang.Object)>($r1);	$r4 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList booleanTests>;	$r3 = <java.lang.Boolean: java.lang.Boolean FALSE>;	virtualinvoke $r4.<java.util.LinkedList: void addLast(java.lang.Object)>($r3);	$r6 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r6.<java.util.LinkedList: void addLast(java.lang.Object)>($r5);	$r8 = "(";	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 != 0 goto return;	return
;block_num 2