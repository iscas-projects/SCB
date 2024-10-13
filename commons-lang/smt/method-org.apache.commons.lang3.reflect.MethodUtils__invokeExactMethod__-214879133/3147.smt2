(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3191 0)
(declare-sort var1693 0)
(declare-sort var2182 0)
(declare-sort var1227 0)
(declare-sort var2435 0)
(declare-sort var218 0)
(declare-sort var450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2182_requireNonNull/1378936425 (var3191 String) var3191)
(declare-fun var1227_nullToEmpty/627354827 ((Array Int var3191)) (Array Int var3191))
(declare-fun var1227_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun getClass/1258963082 (var3191) ClassObject)
(declare-fun var218_getAccessibleMethod/841246421 (ClassObject String (Array Int ClassObject)) var2435)
(declare-fun var450-init () var450)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var450 String) void)
(declare-const null-var3191 var3191)
(declare-const null-String String)
(declare-const null-__Array__Int__var3191__ (Array Int var3191))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var2435 var2435)
(declare-const var2183 var3191) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2183 null-var3191)))
(declare-const var2814 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2814 null-String)))
(declare-const var2915 (Array Int var3191)) ; Statement: r13 := @parameter2: java.lang.Object[] 
(assert (not (= var2915 null-__Array__Int__var3191__)))
(declare-const var3869 (Array Int ClassObject)) ; Statement: r14 := @parameter3: java.lang.Class[] 
(assert (not (= var3869 null-__Array__Int__ClassObject__)))
;(assert (var2182_requireNonNull/1378936425 var2183 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var2183!1 var3191)
(declare-const var1588 String)
(define-const var3205 (Array Int var3191) (var1227_nullToEmpty/627354827 var2915)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r13) 
(define-const var2571 (Array Int ClassObject) (var1227_nullToEmpty/1403447389 var3869)) ; Statement: r16 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r14) 
(assert true)
(define-const var2552 ClassObject (getClass/1258963082 var2183!1)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var1655 var2435 (var218_getAccessibleMethod/841246421 var2552 var2814 var2571)) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r16) 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r15) 
(assert (not (not (= var1655 null-var2435)))) ; Negate: Cond: r3 != null  
(define-const var1545 var450 var450-init) ; Statement: $r5 = new java.lang.NoSuchMethodException 
(define-const var374 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var374)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var374!1 String)
(assert (= var374!1 ""))
(assert true)
(define-const var740 String (append/672562846 var374!1 "No such accessible method: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible method: ") 
(declare-const var374!2 String)
(assert (= var374!2 (str.++ var374!1 "No such accessible method: ")))
(assert true)
(define-const var1056 String (append/672562846 var740 var2814)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var740!1 String)
(assert (= var740!1 (str.++ var740 var2814)))
(assert true)
(define-const var1271 String (append/672562846 var1056 "() on object: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on object: ") 
(declare-const var1056!1 String)
(assert (= var1056!1 (str.++ var1056 "() on object: ")))
(assert true)
(define-const var3965 String (getName/-1958580599 var2552)) ; Statement: $r9 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var44 String (append/672562846 var1271 var3965)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1271!1 String)
(assert (= var1271!1 (str.++ var1271 var3965)))
(assert true)
(define-const var2352 String (toString/-2075883882 var44)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var1545 var2352)) ; Statement: specialinvoke $r5.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r12) 

(declare-const var1545!1 var450)
(declare-const var2352!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2182_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), var1227_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var1227_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), getClass/1258963082=([java.lang.Object], java.lang.Class), var218_getAccessibleMethod/841246421=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var450-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var3191=java.lang.Object, var2183=r0, var2814=r2, var1693=null_type, var2915=r13, var3869=r14, var2182=java.util.Objects, var1588="object", var1227=org.apache.commons.lang3.ArrayUtils, var3205=r15, var2571=r16, var2552=r1, var2435=java.lang.reflect.Method, var218=org.apache.commons.lang3.reflect.MethodUtils, var1655=r3, var450=java.lang.NoSuchMethodException, var1545=$r5, var374=$r6, var740=$r7, var1056=$r8, var1271=$r10, var3965=$r9, var44=$r11, var2352=$r12}
; {java.lang.Object=var3191, r0=var2183, r2=var2814, null_type=var1693, r13=var2915, r14=var3869, java.util.Objects=var2182, "object"=var1588, org.apache.commons.lang3.ArrayUtils=var1227, r15=var3205, r16=var2571, r1=var2552, java.lang.reflect.Method=var2435, org.apache.commons.lang3.reflect.MethodUtils=var218, r3=var1655, java.lang.NoSuchMethodException=var450, $r5=var1545, $r6=var374, $r7=var740, $r8=var1056, $r10=var1271, $r9=var3965, $r11=var44, $r12=var2352}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.Object[];	r14 := @parameter3: java.lang.Class[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r13);	r16 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r14);	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r3 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r16);	if r3 != null goto $r4 = virtualinvoke r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r15);	$r5 = new java.lang.NoSuchMethodException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible method: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on object: ");	$r9 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r12);	throw $r5
;block_num 2