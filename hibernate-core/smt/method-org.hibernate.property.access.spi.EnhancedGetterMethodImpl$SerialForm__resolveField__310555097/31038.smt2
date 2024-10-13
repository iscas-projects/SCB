(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var667 0)
(declare-sort var1669 0)
(declare-sort var500 0)
(declare-sort var3051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaringClass/1357435489 (var667) ClassObject)
(declare-fun propertyName/1357435489 (var667) String)
(declare-fun var500-init () var500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/696710679 (var500 String) void)
(declare-fun cast-from-var500-to-var3051 (var500) var3051)
(declare-const null-var667 var667)
(declare-const null-var1669 var1669)
(declare-const var1065 var667) ; Statement: r0 := @this: org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm 
(assert (not (= var1065 null-var667)))
(define-const var3072 ClassObject (declaringClass/1357435489 var1065)) ; Statement: $r2 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.Class declaringClass> 
(define-const var2594 String (propertyName/1357435489 var1065)) ; Statement: $r1 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.String propertyName> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3681 var1669) ; Statement: $r4 := @caughtexception 
(assert (not (= var3681 null-var1669)))
(define-const var3049 var500 var500-init) ; Statement: $r16 = new org.hibernate.property.access.spi.PropertyAccessSerializationException 
(define-const var2437 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2437)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2437!1 String)
(assert (= var2437!1 ""))
(assert true)
(define-const var898 String (append/672562846 var2437!1 "Unable to resolve field on deserialization : ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve field on deserialization : ") 
(declare-const var2437!2 String)
(assert (= var2437!2 (str.++ var2437!1 "Unable to resolve field on deserialization : ")))
(define-const var312 ClassObject (declaringClass/1357435489 var1065)) ; Statement: $r7 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.Class declaringClass> 
(assert true)
(define-const var547 String (getName/-1958580599 var312)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3238 String (append/672562846 var898 var547)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var898!1 String)
(assert (= var898!1 (str.++ var898 var547)))
(assert true)
(define-const var2980 String (append/672562846 var3238 "#")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var3238!1 String)
(assert (= var3238!1 (str.++ var3238 "#")))
(define-const var1770 String (propertyName/1357435489 var1065)) ; Statement: $r11 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.String propertyName> 
(assert true)
(define-const var203 String (append/672562846 var2980 var1770)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2980!1 String)
(assert (= var2980!1 (str.++ var2980 var1770)))
(assert true)
(define-const var583 String (toString/-2075883882 var203)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/696710679 var3049 var583)) ; Statement: specialinvoke $r16.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r14) 

(declare-const var3049!1 var500)
(declare-const var583!1 String)
(define-const var1468 var3051 (cast-from-var500-to-var3051 var3049!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {declaringClass/1357435489=([org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm], java.lang.Class), propertyName/1357435489=([org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm], java.lang.String), var500-init=([], org.hibernate.property.access.spi.PropertyAccessSerializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/696710679=([org.hibernate.property.access.spi.PropertyAccessSerializationException, java.lang.String], void), cast-from-var500-to-var3051=([org.hibernate.property.access.spi.PropertyAccessSerializationException], java.lang.Throwable)}
; {var667=org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm, var1065=r0, var3072=$r2, var2594=$r1, var1669=java.lang.NoSuchFieldException, var3681=$r4, var500=org.hibernate.property.access.spi.PropertyAccessSerializationException, var3049=$r16, var2437=$r15, var898=$r9, var312=$r7, var547=$r8, var3238=$r10, var2980=$r12, var1770=$r11, var203=$r13, var583=$r14, var3051=java.lang.Throwable, var1468=$r17}
; {org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm=var667, r0=var1065, $r2=var3072, $r1=var2594, java.lang.NoSuchFieldException=var1669, $r4=var3681, org.hibernate.property.access.spi.PropertyAccessSerializationException=var500, $r16=var3049, $r15=var2437, $r9=var898, $r7=var312, $r8=var547, $r10=var3238, $r12=var2980, $r11=var1770, $r13=var203, $r14=var583, java.lang.Throwable=var3051, $r17=var1468}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm;	$r2 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.Class declaringClass>;	$r1 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.String propertyName>;	$r4 := @caughtexception;	$r16 = new org.hibernate.property.access.spi.PropertyAccessSerializationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve field on deserialization : ");	$r7 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.Class declaringClass>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r11 = r0.<org.hibernate.property.access.spi.EnhancedGetterMethodImpl$SerialForm: java.lang.String propertyName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.property.access.spi.PropertyAccessSerializationException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2