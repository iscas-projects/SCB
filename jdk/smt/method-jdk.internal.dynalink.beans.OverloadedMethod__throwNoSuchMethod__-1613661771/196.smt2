(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var860 0)
(declare-sort var1306 0)
(declare-sort var1827 0)
(declare-sort var2392 0)
(declare-sort var959 0)
(declare-sort var1478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun varArgMethods/1566026269 (var860) var1306)
(declare-fun isEmpty/1321303667 (var1306) Bool)
(declare-fun var1827-init () var1827)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fixArgMethods/1566026269 (var860) var1306)
(declare-fun var860_getSignatureList/91443967 (var2392) String)
(declare-fun cast-from-var1306-to-var2392 (var1306) var2392)
(declare-fun parent/1566026269 (var860) var959)
(declare-fun getName/191485936 (var1478) String)
(declare-fun cast-from-var959-to-var1478 (var959) var1478)
(declare-fun var860_argTypesString/1562103107 ((Array Int ClassObject)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var1827 String) void)
(declare-const null-var860 var860)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2806 var860) ; Statement: r0 := @this: jdk.internal.dynalink.beans.OverloadedMethod 
(assert (not (= var2806 null-var860)))
(declare-const var866 (Array Int ClassObject)) ; Statement: r16 := @parameter0: java.lang.Class[] 
(assert (not (= var866 null-__Array__Int__ClassObject__)))
(define-const var728 var1306 (varArgMethods/1566026269 var2806)) ; Statement: $r1 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList varArgMethods> 
(assert true)
(define-const var1291 Bool (isEmpty/1321303667 var728)) ; Statement: $z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.NoSuchMethodException 
(assert (not (= (ite var1291 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2198 var1827 var1827-init) ; Statement: $r21 = new java.lang.NoSuchMethodException 
(define-const var147 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var147)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var147!1 String)
(assert (= var147!1 ""))
(assert true)
(define-const var3216 String (append/672562846 var147!1 "None of the fixed arity signatures ")) ; Statement: $r25 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("None of the fixed arity signatures ") 
(declare-const var147!2 String)
(assert (= var147!2 (str.++ var147!1 "None of the fixed arity signatures ")))
(define-const var1761 var1306 (fixArgMethods/1566026269 var2806)) ; Statement: $r23 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList fixArgMethods> 
(define-const var3674 String (var860_getSignatureList/91443967 (cast-from-var1306-to-var2392 var1761))) ; Statement: $r24 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>($r23) 
(assert true)
(define-const var2222 String (append/672562846 var3216 var3674)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var3216!1 String)
(assert (= var3216!1 (str.++ var3216 var3674)))
(assert true)
(define-const var2774 String (append/672562846 var2222 " of method ")) ; Statement: $r29 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of method ") 
(declare-const var2222!1 String)
(assert (= var2222!1 (str.++ var2222 " of method ")))
(define-const var3127 var959 (parent/1566026269 var2806)) ; Statement: $r27 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: jdk.internal.dynalink.beans.OverloadedDynamicMethod parent> 
(assert true)
(define-const var997 String (getName/191485936 (cast-from-var959-to-var1478 var3127))) ; Statement: $r28 = virtualinvoke $r27.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>() 
(assert true)
(define-const var3441 String (append/672562846 var2774 var997)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var2774!1 String)
(assert (= var2774!1 (str.++ var2774 var997)))
(assert true)
(define-const var3343 String (append/672562846 var3441 " match the argument types ")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" match the argument types ") 
(declare-const var3441!1 String)
(assert (= var3441!1 (str.++ var3441 " match the argument types ")))
(define-const var1479 String (var860_argTypesString/1562103107 var866)) ; Statement: $r31 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String argTypesString(java.lang.Class[])>(r16) 
(assert true)
(define-const var1281 String (append/672562846 var3343 var1479)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var3343!1 String)
(assert (= var3343!1 (str.++ var3343 var1479)))
(assert true)
(define-const var970 String (toString/-2075883882 var1281)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var2198 var970)) ; Statement: specialinvoke $r21.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r34) 

(declare-const var2198!1 var1827)
(declare-const var970!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {varArgMethods/1566026269=([jdk.internal.dynalink.beans.OverloadedMethod], java.util.ArrayList), isEmpty/1321303667=([java.util.ArrayList], boolean), var1827-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fixArgMethods/1566026269=([jdk.internal.dynalink.beans.OverloadedMethod], java.util.ArrayList), var860_getSignatureList/91443967=([java.util.List], java.lang.String), cast-from-var1306-to-var2392=([java.util.ArrayList], java.util.List), parent/1566026269=([jdk.internal.dynalink.beans.OverloadedMethod], jdk.internal.dynalink.beans.OverloadedDynamicMethod), getName/191485936=([jdk.internal.dynalink.beans.DynamicMethod], java.lang.String), cast-from-var959-to-var1478=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], jdk.internal.dynalink.beans.DynamicMethod), var860_argTypesString/1562103107=([java.lang.Class[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var860=jdk.internal.dynalink.beans.OverloadedMethod, var2806=r0, var866=r16, var1306=java.util.ArrayList, var728=$r1, var1291=$z0, var1827=java.lang.NoSuchMethodException, var2198=$r21, var147=$r22, var3216=$r25, var1761=$r23, var2392=java.util.List, var3674=$r24, var2222=$r26, var2774=$r29, var959=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var3127=$r27, var1478=jdk.internal.dynalink.beans.DynamicMethod, var997=$r28, var3441=$r30, var3343=$r32, var1479=$r31, var1281=$r33, var970=$r34}
; {jdk.internal.dynalink.beans.OverloadedMethod=var860, r0=var2806, r16=var866, java.util.ArrayList=var1306, $r1=var728, $z0=var1291, java.lang.NoSuchMethodException=var1827, $r21=var2198, $r22=var147, $r25=var3216, $r23=var1761, java.util.List=var2392, $r24=var3674, $r26=var2222, $r29=var2774, jdk.internal.dynalink.beans.OverloadedDynamicMethod=var959, $r27=var3127, jdk.internal.dynalink.beans.DynamicMethod=var1478, $r28=var997, $r30=var3441, $r32=var3343, $r31=var1479, $r33=var1281, $r34=var970}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.beans.OverloadedMethod;	r16 := @parameter0: java.lang.Class[];	$r1 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList varArgMethods>;	$z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>();	if $z0 == 0 goto $r2 = new java.lang.NoSuchMethodException;	$r21 = new java.lang.NoSuchMethodException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("None of the fixed arity signatures ");	$r23 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList fixArgMethods>;	$r24 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r29 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of method ");	$r27 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: jdk.internal.dynalink.beans.OverloadedDynamicMethod parent>;	$r28 = virtualinvoke $r27.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" match the argument types ");	$r31 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String argTypesString(java.lang.Class[])>(r16);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r34);	throw $r21
;block_num 2