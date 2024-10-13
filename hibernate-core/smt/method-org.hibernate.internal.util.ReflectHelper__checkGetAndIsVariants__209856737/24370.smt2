(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var696 0)
(declare-sort var2740 0)
(declare-sort var986 0)
(declare-sort var210 0)
(declare-sort var2621 0)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReturnType/-1494237887 (var2740) ClassObject)
(declare-fun equals/-1650223740 (var986 var986) Bool)
(declare-fun cast-from-ClassObject-to-var986 (ClassObject) var986)
(declare-fun var210-init () var210)
(declare-fun arr-var986-init () (Array Int var986))
(declare-fun cast-from-String-to-var986 (String) var986)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun toString/-1020660066 (var2740) String)
(declare-fun String_format/-647569892 (var2621 String (Array Int var986)) String)
(declare-fun <init>/-1350304819 (var210 String) void)
(declare-fun cast-from-var210-to-var3422 (var210) var3422)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2740 var2740)
(declare-const var2621-ROOT var2621)
(declare-const null-__Array__Int__var986__ (Array Int var986))
(declare-const var3979 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3979 null-ClassObject)))
(declare-const var1697 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1697 null-String)))
(declare-const var2618 var2740) ; Statement: r1 := @parameter2: java.lang.reflect.Method 
(assert (not (= var2618 null-var2740)))
(declare-const var2815 var2740) ; Statement: r0 := @parameter3: java.lang.reflect.Method 
(assert (not (= var2815 null-var2740)))
(assert true)
(define-const var1786 ClassObject (getReturnType/-1494237887 var2815)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert true)
(define-const var2892 ClassObject (getReturnType/-1494237887 var2618)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert true)
(define-const var3904 Bool (equals/-1650223740 (cast-from-ClassObject-to-var986 var1786) (cast-from-ClassObject-to-var986 var2892))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3904 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1472 var210 var210-init) ; Statement: $r13 = new org.hibernate.MappingException 
(define-const var15 var2621 var2621-ROOT) ; Statement: $r8 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3704 (Array Int var986) arr-var986-init) ; Statement: $r5 = newarray (java.lang.Object)[4] 
(declare-const var3704!1 (Array Int var986))
(assert (not (= var3704!1 null-__Array__Int__var986__)))
(assert (= (select var3704!1 0) (cast-from-String-to-var986 var1697))) ; Statement: $r5[0] = r6 
(assert true)
(define-const var3534 String (getName/-1958580599 var3979)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>() 
(declare-const var3704!2 (Array Int var986))
(assert (not (= var3704!2 null-__Array__Int__var986__)))
(assert (= (select var3704!2 1) (cast-from-String-to-var986 var3534))) ; Statement: $r5[1] = $r9 
(assert true)
(define-const var1412 String (toString/-1020660066 var2618)) ; Statement: $r10 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String toString()>() 
(declare-const var3704!3 (Array Int var986))
(assert (not (= var3704!3 null-__Array__Int__var986__)))
(assert (= (select var3704!3 2) (cast-from-String-to-var986 var1412))) ; Statement: $r5[2] = $r10 
(assert true)
(define-const var2852 String (toString/-1020660066 var2815)) ; Statement: $r11 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toString()>() 
(declare-const var3704!4 (Array Int var986))
(assert (not (= var3704!4 null-__Array__Int__var986__)))
(assert (= (select var3704!4 3) (cast-from-String-to-var986 var2852))) ; Statement: $r5[3] = $r11 
(define-const var3679 String (String_format/-647569892 var15 "In trying to locate getter for property [%s], Class [%s] defined both a `get` [%s] and `is` [%s] variant" var3704!4)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "In trying to locate getter for property [%s], Class [%s] defined both a `get` [%s] and `is` [%s] variant", $r5) 
(assert true)
;(assert (<init>/-1350304819 var1472 var3679)) ; Statement: specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r12) 

(declare-const var1472!1 var210)
(declare-const var3679!1 String)
(define-const var3460 var3422 (cast-from-var210-to-var3422 var1472!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var986=([java.lang.Class], java.lang.Object), var210-init=([], org.hibernate.MappingException), arr-var986-init=([], java.lang.Object[]), cast-from-String-to-var986=([java.lang.String], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-1020660066=([java.lang.reflect.Method], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var210-to-var3422=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3979=r7, var1697=r6, var696=null_type, var2740=java.lang.reflect.Method, var2618=r1, var2815=r0, var1786=$r3, var2892=$r2, var986=java.lang.Object, var3904=$z0, var210=org.hibernate.MappingException, var1472=$r13, var2621=java.util.Locale, var15=$r8, var3704=$r5, var3534=$r9, var1412=$r10, var2852=$r11, var3679=$r12, var3422=java.lang.Throwable, var3460=$r14}
; {r7=var3979, r6=var1697, null_type=var696, java.lang.reflect.Method=var2740, r1=var2618, r0=var2815, $r3=var1786, $r2=var2892, java.lang.Object=var986, $z0=var3904, org.hibernate.MappingException=var210, $r13=var1472, java.util.Locale=var2621, $r8=var15, $r5=var3704, $r9=var3534, $r10=var1412, $r11=var2852, $r12=var3679, java.lang.Throwable=var3422, $r14=var3460}
;seq <java.lang.reflect.Method: java.lang.String toString()>;	<java.lang.reflect.Method: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @parameter0: java.lang.Class;	r6 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.reflect.Method;	r0 := @parameter3: java.lang.reflect.Method;	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto return;	$r13 = new org.hibernate.MappingException;	$r8 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = newarray (java.lang.Object)[4];	$r5[0] = r6;	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>();	$r5[1] = $r9;	$r10 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String toString()>();	$r5[2] = $r10;	$r11 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toString()>();	$r5[3] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "In trying to locate getter for property [%s], Class [%s] defined both a `get` [%s] and `is` [%s] variant", $r5);	specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r12);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2