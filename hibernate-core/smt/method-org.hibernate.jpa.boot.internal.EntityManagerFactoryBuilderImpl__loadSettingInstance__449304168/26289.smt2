(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2594 0)
(declare-sort var303 0)
(declare-sort var2542 0)
(declare-sort var7 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var2542) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var7-init () var7)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2542) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var7 String) void)
(declare-const null-var2594 var2594)
(declare-const null-String String)
(declare-const null-var2542 var2542)
(declare-const null-ClassObject ClassObject)
(declare-const var1658 var2594) ; Statement: r12 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl 
(assert (not (= var1658 null-var2594)))
(declare-const var1792 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1792 null-String)))
(declare-const var1742 var2542) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1742 null-var2542)))
(declare-const var3857 ClassObject) ; Statement: r0 := @parameter2: java.lang.Class 
(assert (not (= var3857 null-ClassObject)))
(define-const var1154 var2542 null-var2542) ; Statement: r32 = null 
(define-const var3127 ClassObject null-ClassObject) ; Statement: r33 = null 
(assert true)
(define-const var3197 ClassObject (getClass/1258963082 var1742)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3445 Bool (isAssignableFrom/-1028998700 var3857 var3197)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2) 
 ; Statement: if $z0 == 0 goto $z1 = r1 instanceof java.lang.Class 
(assert (= (ite var3445 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1994 Bool false) ; Statement: $z1 = r1 instanceof java.lang.Class 
 ; Statement: if $z1 == 0 goto $z2 = r1 instanceof java.lang.String 
(assert (= (ite var1994 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2870 Bool false) ; Statement: $z2 = r1 instanceof java.lang.String 
 ; Statement: if $z2 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (= (ite var2870 1 0) 0)) ; Cond: $z2 == 0 
(define-const var214 var7 var7-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1588 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1588)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1588!1 String)
(assert (= var1588!1 ""))
(assert true)
(define-const var1095 String (append/672562846 var1588!1 "The provided ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The provided ") 
(declare-const var1588!2 String)
(assert (= var1588!2 (str.++ var1588!1 "The provided ")))
(assert true)
(define-const var2705 String (append/672562846 var1095 var1792)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1095!1 String)
(assert (= var1095!1 (str.++ var1095 var1792)))
(assert true)
(define-const var2229 String (append/672562846 var2705 " setting value [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" setting value [") 
(declare-const var2705!1 String)
(assert (= var2705!1 (str.++ var2705 " setting value [")))
(assert true)
(define-const var3640 String (append/-1031950772 var2229 var1742)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2229!1 String)
(assert (str.prefixof var2229 var2229!1))
(assert true)
(define-const var1403 String (append/672562846 var3640 "] is not supported!")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not supported!") 
(declare-const var3640!1 String)
(assert (= var3640!1 (str.++ var3640 "] is not supported!")))
(assert true)
(define-const var3324 String (toString/-2075883882 var1403)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var214 var3324)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var214!1 var7)
(declare-const var3324!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var7-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2594=org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, var1658=r12, var1792=r5, var303=null_type, var2542=java.lang.Object, var1742=r1, var3857=r0, var1154=r32, var3127=r33, var3197=$r2, var3445=$z0, var1994=$z1, var2870=$z2, var7=java.lang.IllegalArgumentException, var214=$r3, var1588=$r4, var1095=$r6, var2705=$r7, var2229=$r8, var3640=$r9, var1403=$r10, var3324=$r11}
; {org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl=var2594, r12=var1658, r5=var1792, null_type=var303, java.lang.Object=var2542, r1=var1742, r0=var3857, r32=var1154, r33=var3127, $r2=var3197, $z0=var3445, $z1=var1994, $z2=var2870, java.lang.IllegalArgumentException=var7, $r3=var214, $r4=var1588, $r6=var1095, $r7=var2705, $r8=var2229, $r9=var3640, $r10=var1403, $r11=var3324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Class;	r32 = null;	r33 = null;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2);	if $z0 == 0 goto $z1 = r1 instanceof java.lang.Class;	$z1 = r1 instanceof java.lang.Class;	if $z1 == 0 goto $z2 = r1 instanceof java.lang.String;	$z2 = r1 instanceof java.lang.String;	if $z2 == 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The provided ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" setting value [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not supported!");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r3
;block_num 4