(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2422 0)
(declare-sort var2835 0)
(declare-sort var483 0)
(declare-sort var3219 0)
(declare-sort var2161 0)
(declare-sort var1234 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chain/-741527718 (var2422) (Array Int var483))
(declare-fun getLength-Arr-var483-1 ((Array Int var483)) Int)
(declare-fun var3219-init () var3219)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2161) String)
(declare-fun cast-from-ClassObject-to-var2161 (ClassObject) var2161)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/928068787 (var3219 String) void)
(declare-fun cast-from-var3219-to-var1234 (var3219) var1234)
(declare-const null-var2422 var2422)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var1600 var2422) ; Statement: r0 := @this: org.hibernate.property.access.internal.PropertyAccessStrategyChainedImpl 
(assert (not (= var1600 null-var2422)))
(declare-const var3010 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3010 null-ClassObject)))
(declare-const var2889 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2889 null-String)))
(define-const var800 (Array Int var483) (chain/-741527718 var1600)) ; Statement: r1 = r0.<org.hibernate.property.access.internal.PropertyAccessStrategyChainedImpl: org.hibernate.property.access.spi.PropertyAccessStrategy[] chain> 
(define-const var2541 Int (getLength-Arr-var483-1 var800)) ; Statement: i0 = lengthof r1 
(define-const var1689 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r15 = new org.hibernate.PropertyNotFoundException 
(assert (>= var1689 var2541)) ; Cond: i1 >= i0 
(define-const var3592 var3219 var3219-init) ; Statement: $r15 = new org.hibernate.PropertyNotFoundException 
(define-const var418 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var418)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var418!1 String)
(assert (= var418!1 ""))
(assert true)
(define-const var2993 String (append/672562846 var418!1 "Could not resolve PropertyAccess for ")) ; Statement: $r5 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve PropertyAccess for ") 
(declare-const var418!2 String)
(assert (= var418!2 (str.++ var418!1 "Could not resolve PropertyAccess for ")))
(assert true)
(define-const var2976 String (append/672562846 var2993 var2889)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2993!1 String)
(assert (= var2993!1 (str.++ var2993 var2889)))
(assert true)
(define-const var1775 String (append/672562846 var2976 " on ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var2976!1 String)
(assert (= var2976!1 (str.++ var2976 " on ")))
(assert true)
(define-const var3435 String (append/-1031950772 var1775 (cast-from-ClassObject-to-var2161 var3010))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1775!1 String)
(assert (str.prefixof var1775 var1775!1))
(assert true)
(define-const var912 String (toString/-2075883882 var3435)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/928068787 var3592 var912)) ; Statement: specialinvoke $r15.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r10) 

(declare-const var3592!1 var3219)
(declare-const var912!1 String)
(define-const var3972 var1234 (cast-from-var3219-to-var1234 var3592!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {chain/-741527718=([org.hibernate.property.access.internal.PropertyAccessStrategyChainedImpl], org.hibernate.property.access.spi.PropertyAccessStrategy[]), getLength-Arr-var483-1=([org.hibernate.property.access.spi.PropertyAccessStrategy[]], int), var3219-init=([], org.hibernate.PropertyNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2161=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/928068787=([org.hibernate.PropertyNotFoundException, java.lang.String], void), cast-from-var3219-to-var1234=([org.hibernate.PropertyNotFoundException], java.lang.Throwable)}
; {var2422=org.hibernate.property.access.internal.PropertyAccessStrategyChainedImpl, var1600=r0, var3010=r7, var2889=r4, var2835=null_type, var483=org.hibernate.property.access.spi.PropertyAccessStrategy, var800=r1, var2541=i0, var1689=i1, var3219=org.hibernate.PropertyNotFoundException, var3592=$r15, var418=$r14, var2993=$r5, var2976=$r6, var1775=$r8, var2161=java.lang.Object, var3435=$r9, var912=$r10, var1234=java.lang.Throwable, var3972=$r16}
; {org.hibernate.property.access.internal.PropertyAccessStrategyChainedImpl=var2422, r0=var1600, r7=var3010, r4=var2889, null_type=var2835, org.hibernate.property.access.spi.PropertyAccessStrategy=var483, r1=var800, i0=var2541, i1=var1689, org.hibernate.PropertyNotFoundException=var3219, $r15=var3592, $r14=var418, $r5=var2993, $r6=var2976, $r8=var1775, java.lang.Object=var2161, $r9=var3435, $r10=var912, java.lang.Throwable=var1234, $r16=var3972}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.property.access.internal.PropertyAccessStrategyChainedImpl;	r7 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.String;	r1 = r0.<org.hibernate.property.access.internal.PropertyAccessStrategyChainedImpl: org.hibernate.property.access.spi.PropertyAccessStrategy[] chain>;	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $r15 = new org.hibernate.PropertyNotFoundException;	$r15 = new org.hibernate.PropertyNotFoundException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve PropertyAccess for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r10);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 3