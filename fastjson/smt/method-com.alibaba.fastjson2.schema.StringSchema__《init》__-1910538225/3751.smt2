(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2896 0)
(declare-sort var1970 0)
(declare-sort var3605 0)
(declare-sort var590 0)
(declare-sort var763 0)
(declare-sort var3708 0)
(declare-sort var2598 0)
(declare-sort var3471 0)
(declare-sort var2047 0)
(declare-sort var2966 0)
(declare-sort var426 0)
(declare-sort var2053 0)
(declare-sort var2148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var3605 var1970) void)
(declare-fun cast-from-var2896-to-var3605 (var2896) var3605)
(declare-fun getString/1992452270 (var1970 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var2896) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var1970 String Int) Int)
(declare-fun minLength/1588225568 (var2896) Int)
(declare-fun maxLength/1588225568 (var2896) Int)
(declare-fun patternFormat/1588225568 (var2896) String)
(declare-fun var763_compile/2141929305 (String) var763)
(declare-fun pattern/1588225568 (var2896) var763)
(declare-fun format/1588225568 (var2896) String)
(declare-fun get/-1324468399 (var1970 String) var3708)
(declare-fun cast-from-var3708-to-var2598 (var3708) var2598)
(declare-fun var3605_anyOf/-686272272 (var2598 ClassObject) var3471)
(declare-fun anyOf/1588225568 (var2896) var3471)
(declare-fun oneOf/1588225568 (var2896) var2047)
(declare-fun constValue/1588225568 (var2896) String)
(declare-fun cast-from-var3708-to-var426 (var3708) var426)
(declare-fun var2053-init () var2053)
(declare-fun var426_size/-390258357 (var426) Int)
(declare-fun <init>/1974270677 (var2053 Int) void)
(declare-fun cast-from-var2053-to-var2966 (var2053) var2966)
(declare-fun var2966_addAll/-907809033 (var2966 var426) Bool)
(declare-fun enumValues/1588225568 (var2896) var2966)
(declare-fun formatValidator/1588225568 (var2896) var2148)
(declare-const null-var2896 var2896)
(declare-const null-var1970 var1970)
(declare-const null-String String)
(declare-const null-var2047 var2047)
(declare-const null-var2966 var2966)
(declare-const null-var2148 var2148)
(declare-const var317 var2896) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var317 null-var2896)))
(declare-const var3951 var1970) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var3951 null-var1970)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var2896-to-var3605 var317) var3951)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var317!1 var2896)
(declare-const var3951!1 var1970)
(define-const var442 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var475 String (getString/1992452270 var3951!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var1650 Bool (equalsIgnoreCase/-92311102 var442 var475)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var317!2 var2896)
(assert (not (= var317!2 null-var2896)))
(assert (= (typed/1588225568 var317!2) var1650)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var3121 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var1892 Int (getIntValue/-1814717338 var3951!1 "minLength" var3121)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var317!3 var2896)
(assert (not (= var317!3 null-var2896)))
(assert (= (minLength/1588225568 var317!3) var1892)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var3929 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var1867 Int (getIntValue/-1814717338 var3951!1 "maxLength" var3929)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var317!4 var2896)
(assert (not (= var317!4 null-var2896)))
(assert (= (maxLength/1588225568 var317!4) var1867)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var2873 String (getString/1992452270 var3951!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var317!5 var2896)
(assert (not (= var317!5 null-var2896)))
(assert (= (patternFormat/1588225568 var317!5) var2873)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var2146 String (patternFormat/1588225568 var317!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (= var2146 null-String))) ; Cond: $r5 != null 
(define-const var3312 String (patternFormat/1588225568 var317!5)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(define-const var3224 var763 (var763_compile/2141929305 var3312)) ; Statement: $r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6) 
(assert true) ; Non Conditional
(declare-const var317!6 var2896)
(assert (not (= var317!6 null-var2896)))
(assert (= (pattern/1588225568 var317!6) var3224)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var3165 String (getString/1992452270 var3951!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var317!7 var2896)
(assert (not (= var317!7 null-var2896)))
(assert (= (format/1588225568 var317!7) var3165)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var3893 var3708 (get/-1324468399 var3951!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var1619 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (not (= (ite var1619 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2184 var2598 (cast-from-var3708-to-var2598 var3893)) ; Statement: $r26 = (com.alibaba.fastjson2.JSONArray) $r29 
(define-const var1217 var3471 (var3605_anyOf/-686272272 var2184 String!class)) ; Statement: $r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;") 
(declare-const var317!8 var2896)
(assert (not (= var317!8 null-var2896)))
(assert (= (anyOf/1588225568 var317!8) var1217)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27 
 ; Statement: goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2120 var3708 (get/-1324468399 var3951!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var3599 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (= (ite var3599 1 0) 0)) ; Cond: $z2 == 0 
(declare-const var317!9 var2896)
(assert (not (= var317!9 null-var2896)))
(assert (= (oneOf/1588225568 var317!9) null-var2047)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var567 String (getString/1992452270 var3951!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var317!10 var2896)
(assert (not (= var317!10 null-var2896)))
(assert (= (constValue/1588225568 var317!10) var567)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var2740 var2966 null-var2966) ; Statement: r31 = null 
(assert true)
(define-const var1474 var3708 (get/-1324468399 var3951!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var1572 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (not (= (ite var1572 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var1883 var426 (cast-from-var3708-to-var426 var1474)) ; Statement: r21 = (java.util.Collection) $r25 
(define-const var1995 var2053 var2053-init) ; Statement: $r34 = new java.util.LinkedHashSet 
(define-const var1435 Int (var426_size/-390258357 var1883)) ; Statement: $i3 = interfaceinvoke r21.<java.util.Collection: int size()>() 
(assert true)
;(assert (<init>/1974270677 var1995 var1435)) ; Statement: specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3) 

(declare-const var1995!1 var2053)
(declare-const var1435!1 Int)
(define-const var2740!1 var2966 (cast-from-var2053-to-var2966 var1995!1)) ; Statement: r31 = $r34 
;(assert (var2966_addAll/-907809033 (cast-from-var2053-to-var2966 var1995!1) var1883)) ; Statement: interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21) 

(declare-const var1995!2 var2053)
(declare-const var1883!1 var426)
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31] 
(assert true) ; Non Conditional
(declare-const var317!11 var2896)
(assert (not (= var317!11 null-var2896)))
(assert (= (enumValues/1588225568 var317!11) var2740!1)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var75 String (format/1588225568 var317!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var75 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var317!12 var2896)
(assert (not (= var317!12 null-var2896)))
(assert (= (formatValidator/1588225568 var317!12) null-var2148)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var2896-to-var3605=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), var763_compile/2141929305=([java.lang.String], java.util.regex.Pattern), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), cast-from-var3708-to-var2598=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var3605_anyOf/-686272272=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.AnyOf), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), cast-from-var3708-to-var426=([java.lang.Object], java.util.Collection), var2053-init=([], java.util.LinkedHashSet), var426_size/-390258357=([java.util.Collection], int), <init>/1974270677=([java.util.LinkedHashSet, int], void), cast-from-var2053-to-var2966=([java.util.LinkedHashSet], java.util.Set), var2966_addAll/-907809033=([java.util.Set, java.util.Collection], boolean), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var2896=com.alibaba.fastjson2.schema.StringSchema, var317=r0, var1970=com.alibaba.fastjson2.JSONObject, var3951=r1, var3605=com.alibaba.fastjson2.schema.JSONSchema, var442=$r3, var475=$r2, var1650=$z0, var3121=$i6, var1892=$i0, var3929=$i8, var1867=$i1, var2873=$r4, var2146=$r5, var590=null_type, var3312=$r6, var763=java.util.regex.Pattern, var3224=$r30, var3165=$r7, var3708=java.lang.Object, var3893=$r29, var1619=$z1, var2598=com.alibaba.fastjson2.JSONArray, var2184=$r26, var3471=com.alibaba.fastjson2.schema.AnyOf, var1217=$r27, var2120=$r28, var3599=$z2, var2047=com.alibaba.fastjson2.schema.OneOf, var567=$r8, var2966=java.util.Set, var2740=r31, var1474=$r25, var1572=$z3, var426=java.util.Collection, var1883=r21, var2053=java.util.LinkedHashSet, var1995=$r34, var1435=$i3, var75=$r32, var2148=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var2896, r0=var317, com.alibaba.fastjson2.JSONObject=var1970, r1=var3951, com.alibaba.fastjson2.schema.JSONSchema=var3605, $r3=var442, $r2=var475, $z0=var1650, $i6=var3121, $i0=var1892, $i8=var3929, $i1=var1867, $r4=var2873, $r5=var2146, null_type=var590, $r6=var3312, java.util.regex.Pattern=var763, $r30=var3224, $r7=var3165, java.lang.Object=var3708, $r29=var3893, $z1=var1619, com.alibaba.fastjson2.JSONArray=var2598, $r26=var2184, com.alibaba.fastjson2.schema.AnyOf=var3471, $r27=var1217, $r28=var2120, $z2=var3599, com.alibaba.fastjson2.schema.OneOf=var2047, $r8=var567, java.util.Set=var2966, r31=var2740, $r25=var1474, $z3=var1572, java.util.Collection=var426, r21=var1883, java.util.LinkedHashSet=var2053, $r34=var1995, $i3=var1435, $r32=var75, java.util.function.Predicate=var2148}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6);	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r26 = (com.alibaba.fastjson2.JSONArray) $r29;	$r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27;	goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")];	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	r21 = (java.util.Collection) $r25;	$r34 = new java.util.LinkedHashSet;	$i3 = interfaceinvoke r21.<java.util.Collection: int size()>();	specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3);	r31 = $r34;	interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21);	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11