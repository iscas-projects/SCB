(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1066 0)
(declare-sort var2558 0)
(declare-sort var3762 0)
(declare-sort var1619 0)
(declare-sort var410 0)
(declare-sort var2465 0)
(declare-sort var241 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2558!class ClassObject)
(declare-const var3762!class ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var410-init () var410)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2465) String)
(declare-fun cast-from-ClassObject-to-var2465 (ClassObject) var2465)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var410 String var241) void)
(declare-fun cast-from-var1619-to-var241 (var1619) var241)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var1066 var1066)
(declare-const null-var1619 var1619)
(declare-const var2630 ClassObject) ; Statement: r31 := @parameter0: java.lang.reflect.Type 
(assert (not (= var2630 null-ClassObject)))
(declare-const var3036 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var3036 null-ClassObject)))
(declare-const var2384 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var2384 null-Int)))
(define-const var826 var1066 null-var1066) ; Statement: r32 = null 
(define-const var2946 ClassObject var3036) ; Statement: r33 = r0 
(define-const var1685 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var669 String (getSimpleName/-390194377 var3036)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var73 Bool (= var1685 var669)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var73 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r0 == class "Ljava/util/Map;" goto r33 = class "Ljava/util/HashMap;" 
(assert (= var3036 var2558!class)) ; Cond: r0 == class "Ljava/util/Map;" 
(define-const var2946!1 ClassObject var3762!class) ; Statement: r33 = class "Ljava/util/HashMap;" 
 ; Statement: goto [?= $z18 = r31 instanceof java.lang.reflect.ParameterizedType] 
(assert true) ; Non Conditional
(define-const var944 Bool true) ; Statement: $z18 = r31 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z18 == 0 goto (branch) 
(assert (= (ite var944 1 0) 0)) ; Cond: $z18 == 0 
 ; Statement: if r31 != null goto $r40 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>() 
(assert (not (= var2630 null-ClassObject))) ; Cond: r31 != null 
(assert true)
(define-const var2174 String (getName/-1958580599 var2946!1)) ; Statement: $r40 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>() 
(define-const var3342 Int (- 1)) ; Statement: b6 = -1 
(assert true)
(define-const var1883 Int (hashCode/-467973558 var2174)) ; Statement: $i7 = virtualinvoke $r40.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i7) {     case -1693810977: goto $z10 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.SingletonImmutableBiMap");     case -603401550: goto $z9 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.alibaba.fastjson.JSONObject");     case -413661986: goto $z8 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptyMap");     case 280742075: goto $z7 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.ArrayListMultimap");     case 357076981: goto $z6 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptyMap");     case 2035427703: goto $z1 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.RegularImmutableMap");     default: goto tableswitch(b6) {     case 0: goto r32 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderImplMap: java.util.function.Function createObjectSupplier(java.lang.Class)>(r33);     case 1: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function immutableMapConverter()>();     case 2: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function singletonBiMapConverter()>();     case 3: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function createConvertFunction(java.lang.Class)>(r33);     case 4: goto r41 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Field getField(java.lang.String)>("INSTANCE");     case 5: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;     default: goto r42 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>(); }; } 
(assert (and (not (= var1883 2035427703)) (and (not (= var1883 357076981)) (and (not (= var1883 280742075)) (and (not (= var1883 (- 413661986))) (and (not (= var1883 (- 603401550))) (and (not (= var1883 (- 1693810977))) true))))))) ; Intersect: Negate: Cond: $i7 == 2035427703   and Intersect: Negate: Cond: $i7 == 357076981   and Intersect: Negate: Cond: $i7 == 280742075   and Intersect: Negate: Cond: $i7 == -413661986   and Intersect: Negate: Cond: $i7 == -603401550   and Intersect: Negate: Cond: $i7 == -1693810977   and Non Conditional      
 ; Statement: tableswitch(b6) {     case 0: goto r32 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderImplMap: java.util.function.Function createObjectSupplier(java.lang.Class)>(r33);     case 1: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function immutableMapConverter()>();     case 2: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function singletonBiMapConverter()>();     case 3: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function createConvertFunction(java.lang.Class)>(r33);     case 4: goto r41 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Field getField(java.lang.String)>("INSTANCE");     case 5: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;     default: goto r42 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>(); } 
