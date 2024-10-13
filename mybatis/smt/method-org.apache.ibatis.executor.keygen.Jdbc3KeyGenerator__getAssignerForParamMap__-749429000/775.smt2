(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2504 0)
(declare-sort var3218 0)
(declare-sort var3684 0)
(declare-sort var593 0)
(declare-sort var2692 0)
(declare-sort var2280 0)
(declare-sort var3054 0)
(declare-sort var1323 0)
(declare-sort var539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var593_keySet/-712633290 (var593) var2280)
(declare-fun var2280_contains/1636690605 (var2280 var3054) Bool)
(declare-fun cast-from-String-to-var3054 (String) var3054)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1323-init () var1323)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var539_toString/-32243163 (var3054) String)
(declare-fun cast-from-__Array__Int__String__-to-var3054 ((Array Int String)) var3054)
(declare-fun append/-1031950772 (String var3054) String)
(declare-fun cast-from-var2280-to-var3054 (var2280) var3054)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1671820471 (var1323 String) void)
(declare-const null-var2504 var2504)
(declare-const null-var3218 var3218)
(declare-const null-var3684 var3684)
(declare-const null-Int Int)
(declare-const null-var593 var593)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var422 var2504) ; Statement: r15 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator 
(assert (not (= var422 null-var2504)))
(declare-const var675 var3218) ; Statement: r16 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var675 null-var3218)))
(declare-const var2969 var3684) ; Statement: r17 := @parameter1: java.sql.ResultSetMetaData 
(assert (not (= var2969 null-var3684)))
(declare-const var862 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var862 null-Int)))
(declare-const var2785 var593) ; Statement: r0 := @parameter3: java.util.Map 
(assert (not (= var2785 null-var593)))
(declare-const var2117 String) ; Statement: r2 := @parameter4: java.lang.String 
(assert (not (= var2117 null-String)))
(declare-const var3081 (Array Int String)) ; Statement: r8 := @parameter5: java.lang.String[] 
(assert (not (= var3081 null-__Array__Int__String__)))
(declare-const var1727 Bool) ; Statement: z2 := @parameter6: boolean 
(assert (not (= var1727 null-Bool)))
(define-const var3899 var2280 (var593_keySet/-712633290 var2785)) ; Statement: r1 = interfaceinvoke r0.<java.util.Map: java.util.Set keySet()>() 
(define-const var540 Bool (var2280_contains/1636690605 var3899 (cast-from-String-to-var3054 "param2"))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>("param2") 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (not (= (ite var540 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3860 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
(define-const var669 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46)] 
(assert true) ; Non Conditional
(assert true)
(define-const var187 Int (indexOf/-1037706067 var2117 46)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46) 
(define-const var3487 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(assert (not (not (= var187 var3487)))) ; Negate: Cond: $i2 != $i4  
 ; Statement: if $z4 == 0 goto $r33 = new org.apache.ibatis.executor.ExecutorException 
(assert (= (ite var669 1 0) 0)) ; Cond: $z4 == 0 
(define-const var2521 var1323 var1323-init) ; Statement: $r33 = new org.apache.ibatis.executor.ExecutorException 
(define-const var512 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var512)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var512!1 String)
(assert (= var512!1 ""))
(assert true)
(define-const var894 String (append/672562846 var512!1 "Could not determine which parameter to assign generated keys to. Note that when there are multiple parameters, \u0027keyProperty\u0027 must include the parameter name (e.g. \u0027param.id\u0027). Specified key properties are ")) ; Statement: $r25 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine which parameter to assign generated keys to. Note that when there are multiple parameters, \'keyProperty\' must include the parameter name (e.g. \'param.id\'). Specified key properties are ") 
(declare-const var512!2 String)
(assert (= var512!2 (str.++ var512!1 "Could not determine which parameter to assign generated keys to. Note that when there are multiple parameters, \u0027keyProperty\u0027 must include the parameter name (e.g. \u0027param.id\u0027). Specified key properties are ")))
(define-const var2766 String (var539_toString/-32243163 (cast-from-__Array__Int__String__-to-var3054 var3081))) ; Statement: $r24 = staticinvoke <org.apache.ibatis.reflection.ArrayUtil: java.lang.String toString(java.lang.Object)>(r8) 
(assert true)
(define-const var1821 String (append/672562846 var894 var2766)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var894!1 String)
(assert (= var894!1 (str.++ var894 var2766)))
(assert true)
(define-const var2467 String (append/672562846 var1821 " and available parameters are ")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and available parameters are ") 
(declare-const var1821!1 String)
(assert (= var1821!1 (str.++ var1821 " and available parameters are ")))
(assert true)
(define-const var2690 String (append/-1031950772 var2467 (cast-from-var2280-to-var3054 var3899))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2467!1 String)
(assert (str.prefixof var2467 var2467!1))
(assert true)
(define-const var1362 String (toString/-2075883882 var2690)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1671820471 var2521 var1362)) ; Statement: specialinvoke $r33.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r29) 

(declare-const var2521!1 var1323)
(declare-const var1362!1 String)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var593_keySet/-712633290=([java.util.Map], java.util.Set), var2280_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var3054=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var1323-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var539_toString/-32243163=([java.lang.Object], java.lang.String), cast-from-__Array__Int__String__-to-var3054=([java.lang.String[]], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2280-to-var3054=([java.util.Set], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1671820471=([org.apache.ibatis.executor.ExecutorException, java.lang.String], void)}
; {var2504=org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator, var422=r15, var3218=org.apache.ibatis.session.Configuration, var675=r16, var3684=java.sql.ResultSetMetaData, var2969=r17, var862=i0, var593=java.util.Map, var2785=r0, var2117=r2, var2692=null_type, var3081=r8, var1727=z2, var2280=java.util.Set, var3899=r1, var3054=java.lang.Object, var540=$z0, var3860=$z5, var669=$z4, var187=$i2, var3487=$i4, var1323=org.apache.ibatis.executor.ExecutorException, var2521=$r33, var512=$r32, var894=$r25, var539=org.apache.ibatis.reflection.ArrayUtil, var2766=$r24, var1821=$r26, var2467=$r27, var2690=$r28, var1362=$r29}
; {org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator=var2504, r15=var422, org.apache.ibatis.session.Configuration=var3218, r16=var675, java.sql.ResultSetMetaData=var3684, r17=var2969, i0=var862, java.util.Map=var593, r0=var2785, r2=var2117, null_type=var2692, r8=var3081, z2=var1727, java.util.Set=var2280, r1=var3899, java.lang.Object=var3054, $z0=var540, $z5=var3860, $z4=var669, $i2=var187, $i4=var3487, org.apache.ibatis.executor.ExecutorException=var1323, $r33=var2521, $r32=var512, $r25=var894, org.apache.ibatis.reflection.ArrayUtil=var539, $r24=var2766, $r26=var1821, $r27=var2467, $r28=var2690, $r29=var1362}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.reflection.ArrayUtil: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator;	r16 := @parameter0: org.apache.ibatis.session.Configuration;	r17 := @parameter1: java.sql.ResultSetMetaData;	i0 := @parameter2: int;	r0 := @parameter3: java.util.Map;	r2 := @parameter4: java.lang.String;	r8 := @parameter5: java.lang.String[];	z2 := @parameter6: boolean;	r1 = interfaceinvoke r0.<java.util.Map: java.util.Set keySet()>();	$z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>("param2");	if $z0 != 0 goto $z5 = 0;	$z5 = 1;	$z4 = 1;	goto [?= $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46)];	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46);	$i4 = (int) -1;	if $i2 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	if $z4 == 0 goto $r33 = new org.apache.ibatis.executor.ExecutorException;	$r33 = new org.apache.ibatis.executor.ExecutorException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine which parameter to assign generated keys to. Note that when there are multiple parameters, \'keyProperty\' must include the parameter name (e.g. \'param.id\'). Specified key properties are ");	$r24 = staticinvoke <org.apache.ibatis.reflection.ArrayUtil: java.lang.String toString(java.lang.Object)>(r8);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and available parameters are ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r29);	throw $r33
;block_num 5