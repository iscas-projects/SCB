(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1963 0)
(declare-sort var3027 0)
(declare-sort var2562 0)
(declare-sort var1077 0)
(declare-sort var1681 0)
(declare-sort var1322 0)
(declare-sort var1806 0)
(declare-sort var1195 0)
(declare-sort var27 0)
(declare-sort var3406 0)
(declare-sort var2716 0)
(declare-sort var2 0)
(declare-sort var1141 0)
(declare-sort var55 0)
(declare-sort var3886 0)
(declare-sort var1084 0)
(declare-sort var1639 0)
(declare-sort var3008 0)
(declare-sort var212 0)
(declare-sort var441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1322!class ClassObject)
(declare-const Int!class ClassObject)
(declare-const var1195!class ClassObject)
(declare-const Float64!class ClassObject)
(declare-const Float32!class ClassObject)
(declare-fun var3027_bootstrap$/799775036 () var1963)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var2562-init () var2562)
(declare-fun <init>/-201242697 (var2562) void)
(declare-fun cast-from-var2562-to-var1077 (var2562) var1077)
(declare-fun var1077_put/1464166817 (var1077 var1806 var1806) var1806)
(declare-fun cast-from-String-to-var1806 (String) var1806)
(declare-fun cast-from-ClassObject-to-var1806 (ClassObject) var1806)
(declare-fun var2716_bootstrap$/-639677447 () var3406)
(declare-fun var1077_forEach/1471512036 (var1077 var3406) void)
(declare-fun var2_unmodifiableMap/-1864031675 (var1077) var1077)
(declare-fun var1077_entrySet/1101202697 (var1077) var1141)
(declare-fun var3886_stream/-1288525013 (var3886) var55)
(declare-fun cast-from-var1141-to-var3886 (var1141) var3886)
(declare-fun var1639_bootstrap$/1296337330 () var1084)
(declare-fun var3008_bootstrap$/-1910116412 () var1084)
(declare-fun var441_toMap/957941883 (var1084 var1084) var212)
(declare-fun var55_collect/-2050842585 (var55 var212) var1806)
(declare-fun cast-from-var1806-to-var1077 (var1806) var1077)
(declare-const var1681-namePrimitiveMap var1077)
(declare-const var1322-TYPE ClassObject)
(declare-const Int-TYPE ClassObject)
(declare-const var1195-TYPE ClassObject)
(declare-const Float64-TYPE ClassObject)
(declare-const Float32-TYPE ClassObject)
(declare-const var27-TYPE ClassObject)
(declare-const var1681-primitiveWrapperMap var1077)
(define-const var2712 var1963 var3027_bootstrap$/799775036) ; Statement: $r0 = staticinvoke <org.apache.commons.lang3.ClassUtils$lambda_static_0__26: java.util.Comparator bootstrap$()>() 
(define-const var3882 var1963 var2712) ; Statement: <org.apache.commons.lang3.ClassUtils: java.util.Comparator COMPARATOR> = $r0 
(define-const var2551 String (String_valueOf/-371898945 46)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(46) 
(define-const var3964 String var2551) ; Statement: <org.apache.commons.lang3.ClassUtils: java.lang.String PACKAGE_SEPARATOR> = $r1 
(define-const var2121 String (String_valueOf/-371898945 36)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(36) 
(define-const var3451 String var2121) ; Statement: <org.apache.commons.lang3.ClassUtils: java.lang.String INNER_CLASS_SEPARATOR> = $r2 
(define-const var1004 var2562 var2562-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1004)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var1004!1 var2562)
(define-const var2005 var1077 (cast-from-var2562-to-var1077 var1004!1)) ; Statement: <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> = $r3 
(define-const var983 var1077 var1681-namePrimitiveMap) ; Statement: $r5 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var2061 ClassObject var1322-TYPE) ; Statement: $r4 = <java.lang.Boolean: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var983 (cast-from-String-to-var1806 "boolean") (cast-from-ClassObject-to-var1806 var2061))) ; Statement: interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("boolean", $r4) 