(assert (and (not (= var3342 5)) (and (not (= var3342 4)) (and (not (= var3342 3)) (and (not (= var3342 2)) (and (not (= var3342 1)) (and (not (= var3342 0)) true))))))) ; Intersect: Negate: Cond: b6 == 5   and Intersect: Negate: Cond: b6 == 4   and Intersect: Negate: Cond: b6 == 3   and Intersect: Negate: Cond: b6 == 2   and Intersect: Negate: Cond: b6 == 1   and Intersect: Negate: Cond: b6 == 0   and Non Conditional      
(declare-const var3965 var1619) ; Statement: $r25 := @caughtexception 
(assert (not (= var3965 null-var1619)))
(define-const var1752 var410 var410-init) ; Statement: $r26 = new java.lang.IllegalStateException 
(define-const var2443 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2443)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2443!1 String)
(assert (= var2443!1 ""))
(assert true)
(define-const var905 String (append/672562846 var2443!1 "Failed to get singleton of ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to get singleton of ") 
(declare-const var2443!2 String)
(assert (= var2443!2 (str.++ var2443!1 "Failed to get singleton of ")))
(assert true)
(define-const var797 String (append/-1031950772 var905 (cast-from-ClassObject-to-var2465 var2946!1))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r33) 
(declare-const var905!1 String)
(assert (str.prefixof var905 var905!1))
(assert true)
(define-const var219 String (toString/-2075883882 var797)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var1752 var219 (cast-from-var1619-to-var241 var3965))) ; Statement: specialinvoke $r26.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r25) 

(declare-const var1752!1 var410)
(declare-const var219!1 String)
(declare-const var3965!1 var1619)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {getSimpleName/-390194377=([java.lang.Class], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), var410-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2465=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var1619-to-var241=([java.lang.ReflectiveOperationException], java.lang.Throwable)}
; {var2630=r31, var3036=r0, var2384=l0, var1066=java.util.function.Function, var826=r32, var2946=r33, var1685=$r2, var669=$r1, var73=$z0, var2558=java.util.Map, var3762=java.util.HashMap, var944=$z18, var2174=$r40, var3342=b6, var1883=$i7, var1619=java.lang.ReflectiveOperationException, var3965=$r25, var410=java.lang.IllegalStateException, var1752=$r26, var2443=$r27, var905=$r28, var2465=java.lang.Object, var797=$r29, var219=$r30, var241=java.lang.Throwable}
; {r31=var2630, r0=var3036, l0=var2384, java.util.function.Function=var1066, r32=var826, r33=var2946, $r2=var1685, $r1=var669, $z0=var73, java.util.Map=var2558, java.util.HashMap=var3762, $z18=var944, $r40=var2174, b6=var3342, $i7=var1883, java.lang.ReflectiveOperationException=var1619, $r25=var3965, java.lang.IllegalStateException=var410, $r26=var1752, $r27=var2443, $r28=var905, java.lang.Object=var2465, $r29=var797, $r30=var219, java.lang.Throwable=var241}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r31 := @parameter0: java.lang.reflect.Type;	r0 := @parameter1: java.lang.Class;	l0 := @parameter2: long;	r32 = null;	r33 = r0;	$r2 = "";	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto (branch);	if r0 == class "Ljava/util/Map;" goto r33 = class "Ljava/util/HashMap;";	r33 = class "Ljava/util/HashMap;";	goto [?= $z18 = r31 instanceof java.lang.reflect.ParameterizedType];	$z18 = r31 instanceof java.lang.reflect.ParameterizedType;	if $z18 == 0 goto (branch);	if r31 != null goto $r40 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>();	$r40 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>();	b6 = -1;	$i7 = virtualinvoke $r40.<java.lang.String: int hashCode()>();	lookupswitch($i7) {     case -1693810977: goto $z10 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.SingletonImmutableBiMap");     case -603401550: goto $z9 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.alibaba.fastjson.JSONObject");     case -413661986: goto $z8 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptyMap");     case 280742075: goto $z7 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.ArrayListMultimap");     case 357076981: goto $z6 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptyMap");     case 2035427703: goto $z1 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.RegularImmutableMap");     default: goto tableswitch(b6) {     case 0: goto r32 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderImplMap: java.util.function.Function createObjectSupplier(java.lang.Class)>(r33);     case 1: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function immutableMapConverter()>();     case 2: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function singletonBiMapConverter()>();     case 3: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function createConvertFunction(java.lang.Class)>(r33);     case 4: goto r41 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Field getField(java.lang.String)>("INSTANCE");     case 5: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;     default: goto r42 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>(); }; };	tableswitch(b6) {     case 0: goto r32 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderImplMap: java.util.function.Function createObjectSupplier(java.lang.Class)>(r33);     case 1: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function immutableMapConverter()>();     case 2: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function singletonBiMapConverter()>();     case 3: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function createConvertFunction(java.lang.Class)>(r33);     case 4: goto r41 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Field getField(java.lang.String)>("INSTANCE");     case 5: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;     default: goto r42 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>(); };	$r25 := @caughtexception;	$r26 = new java.lang.IllegalStateException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to get singleton of ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r33);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r25);	throw $r26
;block_num 8