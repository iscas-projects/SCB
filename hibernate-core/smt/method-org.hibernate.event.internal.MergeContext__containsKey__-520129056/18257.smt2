(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1149 0)
(declare-sort var3856 0)
(declare-sort var1402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1402-init () var1402)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3856) ClassObject)
(declare-fun cast-from-var1149-to-var3856 (var1149) var3856)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var1402 String) void)
(declare-const null-var1149 var1149)
(declare-const null-var3856 var3856)
(declare-const var3379 var1149) ; Statement: r1 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var3379 null-var1149)))
(declare-const var75 var3856) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var75 null-var3856)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref> 
(assert (not (not (= var75 null-var3856)))) ; Negate: Cond: r0 != null  
(define-const var2023 var1402 var1402-init) ; Statement: $r3 = new java.lang.NullPointerException 
(define-const var969 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var969)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var969!1 String)
(assert (= var969!1 ""))
(assert true)
(define-const var1027 String (append/672562846 var969!1 "null entities are not supported by ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null entities are not supported by ") 
(declare-const var969!2 String)
(assert (= var969!2 (str.++ var969!1 "null entities are not supported by ")))
(assert true)
(define-const var3827 ClassObject (getClass/1258963082 (cast-from-var1149-to-var3856 var3379))) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2098 String (getName/-1958580599 var3827)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3330 String (append/672562846 var1027 var2098)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1027!1 String)
(assert (= var1027!1 (str.++ var1027 var2098)))
(assert true)
(define-const var227 String (toString/-2075883882 var3330)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var2023 var227)) ; Statement: specialinvoke $r3.<java.lang.NullPointerException: void <init>(java.lang.String)>($r9) 

(declare-const var2023!1 var1402)
(declare-const var227!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1402-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1149-to-var3856=([org.hibernate.event.internal.MergeContext], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var1149=org.hibernate.event.internal.MergeContext, var3379=r1, var3856=java.lang.Object, var75=r0, var1402=java.lang.NullPointerException, var2023=$r3, var969=$r4, var1027=$r7, var3827=$r5, var2098=$r6, var3330=$r8, var227=$r9}
; {org.hibernate.event.internal.MergeContext=var1149, r1=var3379, java.lang.Object=var3856, r0=var75, java.lang.NullPointerException=var1402, $r3=var2023, $r4=var969, $r7=var1027, $r5=var3827, $r6=var2098, $r8=var3330, $r9=var227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref>;	$r3 = new java.lang.NullPointerException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null entities are not supported by ");	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.NullPointerException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2