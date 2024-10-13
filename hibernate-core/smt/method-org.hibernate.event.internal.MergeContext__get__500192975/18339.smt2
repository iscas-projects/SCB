(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2503 0)
(declare-sort var230 0)
(declare-sort var2307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2307-init () var2307)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var230) ClassObject)
(declare-fun cast-from-var2503-to-var230 (var2503) var230)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var2307 String) void)
(declare-const null-var2503 var2503)
(declare-const null-var230 var230)
(declare-const var90 var2503) ; Statement: r1 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var90 null-var2503)))
(declare-const var1234 var230) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1234 null-var230)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref> 
(assert (not (not (= var1234 null-var230)))) ; Negate: Cond: r0 != null  
(define-const var3594 var2307 var2307-init) ; Statement: $r4 = new java.lang.NullPointerException 
(define-const var3790 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3790)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3790!1 String)
(assert (= var3790!1 ""))
(assert true)
(define-const var2718 String (append/672562846 var3790!1 "null entities are not supported by ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null entities are not supported by ") 
(declare-const var3790!2 String)
(assert (= var3790!2 (str.++ var3790!1 "null entities are not supported by ")))
(assert true)
(define-const var177 ClassObject (getClass/1258963082 (cast-from-var2503-to-var230 var90))) ; Statement: $r6 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3932 String (getName/-1958580599 var177)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1834 String (append/672562846 var2718 var3932)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2718!1 String)
(assert (= var2718!1 (str.++ var2718 var3932)))
(assert true)
(define-const var408 String (toString/-2075883882 var1834)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var3594 var408)) ; Statement: specialinvoke $r4.<java.lang.NullPointerException: void <init>(java.lang.String)>($r10) 

(declare-const var3594!1 var2307)
(declare-const var408!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2307-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2503-to-var230=([org.hibernate.event.internal.MergeContext], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var2503=org.hibernate.event.internal.MergeContext, var90=r1, var230=java.lang.Object, var1234=r0, var2307=java.lang.NullPointerException, var3594=$r4, var3790=$r5, var2718=$r8, var177=$r6, var3932=$r7, var1834=$r9, var408=$r10}
; {org.hibernate.event.internal.MergeContext=var2503, r1=var90, java.lang.Object=var230, r0=var1234, java.lang.NullPointerException=var2307, $r4=var3594, $r5=var3790, $r8=var2718, $r6=var177, $r7=var3932, $r9=var1834, $r10=var408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref>;	$r4 = new java.lang.NullPointerException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null entities are not supported by ");	$r6 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.NullPointerException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 2