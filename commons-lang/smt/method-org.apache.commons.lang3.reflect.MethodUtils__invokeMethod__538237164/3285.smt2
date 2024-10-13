(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1970 0)
(declare-sort var435 0)
(declare-sort var3839 0)
(declare-sort var3950 0)
(declare-sort var1650 0)
(declare-sort var3742 0)
(declare-sort var870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3839_requireNonNull/1378936425 (var1970 String) var1970)
(declare-fun var3950_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var3950_nullToEmpty/627354827 ((Array Int var1970)) (Array Int var1970))
(declare-fun getClass/1258963082 (var1970) ClassObject)
(declare-fun var3742_getMatchingMethod/737181742 (ClassObject String (Array Int ClassObject)) var1650)
(declare-fun var870-init () var870)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var870 String) void)
(declare-const null-var1970 var1970)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-__Array__Int__var1970__ (Array Int var1970))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1650 var1650)
(declare-const var2860 var1970) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2860 null-var1970)))
(declare-const var947 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var947 null-Bool)))
(declare-const var428 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var428 null-String)))
(declare-const var543 (Array Int var1970)) ; Statement: r12 := @parameter3: java.lang.Object[] 
(assert (not (= var543 null-__Array__Int__var1970__)))
(declare-const var3221 (Array Int ClassObject)) ; Statement: r13 := @parameter4: java.lang.Class[] 
(assert (not (= var3221 null-__Array__Int__ClassObject__)))
;(assert (var3839_requireNonNull/1378936425 var2860 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var2860!1 var1970)
(declare-const var3406 String)
(define-const var3415 (Array Int ClassObject) (var3950_nullToEmpty/1403447389 var3221)) ; Statement: r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13) 
(define-const var1512 (Array Int var1970) (var3950_nullToEmpty/627354827 var543)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12) 
(assert true)
(define-const var372 ClassObject (getClass/1258963082 var2860!1)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if z0 == 0 goto r16 = "No such accessible method: " 
(assert (not (= (ite var947 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2004 String "No such method: ") ; Statement: r16 = "No such method: " 
(define-const var252 var1650 (var3742_getMatchingMethod/737181742 var372 var428 var3415)) ; Statement: r17 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r14) 
 ; Statement: if r17 == null goto (branch) 
(assert (= var252 null-var1650)) ; Cond: r17 == null 
 ; Statement: if r17 != null goto r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15) 
(assert (not (not (= var252 null-var1650)))) ; Negate: Cond: r17 != null  
(define-const var2902 var870 var870-init) ; Statement: $r4 = new java.lang.NoSuchMethodException 
(define-const var1077 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1077)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1077!1 String)
(assert (= var1077!1 ""))
(assert true)
(define-const var1448 String (append/672562846 var1077!1 var2004)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16) 
(declare-const var1077!2 String)
(assert (= var1077!2 (str.++ var1077!1 var2004)))
(assert true)
(define-const var231 String (append/672562846 var1448 var428)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1448!1 String)
(assert (= var1448!1 (str.++ var1448 var428)))
(assert true)
(define-const var3910 String (append/672562846 var231 "() on object: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on object: ") 
(declare-const var231!1 String)
(assert (= var231!1 (str.++ var231 "() on object: ")))
(assert true)
(define-const var3973 String (getName/-1958580599 var372)) ; Statement: $r8 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var673 String (append/672562846 var3910 var3973)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3910!1 String)
(assert (= var3910!1 (str.++ var3910 var3973)))
(assert true)
(define-const var824 String (toString/-2075883882 var673)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var2902 var824)) ; Statement: specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11) 

(declare-const var2902!1 var870)
(declare-const var824!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3839_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), var3950_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var3950_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), var3742_getMatchingMethod/737181742=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var870-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var1970=java.lang.Object, var2860=r0, var947=z0, var428=r2, var435=null_type, var543=r12, var3221=r13, var3839=java.util.Objects, var3406="object", var3950=org.apache.commons.lang3.ArrayUtils, var3415=r14, var1512=r15, var372=r1, var2004=r16, var1650=java.lang.reflect.Method, var3742=org.apache.commons.lang3.reflect.MethodUtils, var252=r17, var870=java.lang.NoSuchMethodException, var2902=$r4, var1077=$r5, var1448=$r6, var231=$r7, var3910=$r9, var3973=$r8, var673=$r10, var824=$r11}
; {java.lang.Object=var1970, r0=var2860, z0=var947, r2=var428, null_type=var435, r12=var543, r13=var3221, java.util.Objects=var3839, "object"=var3406, org.apache.commons.lang3.ArrayUtils=var3950, r14=var3415, r15=var1512, r1=var372, r16=var2004, java.lang.reflect.Method=var1650, org.apache.commons.lang3.reflect.MethodUtils=var3742, r17=var252, java.lang.NoSuchMethodException=var870, $r4=var2902, $r5=var1077, $r6=var1448, $r7=var231, $r9=var3910, $r8=var3973, $r10=var673, $r11=var824}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	z0 := @parameter1: boolean;	r2 := @parameter2: java.lang.String;	r12 := @parameter3: java.lang.Object[];	r13 := @parameter4: java.lang.Class[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13);	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12);	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	if z0 == 0 goto r16 = "No such accessible method: ";	r16 = "No such method: ";	r17 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r14);	if r17 == null goto (branch);	if r17 != null goto r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15);	$r4 = new java.lang.NoSuchMethodException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() on object: ");	$r8 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 4