(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var128 0)
(declare-sort var3737 0)
(declare-sort var3752 0)
(declare-sort var3119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaringClass/1405605827 (var128) ClassObject)
(declare-fun methodName/1405605827 (var128) String)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun argumentType/1405605827 (var128) ClassObject)
(declare-fun var3752-init () var3752)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/696710679 (var3752 String) void)
(declare-fun cast-from-var3752-to-var3119 (var3752) var3119)
(declare-const null-var128 var128)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3737 var3737)
(declare-const var3065 var128) ; Statement: r0 := @this: org.hibernate.property.access.spi.SetterMethodImpl$SerialForm 
(assert (not (= var3065 null-var128)))
(define-const var3753 ClassObject (declaringClass/1405605827 var3065)) ; Statement: $r4 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.Class declaringClass> 
(define-const var1904 String (methodName/1405605827 var3065)) ; Statement: $r3 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.String methodName> 
(define-const var300 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[1] 
(define-const var2054 ClassObject (argumentType/1405605827 var3065)) ; Statement: $r2 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.Class argumentType> 
(declare-const var300!1 (Array Int ClassObject))
(assert (not (= var300!1 null-__Array__Int__ClassObject__)))
(assert (= (select var300!1 0) var2054)) ; Statement: $r1[0] = $r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1178 var3737) ; Statement: $r5 := @caughtexception 
(assert (not (= var1178 null-var3737)))
(define-const var432 var3752 var3752-init) ; Statement: $r23 = new org.hibernate.property.access.spi.PropertyAccessSerializationException 
(define-const var665 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var665)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var665!1 String)
(assert (= var665!1 ""))
(assert true)
(define-const var1568 String (append/672562846 var665!1 "Unable to resolve setter method on deserialization : ")) ; Statement: $r10 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve setter method on deserialization : ") 
(declare-const var665!2 String)
(assert (= var665!2 (str.++ var665!1 "Unable to resolve setter method on deserialization : ")))
(define-const var956 ClassObject (declaringClass/1405605827 var3065)) ; Statement: $r8 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.Class declaringClass> 
(assert true)
(define-const var3463 String (getName/-1958580599 var956)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2772 String (append/672562846 var1568 var3463)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1568!1 String)
(assert (= var1568!1 (str.++ var1568 var3463)))
(assert true)
(define-const var1741 String (append/672562846 var2772 "#")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2772!1 String)
(assert (= var2772!1 (str.++ var2772 "#")))
(define-const var1986 String (methodName/1405605827 var3065)) ; Statement: $r12 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.String methodName> 
(assert true)
(define-const var1456 String (append/672562846 var1741 var1986)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1741!1 String)
(assert (= var1741!1 (str.++ var1741 var1986)))
(assert true)
(define-const var1424 String (append/672562846 var1456 "(")) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1456!1 String)
(assert (= var1456!1 (str.++ var1456 "(")))
(define-const var528 ClassObject (argumentType/1405605827 var3065)) ; Statement: $r15 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.Class argumentType> 
(assert true)
(define-const var3940 String (getName/-1958580599 var528)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3480 String (append/672562846 var1424 var3940)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1424!1 String)
(assert (= var1424!1 (str.++ var1424 var3940)))
(assert true)
(define-const var541 String (append/672562846 var3480 ")")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3480!1 String)
(assert (= var3480!1 (str.++ var3480 ")")))
(assert true)
(define-const var3699 String (toString/-2075883882 var541)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/696710679 var432 var3699)) ; Statement: specialinvoke $r23.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r20) 

(declare-const var432!1 var3752)
(declare-const var3699!1 String)
(define-const var1873 var3119 (cast-from-var3752-to-var3119 var432!1)) ; Statement: $r24 = (java.lang.Throwable) $r23 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {declaringClass/1405605827=([org.hibernate.property.access.spi.SetterMethodImpl$SerialForm], java.lang.Class), methodName/1405605827=([org.hibernate.property.access.spi.SetterMethodImpl$SerialForm], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), argumentType/1405605827=([org.hibernate.property.access.spi.SetterMethodImpl$SerialForm], java.lang.Class), var3752-init=([], org.hibernate.property.access.spi.PropertyAccessSerializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/696710679=([org.hibernate.property.access.spi.PropertyAccessSerializationException, java.lang.String], void), cast-from-var3752-to-var3119=([org.hibernate.property.access.spi.PropertyAccessSerializationException], java.lang.Throwable)}
; {var128=org.hibernate.property.access.spi.SetterMethodImpl$SerialForm, var3065=r0, var3753=$r4, var1904=$r3, var300=$r1, var2054=$r2, var3737=java.lang.NoSuchMethodException, var1178=$r5, var3752=org.hibernate.property.access.spi.PropertyAccessSerializationException, var432=$r23, var665=$r22, var1568=$r10, var956=$r8, var3463=$r9, var2772=$r11, var1741=$r13, var1986=$r12, var1456=$r14, var1424=$r17, var528=$r15, var3940=$r16, var3480=$r18, var541=$r19, var3699=$r20, var3119=java.lang.Throwable, var1873=$r24}
; {org.hibernate.property.access.spi.SetterMethodImpl$SerialForm=var128, r0=var3065, $r4=var3753, $r3=var1904, $r1=var300, $r2=var2054, java.lang.NoSuchMethodException=var3737, $r5=var1178, org.hibernate.property.access.spi.PropertyAccessSerializationException=var3752, $r23=var432, $r22=var665, $r10=var1568, $r8=var956, $r9=var3463, $r11=var2772, $r13=var1741, $r12=var1986, $r14=var1456, $r17=var1424, $r15=var528, $r16=var3940, $r18=var3480, $r19=var541, $r20=var3699, java.lang.Throwable=var3119, $r24=var1873}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.property.access.spi.SetterMethodImpl$SerialForm;	$r4 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.Class declaringClass>;	$r3 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.String methodName>;	$r1 = newarray (java.lang.Class)[1];	$r2 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.Class argumentType>;	$r1[0] = $r2;	$r5 := @caughtexception;	$r23 = new org.hibernate.property.access.spi.PropertyAccessSerializationException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve setter method on deserialization : ");	$r8 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.Class declaringClass>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r12 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.String methodName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r15 = r0.<org.hibernate.property.access.spi.SetterMethodImpl$SerialForm: java.lang.Class argumentType>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r20);	$r24 = (java.lang.Throwable) $r23;	throw $r24
;block_num 2