(declare-const var983!1 var1077)
(declare-const var1080 String)
(declare-const var2061!1 ClassObject)
(define-const var3835 var1077 var1681-namePrimitiveMap) ; Statement: $r7 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var3087 ClassObject Int-TYPE) ; Statement: $r6 = <java.lang.Byte: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var3835 (cast-from-String-to-var1806 "byte") (cast-from-ClassObject-to-var1806 var3087))) ; Statement: interfaceinvoke $r7.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("byte", $r6) 

(declare-const var3835!1 var1077)
(declare-const var2406 String)
(declare-const var3087!1 ClassObject)
(define-const var3777 var1077 var1681-namePrimitiveMap) ; Statement: $r9 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var1720 ClassObject var1195-TYPE) ; Statement: $r8 = <java.lang.Character: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var3777 (cast-from-String-to-var1806 "char") (cast-from-ClassObject-to-var1806 var1720))) ; Statement: interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("char", $r8) 

(declare-const var3777!1 var1077)
(declare-const var1921 String)
(declare-const var1720!1 ClassObject)
(define-const var597 var1077 var1681-namePrimitiveMap) ; Statement: $r11 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var2616 ClassObject Int-TYPE) ; Statement: $r10 = <java.lang.Short: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var597 (cast-from-String-to-var1806 "short") (cast-from-ClassObject-to-var1806 var2616))) ; Statement: interfaceinvoke $r11.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("short", $r10) 

(declare-const var597!1 var1077)
(declare-const var3718 String)
(declare-const var2616!1 ClassObject)
(define-const var3793 var1077 var1681-namePrimitiveMap) ; Statement: $r13 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var3895 ClassObject Int-TYPE) ; Statement: $r12 = <java.lang.Integer: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var3793 (cast-from-String-to-var1806 "int") (cast-from-ClassObject-to-var1806 var3895))) ; Statement: interfaceinvoke $r13.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("int", $r12) 

(declare-const var3793!1 var1077)
(declare-const var2459 String)
(declare-const var3895!1 ClassObject)
(define-const var756 var1077 var1681-namePrimitiveMap) ; Statement: $r15 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var1492 ClassObject Int-TYPE) ; Statement: $r14 = <java.lang.Long: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var756 (cast-from-String-to-var1806 "long") (cast-from-ClassObject-to-var1806 var1492))) ; Statement: interfaceinvoke $r15.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("long", $r14) 

(declare-const var756!1 var1077)
(declare-const var2136 String)
(declare-const var1492!1 ClassObject)
(define-const var1894 var1077 var1681-namePrimitiveMap) ; Statement: $r17 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var2859 ClassObject Float64-TYPE) ; Statement: $r16 = <java.lang.Double: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var1894 (cast-from-String-to-var1806 "double") (cast-from-ClassObject-to-var1806 var2859))) ; Statement: interfaceinvoke $r17.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("double", $r16) 

(declare-const var1894!1 var1077)
(declare-const var3749 String)
(declare-const var2859!1 ClassObject)
(define-const var2368 var1077 var1681-namePrimitiveMap) ; Statement: $r19 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var1280 ClassObject Float32-TYPE) ; Statement: $r18 = <java.lang.Float: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var2368 (cast-from-String-to-var1806 "float") (cast-from-ClassObject-to-var1806 var1280))) ; Statement: interfaceinvoke $r19.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("float", $r18) 

(declare-const var2368!1 var1077)
(declare-const var1142 String)
(declare-const var1280!1 ClassObject)
(define-const var3230 var1077 var1681-namePrimitiveMap) ; Statement: $r21 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> 
(define-const var1928 ClassObject var27-TYPE) ; Statement: $r20 = <java.lang.Void: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var3230 (cast-from-String-to-var1806 "void") (cast-from-ClassObject-to-var1806 var1928))) ; Statement: interfaceinvoke $r21.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("void", $r20) 

(declare-const var3230!1 var1077)
(declare-const var1464 String)
(declare-const var1928!1 ClassObject)
(define-const var1024 var2562 var2562-init) ; Statement: $r22 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1024)) ; Statement: specialinvoke $r22.<java.util.HashMap: void <init>()>() 

