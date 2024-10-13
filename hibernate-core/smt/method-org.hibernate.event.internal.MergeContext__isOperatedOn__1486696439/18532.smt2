(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3212 0)
(declare-sort var894 0)
(declare-sort var3375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3375-init () var3375)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var894) ClassObject)
(declare-fun cast-from-var3212-to-var894 (var3212) var894)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var3375 String) void)
(declare-const null-var3212 var3212)
(declare-const null-var894 var894)
(declare-const var1930 var3212) ; Statement: r1 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var1930 null-var3212)))
(declare-const var3814 var894) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3814 null-var894)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeEntityToOperatedOnFlagMap> 
(assert (not (not (= var3814 null-var894)))) ; Negate: Cond: r0 != null  
(define-const var109 var3375 var3375-init) ; Statement: $r5 = new java.lang.NullPointerException 
(define-const var3053 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3053)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3053!1 String)
(assert (= var3053!1 ""))
(assert true)
(define-const var1931 String (append/672562846 var3053!1 "null merge entities are not supported by ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null merge entities are not supported by ") 
(declare-const var3053!2 String)
(assert (= var3053!2 (str.++ var3053!1 "null merge entities are not supported by ")))
(assert true)
(define-const var336 ClassObject (getClass/1258963082 (cast-from-var3212-to-var894 var1930))) ; Statement: $r7 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var303 String (getName/-1958580599 var336)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1821 String (append/672562846 var1931 var303)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1931!1 String)
(assert (= var1931!1 (str.++ var1931 var303)))
(assert true)
(define-const var721 String (toString/-2075883882 var1821)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var109 var721)) ; Statement: specialinvoke $r5.<java.lang.NullPointerException: void <init>(java.lang.String)>($r11) 

(declare-const var109!1 var3375)
(declare-const var721!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3375-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3212-to-var894=([org.hibernate.event.internal.MergeContext], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var3212=org.hibernate.event.internal.MergeContext, var1930=r1, var894=java.lang.Object, var3814=r0, var3375=java.lang.NullPointerException, var109=$r5, var3053=$r6, var1931=$r9, var336=$r7, var303=$r8, var1821=$r10, var721=$r11}
; {org.hibernate.event.internal.MergeContext=var3212, r1=var1930, java.lang.Object=var894, r0=var3814, java.lang.NullPointerException=var3375, $r5=var109, $r6=var3053, $r9=var1931, $r7=var336, $r8=var303, $r10=var1821, $r11=var721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeEntityToOperatedOnFlagMap>;	$r5 = new java.lang.NullPointerException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null merge entities are not supported by ");	$r7 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.NullPointerException: void <init>(java.lang.String)>($r11);	throw $r5
;block_num 2