(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var550 0)
(declare-sort var97 0)
(declare-sort var3557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3557-init () var3557)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var97) ClassObject)
(declare-fun cast-from-var550-to-var97 (var550) var97)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var3557 String) void)
(declare-const null-var550 var550)
(declare-const null-var97 var97)
(declare-const null-Bool Bool)
(declare-const var2406 var550) ; Statement: r1 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var2406 null-var550)))
(declare-const var1113 var97) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1113 null-var97)))
(declare-const var1446 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var1446 null-Bool)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeEntityToOperatedOnFlagMap> 
(assert (not (not (= var1113 null-var97)))) ; Negate: Cond: r0 != null  
(define-const var3392 var3557 var3557-init) ; Statement: $r7 = new java.lang.NullPointerException 
(define-const var1564 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1564)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1564!1 String)
(assert (= var1564!1 ""))
(assert true)
(define-const var306 String (append/672562846 var1564!1 "null entities are not supported by ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null entities are not supported by ") 
(declare-const var1564!2 String)
(assert (= var1564!2 (str.++ var1564!1 "null entities are not supported by ")))
(assert true)
(define-const var942 ClassObject (getClass/1258963082 (cast-from-var550-to-var97 var2406))) ; Statement: $r9 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var423 String (getName/-1958580599 var942)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1442 String (append/672562846 var306 var423)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var306!1 String)
(assert (= var306!1 (str.++ var306 var423)))
(assert true)
(define-const var3034 String (toString/-2075883882 var1442)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var3392 var3034)) ; Statement: specialinvoke $r7.<java.lang.NullPointerException: void <init>(java.lang.String)>($r13) 

(declare-const var3392!1 var3557)
(declare-const var3034!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3557-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var550-to-var97=([org.hibernate.event.internal.MergeContext], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var550=org.hibernate.event.internal.MergeContext, var2406=r1, var97=java.lang.Object, var1113=r0, var1446=z2, var3557=java.lang.NullPointerException, var3392=$r7, var1564=$r8, var306=$r11, var942=$r9, var423=$r10, var1442=$r12, var3034=$r13}
; {org.hibernate.event.internal.MergeContext=var550, r1=var2406, java.lang.Object=var97, r0=var1113, z2=var1446, java.lang.NullPointerException=var3557, $r7=var3392, $r8=var1564, $r11=var306, $r9=var942, $r10=var423, $r12=var1442, $r13=var3034}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	z2 := @parameter1: boolean;	if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeEntityToOperatedOnFlagMap>;	$r7 = new java.lang.NullPointerException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null entities are not supported by ");	$r9 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.NullPointerException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 2