(declare-const var1024!1 var2562)
(define-const var734 var1077 (cast-from-var2562-to-var1077 var1024!1)) ; Statement: <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> = $r22 
(define-const var2100 var1077 var1681-primitiveWrapperMap) ; Statement: $r24 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var1756 ClassObject var1322-TYPE) ; Statement: $r23 = <java.lang.Boolean: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var2100 (cast-from-ClassObject-to-var1806 var1756) (cast-from-ClassObject-to-var1806 var1322!class))) ; Statement: interfaceinvoke $r24.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, class "Ljava/lang/Boolean;") 

(declare-const var2100!1 var1077)
(declare-const var1756!1 ClassObject)
(declare-const var3542 ClassObject)
(define-const var3403 var1077 var1681-primitiveWrapperMap) ; Statement: $r26 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var3387 ClassObject Int-TYPE) ; Statement: $r25 = <java.lang.Byte: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var3403 (cast-from-ClassObject-to-var1806 var3387) (cast-from-ClassObject-to-var1806 Int!class))) ; Statement: interfaceinvoke $r26.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r25, class "Ljava/lang/Byte;") 

(declare-const var3403!1 var1077)
(declare-const var3387!1 ClassObject)
(declare-const var3935 ClassObject)
(define-const var3833 var1077 var1681-primitiveWrapperMap) ; Statement: $r28 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var2763 ClassObject var1195-TYPE) ; Statement: $r27 = <java.lang.Character: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var3833 (cast-from-ClassObject-to-var1806 var2763) (cast-from-ClassObject-to-var1806 var1195!class))) ; Statement: interfaceinvoke $r28.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r27, class "Ljava/lang/Character;") 

(declare-const var3833!1 var1077)
(declare-const var2763!1 ClassObject)
(declare-const var97 ClassObject)
(define-const var3732 var1077 var1681-primitiveWrapperMap) ; Statement: $r30 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var1808 ClassObject Int-TYPE) ; Statement: $r29 = <java.lang.Short: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var3732 (cast-from-ClassObject-to-var1806 var1808) (cast-from-ClassObject-to-var1806 Int!class))) ; Statement: interfaceinvoke $r30.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r29, class "Ljava/lang/Short;") 

(declare-const var3732!1 var1077)
(declare-const var1808!1 ClassObject)
(declare-const var2332 ClassObject)
(define-const var1802 var1077 var1681-primitiveWrapperMap) ; Statement: $r32 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var185 ClassObject Int-TYPE) ; Statement: $r31 = <java.lang.Integer: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var1802 (cast-from-ClassObject-to-var1806 var185) (cast-from-ClassObject-to-var1806 Int!class))) ; Statement: interfaceinvoke $r32.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r31, class "Ljava/lang/Integer;") 

(declare-const var1802!1 var1077)
(declare-const var185!1 ClassObject)
(declare-const var3502 ClassObject)
(define-const var1867 var1077 var1681-primitiveWrapperMap) ; Statement: $r34 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var1920 ClassObject Int-TYPE) ; Statement: $r33 = <java.lang.Long: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var1867 (cast-from-ClassObject-to-var1806 var1920) (cast-from-ClassObject-to-var1806 Int!class))) ; Statement: interfaceinvoke $r34.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r33, class "Ljava/lang/Long;") 

(declare-const var1867!1 var1077)
(declare-const var1920!1 ClassObject)
(declare-const var3172 ClassObject)
(define-const var246 var1077 var1681-primitiveWrapperMap) ; Statement: $r36 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var527 ClassObject Float64-TYPE) ; Statement: $r35 = <java.lang.Double: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var246 (cast-from-ClassObject-to-var1806 var527) (cast-from-ClassObject-to-var1806 Float64!class))) ; Statement: interfaceinvoke $r36.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r35, class "Ljava/lang/Double;") 

