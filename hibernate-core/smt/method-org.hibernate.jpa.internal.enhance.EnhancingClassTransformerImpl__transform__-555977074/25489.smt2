(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1470 0)
(declare-sort var3132 0)
(declare-sort var2909 0)
(declare-sort var2883 0)
(declare-sort var910 0)
(declare-sort var754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var754-init () var754)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1257155508 (var754 var1470 String var910) void)
(declare-const null-var1470 var1470)
(declare-const null-var3132 var3132)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2883 var2883)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var910 var910)
(declare-const var3503 var1470) ; Statement: r1 := @this: org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl 
(assert (not (= var3503 null-var1470)))
(declare-const var3410 var3132) ; Statement: r2 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3410 null-var3132)))
(declare-const var3986 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3986 null-String)))
(declare-const var302 ClassObject) ; Statement: r14 := @parameter2: java.lang.Class 
(assert (not (= var302 null-ClassObject)))
(declare-const var921 var2883) ; Statement: r15 := @parameter3: java.security.ProtectionDomain 
(assert (not (= var921 null-var2883)))
(declare-const var2879 (Array Int Int)) ; Statement: r6 := @parameter4: byte[] 
(assert (not (= var2879 null-__Array__Int__Int__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2740 var910) ; Statement: $r8 := @caughtexception 
(assert (not (= var2740 null-var910)))
(define-const var1353 var754 var754-init) ; Statement: $r9 = new org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl$1 
(define-const var1028 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1028)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1028!1 String)
(assert (= var1028!1 ""))
(assert true)
(define-const var314 String (append/672562846 var1028!1 "Error performing enhancement of ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error performing enhancement of ") 
(declare-const var1028!2 String)
(assert (= var1028!2 (str.++ var1028!1 "Error performing enhancement of ")))
(assert true)
(define-const var1414 String (append/672562846 var314 var3986)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var314!1 String)
(assert (= var314!1 (str.++ var314 var3986)))
(assert true)
(define-const var1314 String (toString/-2075883882 var1414)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1257155508 var1353 var3503 var1314 var2740)) ; Statement: specialinvoke $r9.<org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl$1: void <init>(org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl,java.lang.String,java.lang.Exception)>(r1, $r13, $r8) 

(declare-const var1353!1 var754)
(declare-const var3503!1 var1470)
(declare-const var1314!1 String)
(declare-const var2740!1 var910)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var754-init=([], org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl$1), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1257155508=([org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl$1, org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl, java.lang.String, java.lang.Exception], void)}
; {var1470=org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl, var3503=r1, var3132=java.lang.ClassLoader, var3410=r2, var3986=r5, var2909=null_type, var302=r14, var2883=java.security.ProtectionDomain, var921=r15, var2879=r6, var910=java.lang.Exception, var2740=$r8, var754=org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl$1, var1353=$r9, var1028=$r10, var314=$r11, var1414=$r12, var1314=$r13}
; {org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl=var1470, r1=var3503, java.lang.ClassLoader=var3132, r2=var3410, r5=var3986, null_type=var2909, r14=var302, java.security.ProtectionDomain=var2883, r15=var921, r6=var2879, java.lang.Exception=var910, $r8=var2740, org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl$1=var754, $r9=var1353, $r10=var1028, $r11=var314, $r12=var1414, $r13=var1314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl;	r2 := @parameter0: java.lang.ClassLoader;	r5 := @parameter1: java.lang.String;	r14 := @parameter2: java.lang.Class;	r15 := @parameter3: java.security.ProtectionDomain;	r6 := @parameter4: byte[];	$r8 := @caughtexception;	$r9 = new org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl$1;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error performing enhancement of ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl$1: void <init>(org.hibernate.jpa.internal.enhance.EnhancingClassTransformerImpl,java.lang.String,java.lang.Exception)>(r1, $r13, $r8);	throw $r9
;block_num 2