(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var373 0)
(declare-sort var2077 0)
(declare-sort var2483 0)
(declare-sort var86 0)
(declare-sort var365 0)
(declare-sort var1101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2077!class ClassObject)
(declare-const var2483!class ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var86-init () var86)
(declare-fun <init>/949559670 (var86 ClassObject Int var1101) void)
(declare-fun cast-from-var2077-to-var1101 (var2077) var1101)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var373 var373)
(declare-const var365-EMPTY_MAP var2077)
(declare-const var1672 ClassObject) ; Statement: r31 := @parameter0: java.lang.reflect.Type 
(assert (not (= var1672 null-ClassObject)))
(declare-const var1080 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var1080 null-ClassObject)))
(declare-const var2210 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var2210 null-Int)))
(define-const var566 var373 null-var373) ; Statement: r32 = null 
(define-const var3191 ClassObject var1080) ; Statement: r33 = r0 
(define-const var1482 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var1608 String (getSimpleName/-390194377 var1080)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2567 Bool (= var1482 var1608)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2567 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r0 == class "Ljava/util/Map;" goto r33 = class "Ljava/util/HashMap;" 
(assert (= var1080 var2077!class)) ; Cond: r0 == class "Ljava/util/Map;" 
(define-const var3191!1 ClassObject var2483!class) ; Statement: r33 = class "Ljava/util/HashMap;" 
 ; Statement: goto [?= $z18 = r31 instanceof java.lang.reflect.ParameterizedType] 
(assert true) ; Non Conditional
(define-const var3267 Bool true) ; Statement: $z18 = r31 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z18 == 0 goto (branch) 
(assert (= (ite var3267 1 0) 0)) ; Cond: $z18 == 0 
 ; Statement: if r31 != null goto $r40 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>() 
(assert (not (= var1672 null-ClassObject))) ; Cond: r31 != null 
(assert true)
(define-const var3578 String (getName/-1958580599 var3191!1)) ; Statement: $r40 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>() 
(define-const var2418 Int (- 1)) ; Statement: b6 = -1 
(assert true)
(define-const var2891 Int (hashCode/-467973558 var3578)) ; Statement: $i7 = virtualinvoke $r40.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i7) {     case -1693810977: goto $z10 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.SingletonImmutableBiMap");     case -603401550: goto $z9 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.alibaba.fastjson.JSONObject");     case -413661986: goto $z8 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptyMap");     case 280742075: goto $z7 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.ArrayListMultimap");     case 357076981: goto $z6 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptyMap");     case 2035427703: goto $z1 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.RegularImmutableMap");     default: goto tableswitch(b6) {     case 0: goto r32 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderImplMap: java.util.function.Function createObjectSupplier(java.lang.Class)>(r33);     case 1: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function immutableMapConverter()>();     case 2: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function singletonBiMapConverter()>();     case 3: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function createConvertFunction(java.lang.Class)>(r33);     case 4: goto r41 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Field getField(java.lang.String)>("INSTANCE");     case 5: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;     default: goto r42 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>(); }; } 
(assert (and (not (= var2891 2035427703)) (and (not (= var2891 357076981)) (and (not (= var2891 280742075)) (and (not (= var2891 (- 413661986))) (and (not (= var2891 (- 603401550))) (and (not (= var2891 (- 1693810977))) true))))))) ; Intersect: Negate: Cond: $i7 == 2035427703   and Intersect: Negate: Cond: $i7 == 357076981   and Intersect: Negate: Cond: $i7 == 280742075   and Intersect: Negate: Cond: $i7 == -413661986   and Intersect: Negate: Cond: $i7 == -603401550   and Intersect: Negate: Cond: $i7 == -1693810977   and Non Conditional      
 ; Statement: tableswitch(b6) {     case 0: goto r32 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderImplMap: java.util.function.Function createObjectSupplier(java.lang.Class)>(r33);     case 1: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function immutableMapConverter()>();     case 2: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function singletonBiMapConverter()>();     case 3: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function createConvertFunction(java.lang.Class)>(r33);     case 4: goto r41 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Field getField(java.lang.String)>("INSTANCE");     case 5: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;     default: goto r42 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>(); } 