(declare-const var246!1 var1077)
(declare-const var527!1 ClassObject)
(declare-const var998 ClassObject)
(define-const var69 var1077 var1681-primitiveWrapperMap) ; Statement: $r38 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var522 ClassObject Float32-TYPE) ; Statement: $r37 = <java.lang.Float: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var69 (cast-from-ClassObject-to-var1806 var522) (cast-from-ClassObject-to-var1806 Float32!class))) ; Statement: interfaceinvoke $r38.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r37, class "Ljava/lang/Float;") 

(declare-const var69!1 var1077)
(declare-const var522!1 ClassObject)
(declare-const var2238 ClassObject)
(define-const var2336 var1077 var1681-primitiveWrapperMap) ; Statement: $r41 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var3483 ClassObject var27-TYPE) ; Statement: $r40 = <java.lang.Void: java.lang.Class TYPE> 
(define-const var2250 ClassObject var27-TYPE) ; Statement: $r39 = <java.lang.Void: java.lang.Class TYPE> 
;(assert (var1077_put/1464166817 var2336 (cast-from-ClassObject-to-var1806 var3483) (cast-from-ClassObject-to-var1806 var2250))) ; Statement: interfaceinvoke $r41.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r40, $r39) 

(declare-const var2336!1 var1077)
(declare-const var3483!1 ClassObject)
(declare-const var2250!1 ClassObject)
(define-const var3159 var2562 var2562-init) ; Statement: $r42 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3159)) ; Statement: specialinvoke $r42.<java.util.HashMap: void <init>()>() 

(declare-const var3159!1 var2562)
(define-const var3617 var1077 (cast-from-var2562-to-var1077 var3159!1)) ; Statement: <org.apache.commons.lang3.ClassUtils: java.util.Map wrapperPrimitiveMap> = $r42 
(define-const var949 var1077 var1681-primitiveWrapperMap) ; Statement: $r43 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> 
(define-const var3435 var3406 var2716_bootstrap$/-639677447) ; Statement: $r44 = staticinvoke <org.apache.commons.lang3.ClassUtils$lambda_static_1__27: java.util.function.BiConsumer bootstrap$()>() 
;(assert (var1077_forEach/1471512036 var949 var3435)) ; Statement: interfaceinvoke $r43.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r44) 

(declare-const var949!1 var1077)
(declare-const var3435!1 var3406)
(define-const var617 var2562 var2562-init) ; Statement: $r45 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var617)) ; Statement: specialinvoke $r45.<java.util.HashMap: void <init>()>() 

(declare-const var617!1 var2562)
;(assert (var1077_put/1464166817 (cast-from-var2562-to-var1077 var617!1) (cast-from-String-to-var1806 "int") (cast-from-String-to-var1806 "I"))) ; Statement: interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("int", "I") 

(declare-const var617!2 var2562)
(declare-const var2459!1 String)
(declare-const var2114 String)
;(assert (var1077_put/1464166817 (cast-from-var2562-to-var1077 var617!2) (cast-from-String-to-var1806 "boolean") (cast-from-String-to-var1806 "Z"))) ; Statement: interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("boolean", "Z") 

(declare-const var617!3 var2562)
(declare-const var1080!1 String)
(declare-const var1282 String)
;(assert (var1077_put/1464166817 (cast-from-var2562-to-var1077 var617!3) (cast-from-String-to-var1806 "float") (cast-from-String-to-var1806 "F"))) ; Statement: interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("float", "F") 

(declare-const var617!4 var2562)
(declare-const var1142!1 String)
(declare-const var1911 String)
;(assert (var1077_put/1464166817 (cast-from-var2562-to-var1077 var617!4) (cast-from-String-to-var1806 "long") (cast-from-String-to-var1806 "J"))) ; Statement: interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("long", "J") 

(declare-const var617!5 var2562)
(declare-const var2136!1 String)
(declare-const var2159 String)
;(assert (var1077_put/1464166817 (cast-from-var2562-to-var1077 var617!5) (cast-from-String-to-var1806 "short") (cast-from-String-to-var1806 "S"))) ; Statement: interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("short", "S") 

