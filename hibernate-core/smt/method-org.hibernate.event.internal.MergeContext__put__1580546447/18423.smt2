(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var548 0)
(declare-sort var2361 0)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1226-init () var1226)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2361) ClassObject)
(declare-fun cast-from-var548-to-var2361 (var548) var2361)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var1226 String) void)
(declare-const null-var548 var548)
(declare-const null-var2361 var2361)
(declare-const null-Bool Bool)
(declare-const var3523 var548) ; Statement: r3 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var3523 null-var548)))
(declare-const var3371 var2361) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3371 null-var2361)))
(declare-const var3119 var2361) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var3119 null-var2361)))
(declare-const var2860 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2860 null-Bool)))
 ; Statement: if r0 == null goto $r1 = new java.lang.NullPointerException 
(assert (= var3371 null-var2361)) ; Cond: r0 == null 
(define-const var1611 var1226 var1226-init) ; Statement: $r1 = new java.lang.NullPointerException 
(define-const var3311 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3311)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3311!1 String)
(assert (= var3311!1 ""))
(assert true)
(define-const var2458 String (append/672562846 var3311!1 "null merge and managed entities are not supported by ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null merge and managed entities are not supported by ") 
(declare-const var3311!2 String)
(assert (= var3311!2 (str.++ var3311!1 "null merge and managed entities are not supported by ")))
(assert true)
(define-const var1397 ClassObject (getClass/1258963082 (cast-from-var548-to-var2361 var3523))) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var80 String (getName/-1958580599 var1397)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2209 String (append/672562846 var2458 var80)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2458!1 String)
(assert (= var2458!1 (str.++ var2458 var80)))
(assert true)
(define-const var3441 String (toString/-2075883882 var2209)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var1611 var3441)) ; Statement: specialinvoke $r1.<java.lang.NullPointerException: void <init>(java.lang.String)>($r8) 

(declare-const var1611!1 var1226)
(declare-const var3441!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1226-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var548-to-var2361=([org.hibernate.event.internal.MergeContext], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var548=org.hibernate.event.internal.MergeContext, var3523=r3, var2361=java.lang.Object, var3371=r0, var3119=r9, var2860=z0, var1226=java.lang.NullPointerException, var1611=$r1, var3311=$r2, var2458=$r6, var1397=$r4, var80=$r5, var2209=$r7, var3441=$r8}
; {org.hibernate.event.internal.MergeContext=var548, r3=var3523, java.lang.Object=var2361, r0=var3371, r9=var3119, z0=var2860, java.lang.NullPointerException=var1226, $r1=var1611, $r2=var3311, $r6=var2458, $r4=var1397, $r5=var80, $r7=var2209, $r8=var3441}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	r9 := @parameter1: java.lang.Object;	z0 := @parameter2: boolean;	if r0 == null goto $r1 = new java.lang.NullPointerException;	$r1 = new java.lang.NullPointerException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null merge and managed entities are not supported by ");	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.NullPointerException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2