(assert (and (= var2418 5) (and (not (= var2418 4)) (and (not (= var2418 3)) (and (not (= var2418 2)) (and (not (= var2418 1)) (and (not (= var2418 0)) true))))))) ; Intersect: Cond: b6 == 5  and Intersect: Negate: Cond: b6 == 4   and Intersect: Negate: Cond: b6 == 3   and Intersect: Negate: Cond: b6 == 2   and Intersect: Negate: Cond: b6 == 1   and Intersect: Negate: Cond: b6 == 0   and Non Conditional      
(define-const var3078 var86 var86-init) ; Statement: $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap 
(define-const var1795 var2077 var365-EMPTY_MAP) ; Statement: $r4 = <java.util.Collections: java.util.Map EMPTY_MAP> 
(assert true)
;(assert (<init>/949559670 var3078 var3191!1 var2210 (cast-from-var2077-to-var1101 var1795))) ; Statement: specialinvoke $r3.<com.alibaba.fastjson2.reader.ObjectReaderImplMap: void <init>(java.lang.Class,long,java.lang.Object)>(r33, l0, $r4) 

(declare-const var3078!1 var86)
(declare-const var3191!2 ClassObject)
(declare-const var2210!1 Int)
(declare-const var1795!1 var2077)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getSimpleName/-390194377=([java.lang.Class], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), var86-init=([], com.alibaba.fastjson2.reader.ObjectReaderImplMap), <init>/949559670=([com.alibaba.fastjson2.reader.ObjectReaderImplMap, java.lang.Class, long, java.lang.Object], void), cast-from-var2077-to-var1101=([java.util.Map], java.lang.Object)}
; {var1672=r31, var1080=r0, var2210=l0, var373=java.util.function.Function, var566=r32, var3191=r33, var1482=$r2, var1608=$r1, var2567=$z0, var2077=java.util.Map, var2483=java.util.HashMap, var3267=$z18, var3578=$r40, var2418=b6, var2891=$i7, var86=com.alibaba.fastjson2.reader.ObjectReaderImplMap, var3078=$r3, var365=java.util.Collections, var1795=$r4, var1101=java.lang.Object}
; {r31=var1672, r0=var1080, l0=var2210, java.util.function.Function=var373, r32=var566, r33=var3191, $r2=var1482, $r1=var1608, $z0=var2567, java.util.Map=var2077, java.util.HashMap=var2483, $z18=var3267, $r40=var3578, b6=var2418, $i7=var2891, com.alibaba.fastjson2.reader.ObjectReaderImplMap=var86, $r3=var3078, java.util.Collections=var365, $r4=var1795, java.lang.Object=var1101}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r31 := @parameter0: java.lang.reflect.Type;	r0 := @parameter1: java.lang.Class;	l0 := @parameter2: long;	r32 = null;	r33 = r0;	$r2 = "";	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto (branch);	if r0 == class "Ljava/util/Map;" goto r33 = class "Ljava/util/HashMap;";	r33 = class "Ljava/util/HashMap;";	goto [?= $z18 = r31 instanceof java.lang.reflect.ParameterizedType];	$z18 = r31 instanceof java.lang.reflect.ParameterizedType;	if $z18 == 0 goto (branch);	if r31 != null goto $r40 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>();	$r40 = virtualinvoke r33.<java.lang.Class: java.lang.String getName()>();	b6 = -1;	$i7 = virtualinvoke $r40.<java.lang.String: int hashCode()>();	lookupswitch($i7) {     case -1693810977: goto $z10 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.SingletonImmutableBiMap");     case -603401550: goto $z9 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.alibaba.fastjson.JSONObject");     case -413661986: goto $z8 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptyMap");     case 280742075: goto $z7 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.ArrayListMultimap");     case 357076981: goto $z6 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptyMap");     case 2035427703: goto $z1 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("com.google.common.collect.RegularImmutableMap");     default: goto tableswitch(b6) {     case 0: goto r32 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderImplMap: java.util.function.Function createObjectSupplier(java.lang.Class)>(r33);     case 1: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function immutableMapConverter()>();     case 2: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function singletonBiMapConverter()>();     case 3: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function createConvertFunction(java.lang.Class)>(r33);     case 4: goto r41 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Field getField(java.lang.String)>("INSTANCE");     case 5: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;     default: goto r42 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>(); }; };	tableswitch(b6) {     case 0: goto r32 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderImplMap: java.util.function.Function createObjectSupplier(java.lang.Class)>(r33);     case 1: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function immutableMapConverter()>();     case 2: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function singletonBiMapConverter()>();     case 3: goto r32 = staticinvoke <com.alibaba.fastjson2.util.GuavaSupport: java.util.function.Function createConvertFunction(java.lang.Class)>(r33);     case 4: goto r41 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Field getField(java.lang.String)>("INSTANCE");     case 5: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;     default: goto r42 = virtualinvoke r33.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>(); };	$r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplMap;	$r4 = <java.util.Collections: java.util.Map EMPTY_MAP>;	specialinvoke $r3.<com.alibaba.fastjson2.reader.ObjectReaderImplMap: void <init>(java.lang.Class,long,java.lang.Object)>(r33, l0, $r4);	return $r3
;block_num 8