(declare-const var617!6 var2562)
(declare-const var3718!1 String)
(declare-const var1737 String)
;(assert (var1077_put/1464166817 (cast-from-var2562-to-var1077 var617!6) (cast-from-String-to-var1806 "byte") (cast-from-String-to-var1806 "B"))) ; Statement: interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("byte", "B") 

(declare-const var617!7 var2562)
(declare-const var2406!1 String)
(declare-const var1406 String)
;(assert (var1077_put/1464166817 (cast-from-var2562-to-var1077 var617!7) (cast-from-String-to-var1806 "double") (cast-from-String-to-var1806 "D"))) ; Statement: interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("double", "D") 

(declare-const var617!8 var2562)
(declare-const var3749!1 String)
(declare-const var29 String)
;(assert (var1077_put/1464166817 (cast-from-var2562-to-var1077 var617!8) (cast-from-String-to-var1806 "char") (cast-from-String-to-var1806 "C"))) ; Statement: interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("char", "C") 

(declare-const var617!9 var2562)
(declare-const var1921!1 String)
(declare-const var3456 String)
(define-const var3393 var1077 (var2_unmodifiableMap/-1864031675 (cast-from-var2562-to-var1077 var617!9))) ; Statement: $r46 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r45) 
(define-const var909 var1077 var3393) ; Statement: <org.apache.commons.lang3.ClassUtils: java.util.Map abbreviationMap> = $r46 
(define-const var3798 var1141 (var1077_entrySet/1101202697 (cast-from-var2562-to-var1077 var617!9))) ; Statement: $r47 = interfaceinvoke $r45.<java.util.Map: java.util.Set entrySet()>() 
(define-const var629 var55 (var3886_stream/-1288525013 (cast-from-var1141-to-var3886 var3798))) ; Statement: $r51 = interfaceinvoke $r47.<java.util.Set: java.util.stream.Stream stream()>() 
(define-const var3129 var1084 var1639_bootstrap$/1296337330) ; Statement: $r49 = staticinvoke <org.apache.commons.lang3.ClassUtils$getValue__33: java.util.function.Function bootstrap$()>() 
(define-const var2174 var1084 var3008_bootstrap$/-1910116412) ; Statement: $r48 = staticinvoke <org.apache.commons.lang3.ClassUtils$getKey__55: java.util.function.Function bootstrap$()>() 
(define-const var2020 var212 (var441_toMap/957941883 var3129 var2174)) ; Statement: $r50 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toMap(java.util.function.Function,java.util.function.Function)>($r49, $r48) 
(define-const var2707 var1806 (var55_collect/-2050842585 var629 var2020)) ; Statement: $r52 = interfaceinvoke $r51.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r50) 
(define-const var1181 var1077 (cast-from-var1806-to-var1077 var2707)) ; Statement: $r53 = (java.util.Map) $r52 
(define-const var953 var1077 (var2_unmodifiableMap/-1864031675 var1181)) ; Statement: $r54 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r53) 
(define-const var306 var1077 var953) ; Statement: <org.apache.commons.lang3.ClassUtils: java.util.Map reverseAbbreviationMap> = $r54 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3027_bootstrap$/799775036=([], java.util.Comparator), String_valueOf/-371898945=([char], java.lang.String), var2562-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var2562-to-var1077=([java.util.HashMap], java.util.Map), var1077_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1806=([java.lang.String], java.lang.Object), cast-from-ClassObject-to-var1806=([java.lang.Class], java.lang.Object), var2716_bootstrap$/-639677447=([], java.util.function.BiConsumer), var1077_forEach/1471512036=([java.util.Map, java.util.function.BiConsumer], void), var2_unmodifiableMap/-1864031675=([java.util.Map], java.util.Map), var1077_entrySet/1101202697=([java.util.Map], java.util.Set), var3886_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var1141-to-var3886=([java.util.Set], java.util.Collection), var1639_bootstrap$/1296337330=([], java.util.function.Function), var3008_bootstrap$/-1910116412=([], java.util.function.Function), var441_toMap/957941883=([java.util.function.Function, java.util.function.Function], java.util.stream.Collector), var55_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var1806-to-var1077=([java.lang.Object], java.util.Map)}
; {var1963=java.util.Comparator, var3027=org.apache.commons.lang3.ClassUtils$lambda_static_0__26, var2712=$r0, var3882=<org.apache.commons.lang3.ClassUtils: java.util.Comparator COMPARATOR>, var2551=$r1, var3964=<org.apache.commons.lang3.ClassUtils: java.lang.String PACKAGE_SEPARATOR>, var2121=$r2, var3451=<org.apache.commons.lang3.ClassUtils: java.lang.String INNER_CLASS_SEPARATOR>, var2562=java.util.HashMap, var1004=$r3, var1077=java.util.Map, var2005=<org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>, var1681=org.apache.commons.lang3.ClassUtils, var983=$r5, var1322=java.lang.Boolean, var2061=$r4, var1806=java.lang.Object, var1080="boolean", var3835=$r7, var3087=$r6, var2406="byte", var3777=$r9, var1195=java.lang.Character, var1720=$r8, var1921="char", var597=$r11, var2616=$r10, var3718="short", var3793=$r13, var3895=$r12, var2459="int", var756=$r15, var1492=$r14, var2136="long", var1894=$r17, var2859=$r16, var3749="double", var2368=$r19, var1280=$r18, var1142="float", var3230=$r21, var27=java.lang.Void, var1928=$r20, var1464="void", var1024=$r22, var734=<org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>, var2100=$r24, var1756=$r23, var3542=class "Ljava/lang/Boolean;", var3403=$r26, var3387=$r25, var3935=class "Ljava/lang/Byte;", var3833=$r28, var2763=$r27, var97=class "Ljava/lang/Character;", var3732=$r30, var1808=$r29, var2332=class "Ljava/lang/Short;", var1802=$r32, var185=$r31, var3502=class "Ljava/lang/Integer;", var1867=$r34, var1920=$r33, var3172=class "Ljava/lang/Long;", var246=$r36, var527=$r35, var998=class "Ljava/lang/Double;", var69=$r38, var522=$r37, var2238=class "Ljava/lang/Float;", var2336=$r41, var3483=$r40, var2250=$r39, var3159=$r42, var3617=<org.apache.commons.lang3.ClassUtils: java.util.Map wrapperPrimitiveMap>, var949=$r43, var3406=java.util.function.BiConsumer, var2716=org.apache.commons.lang3.ClassUtils$lambda_static_1__27, var3435=$r44, var617=$r45, var2114="I", var1282="Z", var1911="F", var2159="J", var1737="S", var1406="B", var29="D", var3456="C", var2=java.util.Collections, var3393=$r46, var909=<org.apache.commons.lang3.ClassUtils: java.util.Map abbreviationMap>, var1141=java.util.Set, var3798=$r47, var55=java.util.stream.Stream, var3886=java.util.Collection, var629=$r51, var1084=java.util.function.Function, var1639=org.apache.commons.lang3.ClassUtils$getValue__33, var3129=$r49, var3008=org.apache.commons.lang3.ClassUtils$getKey__55, var2174=$r48, var212=java.util.stream.Collector, var441=java.util.stream.Collectors, var2020=$r50, var2707=$r52, var1181=$r53, var953=$r54, var306=<org.apache.commons.lang3.ClassUtils: java.util.Map reverseAbbreviationMap>}
; {java.util.Comparator=var1963, org.apache.commons.lang3.ClassUtils$lambda_static_0__26=var3027, $r0=var2712, <org.apache.commons.lang3.ClassUtils: java.util.Comparator COMPARATOR>=var3882, $r1=var2551, <org.apache.commons.lang3.ClassUtils: java.lang.String PACKAGE_SEPARATOR>=var3964, $r2=var2121, <org.apache.commons.lang3.ClassUtils: java.lang.String INNER_CLASS_SEPARATOR>=var3451, java.util.HashMap=var2562, $r3=var1004, java.util.Map=var1077, <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>=var2005, org.apache.commons.lang3.ClassUtils=var1681, $r5=var983, java.lang.Boolean=var1322, $r4=var2061, java.lang.Object=var1806, "boolean"=var1080, $r7=var3835, $r6=var3087, "byte"=var2406, $r9=var3777, java.lang.Character=var1195, $r8=var1720, "char"=var1921, $r11=var597, $r10=var2616, "short"=var3718, $r13=var3793, $r12=var3895, "int"=var2459, $r15=var756, $r14=var1492, "long"=var2136, $r17=var1894, $r16=var2859, "double"=var3749, $r19=var2368, $r18=var1280, "float"=var1142, $r21=var3230, java.lang.Void=var27, $r20=var1928, "void"=var1464, $r22=var1024, <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>=var734, $r24=var2100, $r23=var1756, class "Ljava/lang/Boolean;"=var3542, $r26=var3403, $r25=var3387, class "Ljava/lang/Byte;"=var3935, $r28=var3833, $r27=var2763, class "Ljava/lang/Character;"=var97, $r30=var3732, $r29=var1808, class "Ljava/lang/Short;"=var2332, $r32=var1802, $r31=var185, class "Ljava/lang/Integer;"=var3502, $r34=var1867, $r33=var1920, class "Ljava/lang/Long;"=var3172, $r36=var246, $r35=var527, class "Ljava/lang/Double;"=var998, $r38=var69, $r37=var522, class "Ljava/lang/Float;"=var2238, $r41=var2336, $r40=var3483, $r39=var2250, $r42=var3159, <org.apache.commons.lang3.ClassUtils: java.util.Map wrapperPrimitiveMap>=var3617, $r43=var949, java.util.function.BiConsumer=var3406, org.apache.commons.lang3.ClassUtils$lambda_static_1__27=var2716, $r44=var3435, $r45=var617, "I"=var2114, "Z"=var1282, "F"=var1911, "J"=var2159, "S"=var1737, "B"=var1406, "D"=var29, "C"=var3456, java.util.Collections=var2, $r46=var3393, <org.apache.commons.lang3.ClassUtils: java.util.Map abbreviationMap>=var909, java.util.Set=var1141, $r47=var3798, java.util.stream.Stream=var55, java.util.Collection=var3886, $r51=var629, java.util.function.Function=var1084, org.apache.commons.lang3.ClassUtils$getValue__33=var1639, $r49=var3129, org.apache.commons.lang3.ClassUtils$getKey__55=var3008, $r48=var2174, java.util.stream.Collector=var212, java.util.stream.Collectors=var441, $r50=var2020, $r52=var2707, $r53=var1181, $r54=var953, <org.apache.commons.lang3.ClassUtils: java.util.Map reverseAbbreviationMap>=var306}
;seq <java.lang.String: java.lang.String valueOf(char)>;	<java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 2}
;stmts $r0 = staticinvoke <org.apache.commons.lang3.ClassUtils$lambda_static_0__26: java.util.Comparator bootstrap$()>();	<org.apache.commons.lang3.ClassUtils: java.util.Comparator COMPARATOR> = $r0;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(46);	<org.apache.commons.lang3.ClassUtils: java.lang.String PACKAGE_SEPARATOR> = $r1;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(36);	<org.apache.commons.lang3.ClassUtils: java.lang.String INNER_CLASS_SEPARATOR> = $r2;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	<org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap> = $r3;	$r5 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r4 = <java.lang.Boolean: java.lang.Class TYPE>;	interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("boolean", $r4);	$r7 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r6 = <java.lang.Byte: java.lang.Class TYPE>;	interfaceinvoke $r7.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("byte", $r6);	$r9 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r8 = <java.lang.Character: java.lang.Class TYPE>;	interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("char", $r8);	$r11 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r10 = <java.lang.Short: java.lang.Class TYPE>;	interfaceinvoke $r11.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("short", $r10);	$r13 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r12 = <java.lang.Integer: java.lang.Class TYPE>;	interfaceinvoke $r13.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("int", $r12);	$r15 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r14 = <java.lang.Long: java.lang.Class TYPE>;	interfaceinvoke $r15.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("long", $r14);	$r17 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r16 = <java.lang.Double: java.lang.Class TYPE>;	interfaceinvoke $r17.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("double", $r16);	$r19 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r18 = <java.lang.Float: java.lang.Class TYPE>;	interfaceinvoke $r19.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("float", $r18);	$r21 = <org.apache.commons.lang3.ClassUtils: java.util.Map namePrimitiveMap>;	$r20 = <java.lang.Void: java.lang.Class TYPE>;	interfaceinvoke $r21.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("void", $r20);	$r22 = new java.util.HashMap;	specialinvoke $r22.<java.util.HashMap: void <init>()>();	<org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap> = $r22;	$r24 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r23 = <java.lang.Boolean: java.lang.Class TYPE>;	interfaceinvoke $r24.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, class "Ljava/lang/Boolean;");	$r26 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r25 = <java.lang.Byte: java.lang.Class TYPE>;	interfaceinvoke $r26.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r25, class "Ljava/lang/Byte;");	$r28 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r27 = <java.lang.Character: java.lang.Class TYPE>;	interfaceinvoke $r28.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r27, class "Ljava/lang/Character;");	$r30 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r29 = <java.lang.Short: java.lang.Class TYPE>;	interfaceinvoke $r30.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r29, class "Ljava/lang/Short;");	$r32 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r31 = <java.lang.Integer: java.lang.Class TYPE>;	interfaceinvoke $r32.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r31, class "Ljava/lang/Integer;");	$r34 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r33 = <java.lang.Long: java.lang.Class TYPE>;	interfaceinvoke $r34.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r33, class "Ljava/lang/Long;");	$r36 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r35 = <java.lang.Double: java.lang.Class TYPE>;	interfaceinvoke $r36.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r35, class "Ljava/lang/Double;");	$r38 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r37 = <java.lang.Float: java.lang.Class TYPE>;	interfaceinvoke $r38.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r37, class "Ljava/lang/Float;");	$r41 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r40 = <java.lang.Void: java.lang.Class TYPE>;	$r39 = <java.lang.Void: java.lang.Class TYPE>;	interfaceinvoke $r41.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r40, $r39);	$r42 = new java.util.HashMap;	specialinvoke $r42.<java.util.HashMap: void <init>()>();	<org.apache.commons.lang3.ClassUtils: java.util.Map wrapperPrimitiveMap> = $r42;	$r43 = <org.apache.commons.lang3.ClassUtils: java.util.Map primitiveWrapperMap>;	$r44 = staticinvoke <org.apache.commons.lang3.ClassUtils$lambda_static_1__27: java.util.function.BiConsumer bootstrap$()>();	interfaceinvoke $r43.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r44);	$r45 = new java.util.HashMap;	specialinvoke $r45.<java.util.HashMap: void <init>()>();	interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("int", "I");	interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("boolean", "Z");	interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("float", "F");	interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("long", "J");	interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("short", "S");	interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("byte", "B");	interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("double", "D");	interfaceinvoke $r45.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("char", "C");	$r46 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r45);	<org.apache.commons.lang3.ClassUtils: java.util.Map abbreviationMap> = $r46;	$r47 = interfaceinvoke $r45.<java.util.Map: java.util.Set entrySet()>();	$r51 = interfaceinvoke $r47.<java.util.Set: java.util.stream.Stream stream()>();	$r49 = staticinvoke <org.apache.commons.lang3.ClassUtils$getValue__33: java.util.function.Function bootstrap$()>();	$r48 = staticinvoke <org.apache.commons.lang3.ClassUtils$getKey__55: java.util.function.Function bootstrap$()>();	$r50 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toMap(java.util.function.Function,java.util.function.Function)>($r49, $r48);	$r52 = interfaceinvoke $r51.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r50);	$r53 = (java.util.Map) $r52;	$r54 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r53);	<org.apache.commons.lang3.ClassUtils: java.util.Map reverseAbbreviationMap> = $r54;	return
;block_num 1