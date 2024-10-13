(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2490 0)
(declare-sort var2784 0)
(declare-sort var1209 0)
(declare-sort var1844 0)
(declare-sort var3130 0)
(declare-sort var394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2784!class ClassObject)
(declare-const var1209!class ClassObject)
(declare-const String!class ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-ClassObject-to-var1844 (ClassObject) var1844)
(declare-fun var1844_getActualTypeArguments/-973063842 (var1844) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-ClassObject-to-var3130 (ClassObject) var3130)
(declare-fun var394-init () var394)
(declare-fun <init>/-626957229 (var394 ClassObject ClassObject ClassObject ClassObject Int var2490) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var2490 var2490)
(declare-const var2809 ClassObject) ; Statement: r31 := @parameter0: java.lang.reflect.Type 
(assert (not (= var2809 null-ClassObject)))
(declare-const var2432 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var2432 null-ClassObject)))
(declare-const var2663 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var2663 null-Int)))
(define-const var2811 var2490 null-var2490) ; Statement: r32 = null 
(define-const var2960 ClassObject var2432) ; Statement: r33 = r0 
(define-const var1009 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var865 String (getSimpleName/-390194377 var2432)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3366 Bool (= var1009 var865)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3366 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r0 == class "Ljava/util/Map;" goto r33 = class "Ljava/util/HashMap;" 
(assert (= var2432 var2784!class)) ; Cond: r0 == class "Ljava/util/Map;" 
(define-const var2960!1 ClassObject var1209!class) ; Statement: r33 = class "Ljava/util/HashMap;" 
 ; Statement: goto [?= $z18 = r31 instanceof java.lang.reflect.ParameterizedType] 
(assert true) ; Non Conditional
(define-const var2536 Bool true) ; Statement: $z18 = r31 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z18 == 0 goto (branch) 
(assert (not (= (ite var2536 1 0) 0))) ; Negate: Cond: $z18 == 0  
(define-const var3348 var1844 (cast-from-ClassObject-to-var1844 var2809)) ; Statement: r35 = (java.lang.reflect.ParameterizedType) r31 
(define-const var2859 (Array Int ClassObject) (var1844_getActualTypeArguments/-973063842 var3348)) ; Statement: r36 = interfaceinvoke r35.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>() 
(define-const var3740 Int (getLength-Arr-ClassObject-1 var2859)) ; Statement: $i3 = lengthof r36 
 ; Statement: if $i3 != 2 goto (branch) 
(assert (not (not (= var3740 2)))) ; Negate: Cond: $i3 != 2  
(define-const var3207 String "org.springframework.util.LinkedMultiValueMap") ; Statement: $r19 = "org.springframework.util.LinkedMultiValueMap" 
(assert true)
(define-const var3460 String (getName/-1958580599 var2960!1)) ; Statement: $r18 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3605 Bool (= var3207 var3460)) ; Statement: $z11 = virtualinvoke $r19.<java.lang.String: boolean equals(java.lang.Object)>($r18) 
 ; Statement: if $z11 != 0 goto (branch) 
(assert (not (not (= (ite var3605 1 0) 0)))) ; Negate: Cond: $z11 != 0  
(define-const var2883 ClassObject (select var2859 0)) ; Statement: r37 = r36[0] 
(define-const var2440 ClassObject (select var2859 1)) ; Statement: r38 = r36[1] 
 ; Statement: if r37 != class "Ljava/lang/String;" goto $r39 = new com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped 
(assert (not (= (cast-from-ClassObject-to-var3130 var2883) (cast-from-ClassObject-to-var3130 String!class)))) ; Cond: r37 != class "Ljava/lang/String;" 
(define-const var100 var394 var394-init) ; Statement: $r39 = new com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped 
(assert true)
;(assert (<init>/-626957229 var100 var2432 var2960!1 var2883 var2440 0 var2811)) ; Statement: specialinvoke $r39.<com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped: void <init>(java.lang.Class,java.lang.Class,java.lang.reflect.Type,java.lang.reflect.Type,long,java.util.function.Function)>(r0, r33, r37, r38, 0L, r32) 

(declare-const var100!1 var394)
(declare-const var2432!1 ClassObject)
(declare-const var2960!2 ClassObject)
(declare-const var2883!1 ClassObject)
(declare-const var2440!1 ClassObject)
(declare-const var1025 Int)
(declare-const var2811!1 var2490)
 ; Statement: return $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-ClassObject-to-var1844=([java.lang.reflect.Type], java.lang.reflect.ParameterizedType), var1844_getActualTypeArguments/-973063842=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type[]), getLength-Arr-ClassObject-1=([java.lang.reflect.Type[]], int), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-ClassObject-to-var3130=([java.lang.reflect.Type], java.lang.Object), var394-init=([], com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped), <init>/-626957229=([com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped, java.lang.Class, java.lang.Class, java.lang.reflect.Type, java.lang.reflect.Type, long, java.util.function.Function], void)}
; {var2809=r31, var2432=r0, var2663=l0, var2490=java.util.function.Function, var2811=r32, var2960=r33, var1009=$r2, var865=$r1, var3366=$z0, var2784=java.util.Map, var1209=java.util.HashMap, var2536=$z18, var1844=java.lang.reflect.ParameterizedType, var3348=r35, var2859=r36, var3740=$i3, var3207=$r19, var3460=$r18, var3605=$z11, var2883=r37, var2440=r38, var3130=java.lang.Object, var394=com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped, var100=$r39, var1025=0L}
; {r31=var2809, r0=var2432, l0=var2663, java.util.function.Function=var2490, r32=var2811, r33=var2960, $r2=var1009, $r1=var865, $z0=var3366, java.util.Map=var2784, java.util.HashMap=var1209, $z18=var2536, java.lang.reflect.ParameterizedType=var1844, r35=var3348, r36=var2859, $i3=var3740, $r19=var3207, $r18=var3460, $z11=var3605, r37=var2883, r38=var2440, java.lang.Object=var3130, com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped=var394, $r39=var100, 0L=var1025}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r31 := @parameter0: java.lang.reflect.Type;	r0 := @parameter1: java.lang.Class;	l0 := @parameter2: long;	r32 = null;	r33 = r0;	$r2 = "";	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto (branch);	if r0 == class "Ljava/util/Map;" goto r33 = class "Ljava/util/HashMap;";	r33 = class "Ljava/util/HashMap;";	goto [?= $z18 = r31 instanceof java.lang.reflect.ParameterizedType];	$z18 = r31 instanceof java.lang.reflect.ParameterizedType;	if $z18 == 0 goto (branch);	r35 = (java.lang.reflect.ParameterizedType) r31;	r36 = interfaceinvoke r35.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>();	$i3 = lengthof r36;	if $i3 != 2 goto (branch);	$r19 = "org.springframework.util.LinkedMultiValueMap";	$r18 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>();	$z11 = virtualinvoke $r19.<java.lang.String: boolean equals(java.lang.Object)>($r18);	if $z11 != 0 goto (branch);	r37 = r36[0];	r38 = r36[1];	if r37 != class "Ljava/lang/String;" goto $r39 = new com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped;	$r39 = new com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped;	specialinvoke $r39.<com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped: void <init>(java.lang.Class,java.lang.Class,java.lang.reflect.Type,java.lang.reflect.Type,long,java.util.function.Function)>(r0, r33, r37, r38, 0L, r32);	return $r39
;block_num 8