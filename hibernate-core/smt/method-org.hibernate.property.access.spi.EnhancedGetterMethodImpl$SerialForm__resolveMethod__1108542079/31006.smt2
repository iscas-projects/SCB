(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1734 0)
(declare-sort var1569 0)
(declare-sort var3795 0)
(declare-sort var2153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaringClass/1357435489 (var1734) ClassObject)
(declare-fun methodName/1357435489 (var1734) String)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3795-init () var3795)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/696710679 (var3795 String) void)
(declare-fun cast-from-var3795-to-var2153 (var3795) var2153)
(declare-const null-var1734 var1734)
(declare-const null-var1569 var1569)
(declare-const var3060 var1734) ; Statement: r0 := @this: org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm 
(assert (not (= var3060 null-var1734)))
(define-const var3499 ClassObject (declaringClass/1357435489 var3060)) ; Statement: $r3 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.Class declaringClass> 
(define-const var3435 String (methodName/1357435489 var3060)) ; Statement: $r2 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.String methodName> 
(define-const var3562 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2816 var1569) ; Statement: $r5 := @caughtexception 
(assert (not (= var2816 null-var1569)))
(define-const var1335 var3795 var3795-init) ; Statement: $r17 = new org.hibernate.property.access.spi.PropertyAccessSerializationException 
(define-const var1478 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1478)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1478!1 String)
(assert (= var1478!1 ""))
(assert true)
(define-const var661 String (append/672562846 var1478!1 "Unable to resolve getter method on deserialization : ")) ; Statement: $r10 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve getter method on deserialization : ") 
(declare-const var1478!2 String)
(assert (= var1478!2 (str.++ var1478!1 "Unable to resolve getter method on deserialization : ")))
(define-const var2304 ClassObject (declaringClass/1357435489 var3060)) ; Statement: $r8 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.Class declaringClass> 
(assert true)
(define-const var1787 String (getName/-1958580599 var2304)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var539 String (append/672562846 var661 var1787)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var661!1 String)
(assert (= var661!1 (str.++ var661 var1787)))
(assert true)
(define-const var339 String (append/672562846 var539 "#")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var539!1 String)
(assert (= var539!1 (str.++ var539 "#")))
(define-const var2277 String (methodName/1357435489 var3060)) ; Statement: $r12 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.String methodName> 
(assert true)
(define-const var2225 String (append/672562846 var339 var2277)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var339!1 String)
(assert (= var339!1 (str.++ var339 var2277)))
(assert true)
(define-const var1369 String (toString/-2075883882 var2225)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/696710679 var1335 var1369)) ; Statement: specialinvoke $r17.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r15) 

(declare-const var1335!1 var3795)
(declare-const var1369!1 String)
(define-const var3690 var2153 (cast-from-var3795-to-var2153 var1335!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {declaringClass/1357435489=([org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm], java.lang.Class), methodName/1357435489=([org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var3795-init=([], org.hibernate.property.access.spi.PropertyAccessSerializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/696710679=([org.hibernate.property.access.spi.PropertyAccessSerializationException, java.lang.String], void), cast-from-var3795-to-var2153=([org.hibernate.property.access.spi.PropertyAccessSerializationException], java.lang.Throwable)}
; {var1734=org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm, var3060=r0, var3499=$r3, var3435=$r2, var3562=$r1, var1569=java.lang.NoSuchMethodException, var2816=$r5, var3795=org.hibernate.property.access.spi.PropertyAccessSerializationException, var1335=$r17, var1478=$r16, var661=$r10, var2304=$r8, var1787=$r9, var539=$r11, var339=$r13, var2277=$r12, var2225=$r14, var1369=$r15, var2153=java.lang.Throwable, var3690=$r18}
; {org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm=var1734, r0=var3060, $r3=var3499, $r2=var3435, $r1=var3562, java.lang.NoSuchMethodException=var1569, $r5=var2816, org.hibernate.property.access.spi.PropertyAccessSerializationException=var3795, $r17=var1335, $r16=var1478, $r10=var661, $r8=var2304, $r9=var1787, $r11=var539, $r13=var339, $r12=var2277, $r14=var2225, $r15=var1369, java.lang.Throwable=var2153, $r18=var3690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm;	$r3 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.Class declaringClass>;	$r2 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.String methodName>;	$r1 = newarray (java.lang.Class)[0];	$r5 := @caughtexception;	$r17 = new org.hibernate.property.access.spi.PropertyAccessSerializationException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve getter method on deserialization : ");	$r8 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.Class declaringClass>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r12 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.String methodName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r15);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 2