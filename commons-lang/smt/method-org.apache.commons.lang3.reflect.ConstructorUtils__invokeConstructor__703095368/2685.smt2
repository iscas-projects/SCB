(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3817 0)
(declare-sort var1658 0)
(declare-sort var1337 0)
(declare-sort var1081 0)
(declare-sort var1212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1658_nullToEmpty/627354827 ((Array Int var3817)) (Array Int var3817))
(declare-fun var1658_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var1081_getMatchingAccessibleConstructor/-1470579810 (ClassObject (Array Int ClassObject)) var1337)
(declare-fun var1212-init () var1212)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var1212 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var3817__ (Array Int var3817))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1337 var1337)
(declare-const var745 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var745 null-ClassObject)))
(declare-const var1791 (Array Int var3817)) ; Statement: r10 := @parameter1: java.lang.Object[] 
(assert (not (= var1791 null-__Array__Int__var3817__)))
(declare-const var3512 (Array Int ClassObject)) ; Statement: r11 := @parameter2: java.lang.Class[] 
(assert (not (= var3512 null-__Array__Int__ClassObject__)))
(define-const var1990 (Array Int var3817) (var1658_nullToEmpty/627354827 var1791)) ; Statement: r12 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r10) 
(define-const var1343 (Array Int ClassObject) (var1658_nullToEmpty/1403447389 var3512)) ; Statement: r13 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r11) 
(define-const var3721 var1337 (var1081_getMatchingAccessibleConstructor/-1470579810 var745 var1343)) ; Statement: r1 = staticinvoke <org.apache.commons.lang3.reflect.ConstructorUtils: java.lang.reflect.Constructor getMatchingAccessibleConstructor(java.lang.Class,java.lang.Class[])>(r0, r13) 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.reflect.Constructor: boolean isVarArgs()>() 
(assert (not (not (= var3721 null-var1337)))) ; Negate: Cond: r1 != null  
(define-const var3451 var1212 var1212-init) ; Statement: $r4 = new java.lang.NoSuchMethodException 
(define-const var3244 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3244)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3244!1 String)
(assert (= var3244!1 ""))
(assert true)
(define-const var696 String (append/672562846 var3244!1 "No such accessible constructor on object: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible constructor on object: ") 
(declare-const var3244!2 String)
(assert (= var3244!2 (str.++ var3244!1 "No such accessible constructor on object: ")))
(assert true)
(define-const var1599 String (getName/-1958580599 var745)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2118 String (append/672562846 var696 var1599)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var696!1 String)
(assert (= var696!1 (str.++ var696 var1599)))
(assert true)
(define-const var3275 String (toString/-2075883882 var2118)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var3451 var3275)) ; Statement: specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r9) 

(declare-const var3451!1 var1212)
(declare-const var3275!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1658_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var1658_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var1081_getMatchingAccessibleConstructor/-1470579810=([java.lang.Class, java.lang.Class[]], java.lang.reflect.Constructor), var1212-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var745=r0, var3817=java.lang.Object, var1791=r10, var3512=r11, var1658=org.apache.commons.lang3.ArrayUtils, var1990=r12, var1343=r13, var1337=java.lang.reflect.Constructor, var1081=org.apache.commons.lang3.reflect.ConstructorUtils, var3721=r1, var1212=java.lang.NoSuchMethodException, var3451=$r4, var3244=$r5, var696=$r7, var1599=$r6, var2118=$r8, var3275=$r9}
; {r0=var745, java.lang.Object=var3817, r10=var1791, r11=var3512, org.apache.commons.lang3.ArrayUtils=var1658, r12=var1990, r13=var1343, java.lang.reflect.Constructor=var1337, org.apache.commons.lang3.reflect.ConstructorUtils=var1081, r1=var3721, java.lang.NoSuchMethodException=var1212, $r4=var3451, $r5=var3244, $r7=var696, $r6=var1599, $r8=var2118, $r9=var3275}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r10 := @parameter1: java.lang.Object[];	r11 := @parameter2: java.lang.Class[];	r12 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r10);	r13 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r11);	r1 = staticinvoke <org.apache.commons.lang3.reflect.ConstructorUtils: java.lang.reflect.Constructor getMatchingAccessibleConstructor(java.lang.Class,java.lang.Class[])>(r0, r13);	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.reflect.Constructor: boolean isVarArgs()>();	$r4 = new java.lang.NoSuchMethodException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such accessible constructor on object: ");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2