(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3818 0)
(declare-sort var3491 0)
(declare-sort var2803 0)
(declare-sort var2545 0)
(declare-sort var2475 0)
(declare-sort var3710 0)
(declare-sort var3098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2803_requireNonNull/1378936425 (var3818 String) var3818)
(declare-fun var2545_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var2545_nullToEmpty/627354827 ((Array Int var3818)) (Array Int var3818))
(declare-fun getClass/1258963082 (var3818) ClassObject)
(declare-fun var3710_getMatchingAccessibleMethod/856695000 (ClassObject String (Array Int ClassObject)) var2475)
(declare-fun var3098-init () var3098)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var3098 String) void)
(declare-const null-var3818 var3818)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-__Array__Int__var3818__ (Array Int var3818))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var2475 var2475)
(declare-const var1811 var3818) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1811 null-var3818)))
(declare-const var2502 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2502 null-Bool)))
(declare-const var1665 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1665 null-String)))
(declare-const var2040 (Array Int var3818)) ; Statement: r12 := @parameter3: java.lang.Object[] 
(assert (not (= var2040 null-__Array__Int__var3818__)))
(declare-const var408 (Array Int ClassObject)) ; Statement: r13 := @parameter4: java.lang.Class[] 
(assert (not (= var408 null-__Array__Int__ClassObject__)))
;(assert (var2803_requireNonNull/1378936425 var1811 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var1811!1 var3818)
(declare-const var2136 String)
(define-const var1660 (Array Int ClassObject) (var2545_nullToEmpty/1403447389 var408)) ; Statement: r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13) 
(define-const var2962 (Array Int var3818) (var2545_nullToEmpty/627354827 var2040)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12) 
(assert true)
(define-const var3782 ClassObject (getClass/1258963082 var1811!1)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if z0 == 0 goto r16 = "No such accessible method: " 
(assert (= (ite var2502 1 0) 0)) ; Cond: z0 == 0 
(define-const var3969 String "No such accessible method: ") ; Statement: r16 = "No such accessible method: " 
(define-const var2391 var2475 (var3710_getMatchingAccessibleMethod/856695000 var3782 var1665 var1660)) ; Statement: r17 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r14) 
(assert true) ; Non Conditional
 ; Statement: if r17 != null goto r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15) 
(assert (not (not (= var2391 null-var2475)))) ; Negate: Cond: r17 != null  
(define-const var3043 var3098 var3098-init) ; Statement: $r4 = new java.lang.NoSuchMethodException 
(define-const var3977 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3977)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3977!1 String)
(assert (= var3977!1 ""))
(assert true)
(define-const var3863 String (append/672562846 var3977!1 var3969)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16) 
(declare-const var3977!2 String)
(assert (= var3977!2 (str.++ var3977!1 var3969)))
(assert true)
(define-const var577 String (append/672562846 var3863 var1665)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3863!1 String)
(assert (= var3863!1 (str.++ var3863 var1665)))
(assert true)
(define-const var2857 String (append/672562846 var577 "() on object: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on object: ") 
(declare-const var577!1 String)
(assert (= var577!1 (str.++ var577 "() on object: ")))
(assert true)
(define-const var2945 String (getName/-1958580599 var3782)) ; Statement: $r8 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2642 String (append/672562846 var2857 var2945)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2857!1 String)
(assert (= var2857!1 (str.++ var2857 var2945)))
(assert true)
(define-const var718 String (toString/-2075883882 var2642)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var3043 var718)) ; Statement: specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11) 

(declare-const var3043!1 var3098)
(declare-const var718!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2803_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), var2545_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var2545_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), var3710_getMatchingAccessibleMethod/856695000=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var3098-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var3818=java.lang.Object, var1811=r0, var2502=z0, var1665=r2, var3491=null_type, var2040=r12, var408=r13, var2803=java.util.Objects, var2136="object", var2545=org.apache.commons.lang3.ArrayUtils, var1660=r14, var2962=r15, var3782=r1, var3969=r16, var2475=java.lang.reflect.Method, var3710=org.apache.commons.lang3.reflect.MethodUtils, var2391=r17, var3098=java.lang.NoSuchMethodException, var3043=$r4, var3977=$r5, var3863=$r6, var577=$r7, var2857=$r9, var2945=$r8, var2642=$r10, var718=$r11}
; {java.lang.Object=var3818, r0=var1811, z0=var2502, r2=var1665, null_type=var3491, r12=var2040, r13=var408, java.util.Objects=var2803, "object"=var2136, org.apache.commons.lang3.ArrayUtils=var2545, r14=var1660, r15=var2962, r1=var3782, r16=var3969, java.lang.reflect.Method=var2475, org.apache.commons.lang3.reflect.MethodUtils=var3710, r17=var2391, java.lang.NoSuchMethodException=var3098, $r4=var3043, $r5=var3977, $r6=var3863, $r7=var577, $r9=var2857, $r8=var2945, $r10=var2642, $r11=var718}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	z0 := @parameter1: boolean;	r2 := @parameter2: java.lang.String;	r12 := @parameter3: java.lang.Object[];	r13 := @parameter4: java.lang.Class[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13);	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12);	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	if z0 == 0 goto r16 = "No such accessible method: ";	r16 = "No such accessible method: ";	r17 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r14);	if r17 != null goto r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15);	$r4 = new java.lang.NoSuchMethodException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on object: ");	$r8 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 4