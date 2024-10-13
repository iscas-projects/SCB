(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var811 0)
(declare-sort var2509 0)
(declare-sort var1039 0)
(declare-sort var3007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaringClass/-378808266 (var811) ClassObject)
(declare-fun fieldName/-378808266 (var811) String)
(declare-fun var1039-init () var1039)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/696710679 (var1039 String) void)
(declare-fun cast-from-var1039-to-var3007 (var1039) var3007)
(declare-const null-var811 var811)
(declare-const null-var2509 var2509)
(declare-const var2681 var811) ; Statement: r0 := @this: org.hibernate.property.access.internal.AbstractFieldSerialForm 
(assert (not (= var2681 null-var811)))
(define-const var3237 ClassObject (declaringClass/-378808266 var2681)) ; Statement: $r2 = r0.<org.hibernate.property.access.internal.AbstractFieldSerialForm: java.lang.Class declaringClass> 
(define-const var885 String (fieldName/-378808266 var2681)) ; Statement: $r1 = r0.<org.hibernate.property.access.internal.AbstractFieldSerialForm: java.lang.String fieldName> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2025 var2509) ; Statement: $r3 := @caughtexception 
(assert (not (= var2025 null-var2509)))
(define-const var2279 var1039 var1039-init) ; Statement: $r16 = new org.hibernate.property.access.spi.PropertyAccessSerializationException 
(define-const var2423 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2423)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2423!1 String)
(assert (= var2423!1 ""))
(assert true)
(define-const var1354 String (append/672562846 var2423!1 "Unable to resolve field on deserialization : ")) ; Statement: $r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve field on deserialization : ") 
(declare-const var2423!2 String)
(assert (= var2423!2 (str.++ var2423!1 "Unable to resolve field on deserialization : ")))
(define-const var1170 ClassObject (declaringClass/-378808266 var2681)) ; Statement: $r6 = r0.<org.hibernate.property.access.internal.AbstractFieldSerialForm: java.lang.Class declaringClass> 
(assert true)
(define-const var950 String (getName/-1958580599 var1170)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3434 String (append/672562846 var1354 var950)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1354!1 String)
(assert (= var1354!1 (str.++ var1354 var950)))
(assert true)
(define-const var2466 String (append/672562846 var3434 "#")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var3434!1 String)
(assert (= var3434!1 (str.++ var3434 "#")))
(define-const var3479 String (fieldName/-378808266 var2681)) ; Statement: $r10 = r0.<org.hibernate.property.access.internal.AbstractFieldSerialForm: java.lang.String fieldName> 
(assert true)
(define-const var311 String (append/672562846 var2466 var3479)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2466!1 String)
(assert (= var2466!1 (str.++ var2466 var3479)))
(assert true)
(define-const var3431 String (toString/-2075883882 var311)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/696710679 var2279 var3431)) ; Statement: specialinvoke $r16.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r13) 

(declare-const var2279!1 var1039)
(declare-const var3431!1 String)
(define-const var3625 var3007 (cast-from-var1039-to-var3007 var2279!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {declaringClass/-378808266=([org.hibernate.property.access.internal.AbstractFieldSerialForm], java.lang.Class), fieldName/-378808266=([org.hibernate.property.access.internal.AbstractFieldSerialForm], java.lang.String), var1039-init=([], org.hibernate.property.access.spi.PropertyAccessSerializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/696710679=([org.hibernate.property.access.spi.PropertyAccessSerializationException, java.lang.String], void), cast-from-var1039-to-var3007=([org.hibernate.property.access.spi.PropertyAccessSerializationException], java.lang.Throwable)}
; {var811=org.hibernate.property.access.internal.AbstractFieldSerialForm, var2681=r0, var3237=$r2, var885=$r1, var2509=java.lang.NoSuchFieldException, var2025=$r3, var1039=org.hibernate.property.access.spi.PropertyAccessSerializationException, var2279=$r16, var2423=$r15, var1354=$r8, var1170=$r6, var950=$r7, var3434=$r9, var2466=$r11, var3479=$r10, var311=$r12, var3431=$r13, var3007=java.lang.Throwable, var3625=$r17}
; {org.hibernate.property.access.internal.AbstractFieldSerialForm=var811, r0=var2681, $r2=var3237, $r1=var885, java.lang.NoSuchFieldException=var2509, $r3=var2025, org.hibernate.property.access.spi.PropertyAccessSerializationException=var1039, $r16=var2279, $r15=var2423, $r8=var1354, $r6=var1170, $r7=var950, $r9=var3434, $r11=var2466, $r10=var3479, $r12=var311, $r13=var3431, java.lang.Throwable=var3007, $r17=var3625}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.property.access.internal.AbstractFieldSerialForm;	$r2 = r0.<org.hibernate.property.access.internal.AbstractFieldSerialForm: java.lang.Class declaringClass>;	$r1 = r0.<org.hibernate.property.access.internal.AbstractFieldSerialForm: java.lang.String fieldName>;	$r3 := @caughtexception;	$r16 = new org.hibernate.property.access.spi.PropertyAccessSerializationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve field on deserialization : ");	$r6 = r0.<org.hibernate.property.access.internal.AbstractFieldSerialForm: java.lang.Class declaringClass>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r10 = r0.<org.hibernate.property.access.internal.AbstractFieldSerialForm: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r13);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2