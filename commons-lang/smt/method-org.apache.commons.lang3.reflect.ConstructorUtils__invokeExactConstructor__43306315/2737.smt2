(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var969 0)
(declare-sort var819 0)
(declare-sort var2151 0)
(declare-sort var345 0)
(declare-sort var3812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var819_nullToEmpty/627354827 ((Array Int var969)) (Array Int var969))
(declare-fun var819_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var345_getAccessibleConstructor/-450938597 (ClassObject (Array Int ClassObject)) var2151)
(declare-fun var3812-init () var3812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var3812 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var969__ (Array Int var969))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var2151 var2151)
(declare-const var1095 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1095 null-ClassObject)))
(declare-const var254 (Array Int var969)) ; Statement: r9 := @parameter1: java.lang.Object[] 
(assert (not (= var254 null-__Array__Int__var969__)))
(declare-const var999 (Array Int ClassObject)) ; Statement: r10 := @parameter2: java.lang.Class[] 
(assert (not (= var999 null-__Array__Int__ClassObject__)))
(define-const var3225 (Array Int var969) (var819_nullToEmpty/627354827 var254)) ; Statement: r11 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r9) 
(define-const var3096 (Array Int ClassObject) (var819_nullToEmpty/1403447389 var999)) ; Statement: r12 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r10) 
(define-const var3159 var2151 (var345_getAccessibleConstructor/-450938597 var1095 var3096)) ; Statement: r1 = staticinvoke <org.apache.commons.lang3.reflect.ConstructorUtils: java.lang.reflect.Constructor getAccessibleConstructor(java.lang.Class,java.lang.Class[])>(r0, r12) 
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>(r11) 
(assert (not (not (= var3159 null-var2151)))) ; Negate: Cond: r1 != null  
(define-const var3648 var3812 var3812-init) ; Statement: $r3 = new java.lang.NoSuchMethodException 
(define-const var1138 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1138)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1138!1 String)
(assert (= var1138!1 ""))
(assert true)
(define-const var477 String (append/672562846 var1138!1 "No such accessible constructor on object: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible constructor on object: ") 
(declare-const var1138!2 String)
(assert (= var1138!2 (str.++ var1138!1 "No such accessible constructor on object: ")))
(assert true)
(define-const var60 String (getName/-1958580599 var1095)) ; Statement: $r5 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var835 String (append/672562846 var477 var60)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var477!1 String)
(assert (= var477!1 (str.++ var477 var60)))
(assert true)
(define-const var2997 String (toString/-2075883882 var835)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var3648 var2997)) ; Statement: specialinvoke $r3.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r8) 

(declare-const var3648!1 var3812)
(declare-const var2997!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var819_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var819_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var345_getAccessibleConstructor/-450938597=([java.lang.Class, java.lang.Class[]], java.lang.reflect.Constructor), var3812-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var1095=r0, var969=java.lang.Object, var254=r9, var999=r10, var819=org.apache.commons.lang3.ArrayUtils, var3225=r11, var3096=r12, var2151=java.lang.reflect.Constructor, var345=org.apache.commons.lang3.reflect.ConstructorUtils, var3159=r1, var3812=java.lang.NoSuchMethodException, var3648=$r3, var1138=$r4, var477=$r6, var60=$r5, var835=$r7, var2997=$r8}
; {r0=var1095, java.lang.Object=var969, r9=var254, r10=var999, org.apache.commons.lang3.ArrayUtils=var819, r11=var3225, r12=var3096, java.lang.reflect.Constructor=var2151, org.apache.commons.lang3.reflect.ConstructorUtils=var345, r1=var3159, java.lang.NoSuchMethodException=var3812, $r3=var3648, $r4=var1138, $r6=var477, $r5=var60, $r7=var835, $r8=var2997}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r9 := @parameter1: java.lang.Object[];	r10 := @parameter2: java.lang.Class[];	r11 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r9);	r12 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r10);	r1 = staticinvoke <org.apache.commons.lang3.reflect.ConstructorUtils: java.lang.reflect.Constructor getAccessibleConstructor(java.lang.Class,java.lang.Class[])>(r0, r12);	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>(r11);	$r3 = new java.lang.NoSuchMethodException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible constructor on object: ");	$r5 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2