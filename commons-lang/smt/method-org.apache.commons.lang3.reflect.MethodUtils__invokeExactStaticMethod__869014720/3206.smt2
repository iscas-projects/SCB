(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3940 0)
(declare-sort var3946 0)
(declare-sort var3589 0)
(declare-sort var1163 0)
(declare-sort var1084 0)
(declare-sort var2856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3589_nullToEmpty/627354827 ((Array Int var3946)) (Array Int var3946))
(declare-fun var3589_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var1084_getAccessibleMethod/841246421 (ClassObject String (Array Int ClassObject)) var1163)
(declare-fun var2856-init () var2856)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var2856 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__var3946__ (Array Int var3946))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1163 var1163)
(declare-const var2603 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2603 null-ClassObject)))
(declare-const var2209 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2209 null-String)))
(declare-const var1387 (Array Int var3946)) ; Statement: r12 := @parameter2: java.lang.Object[] 
(assert (not (= var1387 null-__Array__Int__var3946__)))
(declare-const var2294 (Array Int ClassObject)) ; Statement: r13 := @parameter3: java.lang.Class[] 
(assert (not (= var2294 null-__Array__Int__ClassObject__)))
(define-const var3799 (Array Int var3946) (var3589_nullToEmpty/627354827 var1387)) ; Statement: r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12) 
(define-const var3448 (Array Int ClassObject) (var3589_nullToEmpty/1403447389 var2294)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13) 
(define-const var3997 var1163 (var1084_getAccessibleMethod/841246421 var2603 var2209 var3448)) ; Statement: r2 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r0, r1, r15) 
 ; Statement: if r2 != null goto $r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(null, r14) 
(assert (not (not (= var3997 null-var1163)))) ; Negate: Cond: r2 != null  
(define-const var2391 var2856 var2856-init) ; Statement: $r4 = new java.lang.NoSuchMethodException 
(define-const var1669 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1669)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1669!1 String)
(assert (= var1669!1 ""))
(assert true)
(define-const var2401 String (append/672562846 var1669!1 "No such accessible method: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible method: ") 
(declare-const var1669!2 String)
(assert (= var1669!2 (str.++ var1669!1 "No such accessible method: ")))
(assert true)
(define-const var968 String (append/672562846 var2401 var2209)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2401!1 String)
(assert (= var2401!1 (str.++ var2401 var2209)))
(assert true)
(define-const var1884 String (append/672562846 var968 "() on class: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on class: ") 
(declare-const var968!1 String)
(assert (= var968!1 (str.++ var968 "() on class: ")))
(assert true)
(define-const var1419 String (getName/-1958580599 var2603)) ; Statement: $r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var764 String (append/672562846 var1884 var1419)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1884!1 String)
(assert (= var1884!1 (str.++ var1884 var1419)))
(assert true)
(define-const var19 String (toString/-2075883882 var764)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var2391 var19)) ; Statement: specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11) 

(declare-const var2391!1 var2856)
(declare-const var19!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3589_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var3589_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var1084_getAccessibleMethod/841246421=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var2856-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var2603=r0, var2209=r1, var3940=null_type, var3946=java.lang.Object, var1387=r12, var2294=r13, var3589=org.apache.commons.lang3.ArrayUtils, var3799=r14, var3448=r15, var1163=java.lang.reflect.Method, var1084=org.apache.commons.lang3.reflect.MethodUtils, var3997=r2, var2856=java.lang.NoSuchMethodException, var2391=$r4, var1669=$r5, var2401=$r6, var968=$r7, var1884=$r9, var1419=$r8, var764=$r10, var19=$r11}
; {r0=var2603, r1=var2209, null_type=var3940, java.lang.Object=var3946, r12=var1387, r13=var2294, org.apache.commons.lang3.ArrayUtils=var3589, r14=var3799, r15=var3448, java.lang.reflect.Method=var1163, org.apache.commons.lang3.reflect.MethodUtils=var1084, r2=var3997, java.lang.NoSuchMethodException=var2856, $r4=var2391, $r5=var1669, $r6=var2401, $r7=var968, $r9=var1884, $r8=var1419, $r10=var764, $r11=var19}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.Object[];	r13 := @parameter3: java.lang.Class[];	r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12);	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13);	r2 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r0, r1, r15);	if r2 != null goto $r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(null, r14);	$r4 = new java.lang.NoSuchMethodException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible method: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on class: ");	$r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 2