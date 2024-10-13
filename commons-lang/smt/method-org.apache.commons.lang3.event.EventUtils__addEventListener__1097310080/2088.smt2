(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var91 0)
(declare-sort var262 0)
(declare-sort var2811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var2811-init () var2811)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var91) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2811 String) void)
(declare-const null-var91 var91)
(declare-const null-ClassObject ClassObject)
(declare-const null-var262 var262)
(declare-const var1283 var91) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1283 null-var91)))
(declare-const var1751 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var1751 null-ClassObject)))
(declare-const var3425 var91) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var3425 null-var91)))
(define-const var3145 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2468 var262) ; Statement: $r12 := @caughtexception 
(assert (not (= var2468 null-var262)))
(define-const var2206 var2811 var2811-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var1154 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1154)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1154!1 String)
(assert (= var1154!1 ""))
(assert true)
(define-const var2212 String (append/672562846 var1154!1 "Class ")) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var1154!2 String)
(assert (= var1154!2 (str.++ var1154!1 "Class ")))
(assert true)
(define-const var837 ClassObject (getClass/1258963082 var1283)) ; Statement: $r15 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3813 String (getName/-1958580599 var837)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2494 String (append/672562846 var2212 var3813)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2212!1 String)
(assert (= var2212!1 (str.++ var2212 var3813)))
(assert true)
(define-const var69 String (append/672562846 var2494 " does not have an accessible add")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not have an accessible add") 
(declare-const var2494!1 String)
(assert (= var2494!1 (str.++ var2494 " does not have an accessible add")))
(assert true)
(define-const var642 String (getSimpleName/-390194377 var1751)) ; Statement: $r19 = virtualinvoke r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2996 String (append/672562846 var69 var642)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var69!1 String)
(assert (= var69!1 (str.++ var69 var642)))
(assert true)
(define-const var1249 String (append/672562846 var2996 " method which takes a parameter of type ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" method which takes a parameter of type ") 
(declare-const var2996!1 String)
(assert (= var2996!1 (str.++ var2996 " method which takes a parameter of type ")))
(assert true)
(define-const var3938 String (getName/-1958580599 var1751)) ; Statement: $r22 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2055 String (append/672562846 var1249 var3938)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1249!1 String)
(assert (= var1249!1 (str.++ var1249 var3938)))
(assert true)
(define-const var3831 String (append/672562846 var2055 ".")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2055!1 String)
(assert (= var2055!1 (str.++ var2055 ".")))
(assert true)
(define-const var2103 String (toString/-2075883882 var3831)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2206 var2103)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26) 

(declare-const var2206!1 var2811)
(declare-const var2103!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var2811-init=([], java.lang.IllegalArgumentException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var91=java.lang.Object, var1283=r0, var1751=r2, var3425=r7, var3145=$r1, var262=java.lang.IllegalAccessException, var2468=$r12, var2811=java.lang.IllegalArgumentException, var2206=$r13, var1154=$r14, var2212=$r17, var837=$r15, var3813=$r16, var2494=$r18, var69=$r20, var642=$r19, var2996=$r21, var1249=$r23, var3938=$r22, var2055=$r24, var3831=$r25, var2103=$r26}
; {java.lang.Object=var91, r0=var1283, r2=var1751, r7=var3425, $r1=var3145, java.lang.IllegalAccessException=var262, $r12=var2468, java.lang.IllegalArgumentException=var2811, $r13=var2206, $r14=var1154, $r17=var2212, $r15=var837, $r16=var3813, $r18=var2494, $r20=var69, $r19=var642, $r21=var2996, $r23=var1249, $r22=var3938, $r24=var2055, $r25=var3831, $r26=var2103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Class;	r7 := @parameter2: java.lang.Object;	$r1 = new java.lang.StringBuilder;	$r12 := @caughtexception;	$r13 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r15 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not have an accessible add");	$r19 = virtualinvoke r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" method which takes a parameter of type ");	$r22 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26);	throw $r13
;block_num 2