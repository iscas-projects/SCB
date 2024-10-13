(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1127 0)
(declare-sort var1857 0)
(declare-sort var2367 0)
(declare-sort var1721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaringClass/-1543827785 (var1127) ClassObject)
(declare-fun methodName/-1543827785 (var1127) String)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2367-init () var2367)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/696710679 (var2367 String) void)
(declare-fun cast-from-var2367-to-var1721 (var2367) var1721)
(declare-const null-var1127 var1127)
(declare-const null-var1857 var1857)
(declare-const var3975 var1127) ; Statement: r0 := @this: org.hibernate.property.access.spi.GetterMethodImpl$SerialForm 
(assert (not (= var3975 null-var1127)))
(define-const var3011 ClassObject (declaringClass/-1543827785 var3975)) ; Statement: $r3 = r0.<org.hibernate.property.access.spi.GetterMethodImpl$SerialForm: java.lang.Class declaringClass> 
(define-const var3179 String (methodName/-1543827785 var3975)) ; Statement: $r2 = r0.<org.hibernate.property.access.spi.GetterMethodImpl$SerialForm: java.lang.String methodName> 
(define-const var1251 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1933 var1857) ; Statement: $r4 := @caughtexception 
(assert (not (= var1933 null-var1857)))
(define-const var2035 var2367 var2367-init) ; Statement: $r17 = new org.hibernate.property.access.spi.PropertyAccessSerializationException 
(define-const var3210 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3210)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3210!1 String)
(assert (= var3210!1 ""))
(assert true)
(define-const var3509 String (append/672562846 var3210!1 "Unable to resolve getter method on deserialization : ")) ; Statement: $r9 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve getter method on deserialization : ") 
(declare-const var3210!2 String)
(assert (= var3210!2 (str.++ var3210!1 "Unable to resolve getter method on deserialization : ")))
(define-const var1614 ClassObject (declaringClass/-1543827785 var3975)) ; Statement: $r7 = r0.<org.hibernate.property.access.spi.GetterMethodImpl$SerialForm: java.lang.Class declaringClass> 
(assert true)
(define-const var62 String (getName/-1958580599 var1614)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1112 String (append/672562846 var3509 var62)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3509!1 String)
(assert (= var3509!1 (str.++ var3509 var62)))
(assert true)
(define-const var1332 String (append/672562846 var1112 "#")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1112!1 String)
(assert (= var1112!1 (str.++ var1112 "#")))
(define-const var1968 String (methodName/-1543827785 var3975)) ; Statement: $r11 = r0.<org.hibernate.property.access.spi.GetterMethodImpl$SerialForm: java.lang.String methodName> 
(assert true)
(define-const var1712 String (append/672562846 var1332 var1968)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1332!1 String)
(assert (= var1332!1 (str.++ var1332 var1968)))
(assert true)
(define-const var3786 String (toString/-2075883882 var1712)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/696710679 var2035 var3786)) ; Statement: specialinvoke $r17.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r14) 

(declare-const var2035!1 var2367)
(declare-const var3786!1 String)
(define-const var2653 var1721 (cast-from-var2367-to-var1721 var2035!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {declaringClass/-1543827785=([org.hibernate.property.access.spi.GetterMethodImpl$SerialForm], java.lang.Class), methodName/-1543827785=([org.hibernate.property.access.spi.GetterMethodImpl$SerialForm], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var2367-init=([], org.hibernate.property.access.spi.PropertyAccessSerializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/696710679=([org.hibernate.property.access.spi.PropertyAccessSerializationException, java.lang.String], void), cast-from-var2367-to-var1721=([org.hibernate.property.access.spi.PropertyAccessSerializationException], java.lang.Throwable)}
; {var1127=org.hibernate.property.access.spi.GetterMethodImpl$SerialForm, var3975=r0, var3011=$r3, var3179=$r2, var1251=$r1, var1857=java.lang.NoSuchMethodException, var1933=$r4, var2367=org.hibernate.property.access.spi.PropertyAccessSerializationException, var2035=$r17, var3210=$r16, var3509=$r9, var1614=$r7, var62=$r8, var1112=$r10, var1332=$r12, var1968=$r11, var1712=$r13, var3786=$r14, var1721=java.lang.Throwable, var2653=$r18}
; {org.hibernate.property.access.spi.GetterMethodImpl$SerialForm=var1127, r0=var3975, $r3=var3011, $r2=var3179, $r1=var1251, java.lang.NoSuchMethodException=var1857, $r4=var1933, org.hibernate.property.access.spi.PropertyAccessSerializationException=var2367, $r17=var2035, $r16=var3210, $r9=var3509, $r7=var1614, $r8=var62, $r10=var1112, $r12=var1332, $r11=var1968, $r13=var1712, $r14=var3786, java.lang.Throwable=var1721, $r18=var2653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.property.access.spi.GetterMethodImpl$SerialForm;	$r3 = r0.<org.hibernate.property.access.spi.GetterMethodImpl$SerialForm: java.lang.Class declaringClass>;	$r2 = r0.<org.hibernate.property.access.spi.GetterMethodImpl$SerialForm: java.lang.String methodName>;	$r1 = newarray (java.lang.Class)[0];	$r4 := @caughtexception;	$r17 = new org.hibernate.property.access.spi.PropertyAccessSerializationException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve getter method on deserialization : ");	$r7 = r0.<org.hibernate.property.access.spi.GetterMethodImpl$SerialForm: java.lang.Class declaringClass>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r11 = r0.<org.hibernate.property.access.spi.GetterMethodImpl$SerialForm: java.lang.String methodName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r14);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 2