(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1292 0)
(declare-sort var3721 0)
(declare-sort var1812 0)
(declare-sort var183 0)
(declare-sort var25 0)
(declare-sort var3071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1812_nullToEmpty/627354827 ((Array Int var3721)) (Array Int var3721))
(declare-fun var1812_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var25_getMatchingAccessibleMethod/856695000 (ClassObject String (Array Int ClassObject)) var183)
(declare-fun var3071-init () var3071)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var3071 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__var3721__ (Array Int var3721))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var183 var183)
(declare-const var1538 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1538 null-ClassObject)))
(declare-const var1105 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1105 null-String)))
(declare-const var2530 (Array Int var3721)) ; Statement: r12 := @parameter2: java.lang.Object[] 
(assert (not (= var2530 null-__Array__Int__var3721__)))
(declare-const var2496 (Array Int ClassObject)) ; Statement: r13 := @parameter3: java.lang.Class[] 
(assert (not (= var2496 null-__Array__Int__ClassObject__)))
(define-const var318 (Array Int var3721) (var1812_nullToEmpty/627354827 var2530)) ; Statement: r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12) 
(define-const var1707 (Array Int ClassObject) (var1812_nullToEmpty/1403447389 var2496)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13) 
(define-const var3348 var183 (var25_getMatchingAccessibleMethod/856695000 var1538 var1105 var1707)) ; Statement: r2 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r0, r1, r15) 
 ; Statement: if r2 != null goto r16 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r2, r14) 
(assert (not (not (= var3348 null-var183)))) ; Negate: Cond: r2 != null  
(define-const var3806 var3071 var3071-init) ; Statement: $r4 = new java.lang.NoSuchMethodException 
(define-const var1443 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1443)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1443!1 String)
(assert (= var1443!1 ""))
(assert true)
(define-const var3845 String (append/672562846 var1443!1 "No such accessible method: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible method: ") 
(declare-const var1443!2 String)
(assert (= var1443!2 (str.++ var1443!1 "No such accessible method: ")))
(assert true)
(define-const var771 String (append/672562846 var3845 var1105)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3845!1 String)
(assert (= var3845!1 (str.++ var3845 var1105)))
(assert true)
(define-const var3211 String (append/672562846 var771 "() on class: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on class: ") 
(declare-const var771!1 String)
(assert (= var771!1 (str.++ var771 "() on class: ")))
(assert true)
(define-const var2024 String (getName/-1958580599 var1538)) ; Statement: $r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2760 String (append/672562846 var3211 var2024)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3211!1 String)
(assert (= var3211!1 (str.++ var3211 var2024)))
(assert true)
(define-const var1263 String (toString/-2075883882 var2760)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var3806 var1263)) ; Statement: specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11) 

(declare-const var3806!1 var3071)
(declare-const var1263!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1812_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var1812_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var25_getMatchingAccessibleMethod/856695000=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var3071-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var1538=r0, var1105=r1, var1292=null_type, var3721=java.lang.Object, var2530=r12, var2496=r13, var1812=org.apache.commons.lang3.ArrayUtils, var318=r14, var1707=r15, var183=java.lang.reflect.Method, var25=org.apache.commons.lang3.reflect.MethodUtils, var3348=r2, var3071=java.lang.NoSuchMethodException, var3806=$r4, var1443=$r5, var3845=$r6, var771=$r7, var3211=$r9, var2024=$r8, var2760=$r10, var1263=$r11}
; {r0=var1538, r1=var1105, null_type=var1292, java.lang.Object=var3721, r12=var2530, r13=var2496, org.apache.commons.lang3.ArrayUtils=var1812, r14=var318, r15=var1707, java.lang.reflect.Method=var183, org.apache.commons.lang3.reflect.MethodUtils=var25, r2=var3348, java.lang.NoSuchMethodException=var3071, $r4=var3806, $r5=var1443, $r6=var3845, $r7=var771, $r9=var3211, $r8=var2024, $r10=var2760, $r11=var1263}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.Object[];	r13 := @parameter3: java.lang.Class[];	r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12);	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13);	r2 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r0, r1, r15);	if r2 != null goto r16 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r2, r14);	$r4 = new java.lang.NoSuchMethodException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible method: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on class: ");	$r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 2