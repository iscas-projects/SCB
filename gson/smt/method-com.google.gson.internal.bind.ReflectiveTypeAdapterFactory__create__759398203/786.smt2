(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3636 0)
(declare-sort var3232 0)
(declare-sort var888 0)
(declare-sort var3625 0)
(declare-sort var1052 0)
(declare-sort var2161 0)
(declare-sort var2512 0)
(declare-sort var2465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3625!class ClassObject)
(declare-fun getRawType/-1972956808 (var888) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun reflectionFilters/-1188528757 (var3636) var1052)
(declare-fun var2512_getFilterResult/1273822438 (var1052 ClassObject) var2161)
(declare-fun var2465-init () var2465)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3625) String)
(declare-fun cast-from-ClassObject-to-var3625 (ClassObject) var3625)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1993171084 (var2465 String) void)
(declare-const null-var3636 var3636)
(declare-const null-var3232 var3232)
(declare-const null-var888 var888)
(declare-const var2161-BLOCK_ALL var2161)
(declare-const var2672 var3636) ; Statement: r3 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory 
(assert (not (= var2672 null-var3636)))
(declare-const var884 var3232) ; Statement: r10 := @parameter0: com.google.gson.Gson 
(assert (not (= var884 null-var3232)))
(declare-const var1820 var888) ; Statement: r0 := @parameter1: com.google.gson.reflect.TypeToken 
(assert (not (= var1820 null-var888)))
(assert true)
(define-const var152 ClassObject (getRawType/-1972956808 var1820)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.reflect.TypeToken: java.lang.Class getRawType()>() 
(define-const var1765 ClassObject var3625!class) ; Statement: $r2 = class "Ljava/lang/Object;" 
(assert true)
(define-const var3908 Bool (isAssignableFrom/-1028998700 var1765 var152)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r4 = r3.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory: java.util.List reflectionFilters> 
(assert (not (= (ite var3908 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1774 var1052 (reflectionFilters/-1188528757 var2672)) ; Statement: $r4 = r3.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory: java.util.List reflectionFilters> 
(define-const var1022 var2161 (var2512_getFilterResult/1273822438 var1774 var152)) ; Statement: r5 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: com.google.gson.ReflectionAccessFilter$FilterResult getFilterResult(java.util.List,java.lang.Class)>($r4, r1) 
(define-const var854 var2161 var2161-BLOCK_ALL) ; Statement: $r6 = <com.google.gson.ReflectionAccessFilter$FilterResult: com.google.gson.ReflectionAccessFilter$FilterResult BLOCK_ALL> 
 ; Statement: if r5 != $r6 goto $r7 = <com.google.gson.ReflectionAccessFilter$FilterResult: com.google.gson.ReflectionAccessFilter$FilterResult BLOCK_INACCESSIBLE> 
(assert (not (not (= var1022 var854)))) ; Negate: Cond: r5 != $r6  
(define-const var1569 var2465 var2465-init) ; Statement: $r14 = new com.google.gson.JsonIOException 
(define-const var2615 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2615)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2615!1 String)
(assert (= var2615!1 ""))
(assert true)
(define-const var306 String (append/672562846 var2615!1 "ReflectionAccessFilter does not permit using reflection for ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ReflectionAccessFilter does not permit using reflection for ") 
(declare-const var2615!2 String)
(assert (= var2615!2 (str.++ var2615!1 "ReflectionAccessFilter does not permit using reflection for ")))
(assert true)
(define-const var2767 String (append/-1031950772 var306 (cast-from-ClassObject-to-var3625 var152))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var306!1 String)
(assert (str.prefixof var306 var306!1))
(assert true)
(define-const var463 String (append/672562846 var2767 ". Register a TypeAdapter for this type or adjust the access filter.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Register a TypeAdapter for this type or adjust the access filter.") 
(declare-const var2767!1 String)
(assert (= var2767!1 (str.++ var2767 ". Register a TypeAdapter for this type or adjust the access filter.")))
(assert true)
(define-const var1225 String (toString/-2075883882 var463)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1993171084 var1569 var1225)) ; Statement: specialinvoke $r14.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r19) 

(declare-const var1569!1 var2465)
(declare-const var1225!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getRawType/-1972956808=([com.google.gson.reflect.TypeToken], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), reflectionFilters/-1188528757=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory], java.util.List), var2512_getFilterResult/1273822438=([java.util.List, java.lang.Class], com.google.gson.ReflectionAccessFilter$FilterResult), var2465-init=([], com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3625=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1993171084=([com.google.gson.JsonIOException, java.lang.String], void)}
; {var3636=com.google.gson.internal.bind.ReflectiveTypeAdapterFactory, var2672=r3, var3232=com.google.gson.Gson, var884=r10, var888=com.google.gson.reflect.TypeToken, var1820=r0, var152=r1, var3625=java.lang.Object, var1765=$r2, var3908=$z0, var1052=java.util.List, var1774=$r4, var2161=com.google.gson.ReflectionAccessFilter$FilterResult, var2512=com.google.gson.internal.ReflectionAccessFilterHelper, var1022=r5, var854=$r6, var2465=com.google.gson.JsonIOException, var1569=$r14, var2615=$r15, var306=$r16, var2767=$r17, var463=$r18, var1225=$r19}
; {com.google.gson.internal.bind.ReflectiveTypeAdapterFactory=var3636, r3=var2672, com.google.gson.Gson=var3232, r10=var884, com.google.gson.reflect.TypeToken=var888, r0=var1820, r1=var152, java.lang.Object=var3625, $r2=var1765, $z0=var3908, java.util.List=var1052, $r4=var1774, com.google.gson.ReflectionAccessFilter$FilterResult=var2161, com.google.gson.internal.ReflectionAccessFilterHelper=var2512, r5=var1022, $r6=var854, com.google.gson.JsonIOException=var2465, $r14=var1569, $r15=var2615, $r16=var306, $r17=var2767, $r18=var463, $r19=var1225}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;	r10 := @parameter0: com.google.gson.Gson;	r0 := @parameter1: com.google.gson.reflect.TypeToken;	r1 = virtualinvoke r0.<com.google.gson.reflect.TypeToken: java.lang.Class getRawType()>();	$r2 = class "Ljava/lang/Object;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r4 = r3.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory: java.util.List reflectionFilters>;	$r4 = r3.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory: java.util.List reflectionFilters>;	r5 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: com.google.gson.ReflectionAccessFilter$FilterResult getFilterResult(java.util.List,java.lang.Class)>($r4, r1);	$r6 = <com.google.gson.ReflectionAccessFilter$FilterResult: com.google.gson.ReflectionAccessFilter$FilterResult BLOCK_ALL>;	if r5 != $r6 goto $r7 = <com.google.gson.ReflectionAccessFilter$FilterResult: com.google.gson.ReflectionAccessFilter$FilterResult BLOCK_INACCESSIBLE>;	$r14 = new com.google.gson.JsonIOException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ReflectionAccessFilter does not permit using reflection for ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Register a TypeAdapter for this type or adjust the access filter.");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r19);	throw $r14
;block_num 3