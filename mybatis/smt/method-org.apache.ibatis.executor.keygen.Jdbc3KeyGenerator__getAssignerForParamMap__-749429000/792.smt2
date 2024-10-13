(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2835 0)
(declare-sort var1055 0)
(declare-sort var3737 0)
(declare-sort var3258 0)
(declare-sort var2114 0)
(declare-sort var1712 0)
(declare-sort var2284 0)
(declare-sort var948 0)
(declare-sort var3076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3258_keySet/-712633290 (var3258) var1712)
(declare-fun var1712_contains/1636690605 (var1712 var2284) Bool)
(declare-fun cast-from-String-to-var2284 (String) var2284)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var948-init () var948)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3076_toString/-32243163 (var2284) String)
(declare-fun cast-from-__Array__Int__String__-to-var2284 ((Array Int String)) var2284)
(declare-fun append/-1031950772 (String var2284) String)
(declare-fun cast-from-var1712-to-var2284 (var1712) var2284)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1671820471 (var948 String) void)
(declare-const null-var2835 var2835)
(declare-const null-var1055 var1055)
(declare-const null-var3737 var3737)
(declare-const null-Int Int)
(declare-const null-var3258 var3258)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var3413 var2835) ; Statement: r15 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator 
(assert (not (= var3413 null-var2835)))
(declare-const var1005 var1055) ; Statement: r16 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var1005 null-var1055)))
(declare-const var1726 var3737) ; Statement: r17 := @parameter1: java.sql.ResultSetMetaData 
(assert (not (= var1726 null-var3737)))
(declare-const var3807 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3807 null-Int)))
(declare-const var36 var3258) ; Statement: r0 := @parameter3: java.util.Map 
(assert (not (= var36 null-var3258)))
(declare-const var828 String) ; Statement: r2 := @parameter4: java.lang.String 
(assert (not (= var828 null-String)))
(declare-const var912 (Array Int String)) ; Statement: r8 := @parameter5: java.lang.String[] 
(assert (not (= var912 null-__Array__Int__String__)))
(declare-const var556 Bool) ; Statement: z2 := @parameter6: boolean 
(assert (not (= var556 null-Bool)))
(define-const var3315 var1712 (var3258_keySet/-712633290 var36)) ; Statement: r1 = interfaceinvoke r0.<java.util.Map: java.util.Set keySet()>() 
(define-const var2148 Bool (var1712_contains/1636690605 var3315 (cast-from-String-to-var2284 "param2"))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>("param2") 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (= (ite var2148 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1249 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(define-const var3967 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var45 Int (indexOf/-1037706067 var828 46)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46) 
(define-const var3785 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(assert (not (not (= var45 var3785)))) ; Negate: Cond: $i2 != $i4  
 ; Statement: if $z4 == 0 goto $r33 = new org.apache.ibatis.executor.ExecutorException 
(assert (= (ite var3967 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1677 var948 var948-init) ; Statement: $r33 = new org.apache.ibatis.executor.ExecutorException 
(define-const var3014 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3014)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3014!1 String)
(assert (= var3014!1 ""))
(assert true)
(define-const var2294 String (append/672562846 var3014!1 "Could not determine which parameter to assign generated keys to. Note that when there are multiple parameters, \u0027keyProperty\u0027 must include the parameter name (e.g. \u0027param.id\u0027). Specified key properties are ")) ; Statement: $r25 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine which parameter to assign generated keys to. Note that when there are multiple parameters, \'keyProperty\' must include the parameter name (e.g. \'param.id\'). Specified key properties are ") 
(declare-const var3014!2 String)
(assert (= var3014!2 (str.++ var3014!1 "Could not determine which parameter to assign generated keys to. Note that when there are multiple parameters, \u0027keyProperty\u0027 must include the parameter name (e.g. \u0027param.id\u0027). Specified key properties are ")))
(define-const var3616 String (var3076_toString/-32243163 (cast-from-__Array__Int__String__-to-var2284 var912))) ; Statement: $r24 = staticinvoke <org.apache.ibatis.reflection.ArrayUtil: java.lang.String toString(java.lang.Object)>(r8) 
(assert true)
(define-const var3156 String (append/672562846 var2294 var3616)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2294!1 String)
(assert (= var2294!1 (str.++ var2294 var3616)))
(assert true)
(define-const var1570 String (append/672562846 var3156 " and available parameters are ")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and available parameters are ") 
(declare-const var3156!1 String)
(assert (= var3156!1 (str.++ var3156 " and available parameters are ")))
(assert true)
(define-const var3847 String (append/-1031950772 var1570 (cast-from-var1712-to-var2284 var3315))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1570!1 String)
(assert (str.prefixof var1570 var1570!1))
(assert true)
(define-const var446 String (toString/-2075883882 var3847)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1671820471 var1677 var446)) ; Statement: specialinvoke $r33.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r29) 

(declare-const var1677!1 var948)
(declare-const var446!1 String)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var3258_keySet/-712633290=([java.util.Map], java.util.Set), var1712_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2284=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var948-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3076_toString/-32243163=([java.lang.Object], java.lang.String), cast-from-__Array__Int__String__-to-var2284=([java.lang.String[]], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1712-to-var2284=([java.util.Set], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1671820471=([org.apache.ibatis.executor.ExecutorException, java.lang.String], void)}
; {var2835=org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator, var3413=r15, var1055=org.apache.ibatis.session.Configuration, var1005=r16, var3737=java.sql.ResultSetMetaData, var1726=r17, var3807=i0, var3258=java.util.Map, var36=r0, var828=r2, var2114=null_type, var912=r8, var556=z2, var1712=java.util.Set, var3315=r1, var2284=java.lang.Object, var2148=$z0, var1249=$z5, var3967=$z4, var45=$i2, var3785=$i4, var948=org.apache.ibatis.executor.ExecutorException, var1677=$r33, var3014=$r32, var2294=$r25, var3076=org.apache.ibatis.reflection.ArrayUtil, var3616=$r24, var3156=$r26, var1570=$r27, var3847=$r28, var446=$r29}
; {org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator=var2835, r15=var3413, org.apache.ibatis.session.Configuration=var1055, r16=var1005, java.sql.ResultSetMetaData=var3737, r17=var1726, i0=var3807, java.util.Map=var3258, r0=var36, r2=var828, null_type=var2114, r8=var912, z2=var556, java.util.Set=var1712, r1=var3315, java.lang.Object=var2284, $z0=var2148, $z5=var1249, $z4=var3967, $i2=var45, $i4=var3785, org.apache.ibatis.executor.ExecutorException=var948, $r33=var1677, $r32=var3014, $r25=var2294, org.apache.ibatis.reflection.ArrayUtil=var3076, $r24=var3616, $r26=var3156, $r27=var1570, $r28=var3847, $r29=var446}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.reflection.ArrayUtil: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator;	r16 := @parameter0: org.apache.ibatis.session.Configuration;	r17 := @parameter1: java.sql.ResultSetMetaData;	i0 := @parameter2: int;	r0 := @parameter3: java.util.Map;	r2 := @parameter4: java.lang.String;	r8 := @parameter5: java.lang.String[];	z2 := @parameter6: boolean;	r1 = interfaceinvoke r0.<java.util.Map: java.util.Set keySet()>();	$z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>("param2");	if $z0 != 0 goto $z5 = 0;	$z5 = 0;	$z4 = 0;	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46);	$i4 = (int) -1;	if $i2 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	if $z4 == 0 goto $r33 = new org.apache.ibatis.executor.ExecutorException;	$r33 = new org.apache.ibatis.executor.ExecutorException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine which parameter to assign generated keys to. Note that when there are multiple parameters, \'keyProperty\' must include the parameter name (e.g. \'param.id\'). Specified key properties are ");	$r24 = staticinvoke <org.apache.ibatis.reflection.ArrayUtil: java.lang.String toString(java.lang.Object)>(r8);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and available parameters are ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r29);	throw $r33
;block_num 5