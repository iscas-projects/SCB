(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var636 0)
(declare-sort var1114 0)
(declare-sort var273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var273-init () var273)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var636) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var273 String) void)
(declare-const null-var636 var636)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1114 var1114)
(declare-const var493 var636) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var493 null-var636)))
(declare-const var1865 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var1865 null-ClassObject)))
(declare-const var2570 var636) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var2570 null-var636)))
(define-const var774 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3320 var1114) ; Statement: $r27 := @caughtexception 
(assert (not (= var3320 null-var1114)))
(define-const var2929 var273 var273-init) ; Statement: $r28 = new java.lang.IllegalArgumentException 
(define-const var921 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var921)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var921!1 String)
(assert (= var921!1 ""))
(assert true)
(define-const var1636 String (append/672562846 var921!1 "Class ")) ; Statement: $r32 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var921!2 String)
(assert (= var921!2 (str.++ var921!1 "Class ")))
(assert true)
(define-const var2222 ClassObject (getClass/1258963082 var493)) ; Statement: $r30 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2734 String (getName/-1958580599 var2222)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var42 String (append/672562846 var1636 var2734)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var1636!1 String)
(assert (= var1636!1 (str.++ var1636 var2734)))
(assert true)
(define-const var41 String (append/672562846 var42 " does not have a public add")) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not have a public add") 
(declare-const var42!1 String)
(assert (= var42!1 (str.++ var42 " does not have a public add")))
(assert true)
(define-const var1169 String (getSimpleName/-390194377 var1865)) ; Statement: $r34 = virtualinvoke r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3423 String (append/672562846 var41 var1169)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var41!1 String)
(assert (= var41!1 (str.++ var41 var1169)))
(assert true)
(define-const var2622 String (append/672562846 var3423 " method which takes a parameter of type ")) ; Statement: $r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" method which takes a parameter of type ") 
(declare-const var3423!1 String)
(assert (= var3423!1 (str.++ var3423 " method which takes a parameter of type ")))
(assert true)
(define-const var1375 String (getName/-1958580599 var1865)) ; Statement: $r37 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2306 String (append/672562846 var2622 var1375)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var2622!1 String)
(assert (= var2622!1 (str.++ var2622 var1375)))
(assert true)
(define-const var221 String (append/672562846 var2306 ".")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2306!1 String)
(assert (= var2306!1 (str.++ var2306 ".")))
(assert true)
(define-const var373 String (toString/-2075883882 var221)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2929 var373)) ; Statement: specialinvoke $r28.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r41) 

(declare-const var2929!1 var273)
(declare-const var373!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var273-init=([], java.lang.IllegalArgumentException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var636=java.lang.Object, var493=r0, var1865=r2, var2570=r7, var774=$r1, var1114=java.lang.NoSuchMethodException, var3320=$r27, var273=java.lang.IllegalArgumentException, var2929=$r28, var921=$r29, var1636=$r32, var2222=$r30, var2734=$r31, var42=$r33, var41=$r35, var1169=$r34, var3423=$r36, var2622=$r38, var1375=$r37, var2306=$r39, var221=$r40, var373=$r41}
; {java.lang.Object=var636, r0=var493, r2=var1865, r7=var2570, $r1=var774, java.lang.NoSuchMethodException=var1114, $r27=var3320, java.lang.IllegalArgumentException=var273, $r28=var2929, $r29=var921, $r32=var1636, $r30=var2222, $r31=var2734, $r33=var42, $r35=var41, $r34=var1169, $r36=var3423, $r38=var2622, $r37=var1375, $r39=var2306, $r40=var221, $r41=var373}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Class;	r7 := @parameter2: java.lang.Object;	$r1 = new java.lang.StringBuilder;	$r27 := @caughtexception;	$r28 = new java.lang.IllegalArgumentException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r30 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>();	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not have a public add");	$r34 = virtualinvoke r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" method which takes a parameter of type ");	$r37 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r41);	throw $r28
;block_num 2