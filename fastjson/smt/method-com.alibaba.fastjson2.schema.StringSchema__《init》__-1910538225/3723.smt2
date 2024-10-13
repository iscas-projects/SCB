(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var113 0)
(declare-sort var1608 0)
(declare-sort var1157 0)
(declare-sort var3366 0)
(declare-sort var1986 0)
(declare-sort var554 0)
(declare-sort var5 0)
(declare-sort var1422 0)
(declare-sort var1629 0)
(declare-sort var2245 0)
(declare-sort var393 0)
(declare-sort var261 0)
(declare-sort var3270 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var1157 var1608) void)
(declare-fun cast-from-var113-to-var1157 (var113) var1157)
(declare-fun getString/1992452270 (var1608 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var113) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var1608 String Int) Int)
(declare-fun minLength/1588225568 (var113) Int)
(declare-fun maxLength/1588225568 (var113) Int)
(declare-fun patternFormat/1588225568 (var113) String)
(declare-fun var1986_compile/2141929305 (String) var1986)
(declare-fun pattern/1588225568 (var113) var1986)
(declare-fun format/1588225568 (var113) String)
(declare-fun get/-1324468399 (var1608 String) var554)
(declare-fun cast-from-var554-to-var5 (var554) var5)
(declare-fun var1157_anyOf/-686272272 (var5 ClassObject) var1422)
(declare-fun anyOf/1588225568 (var113) var1422)
(declare-fun var1157_oneOf/-178658204 (var5 ClassObject) var1629)
(declare-fun oneOf/1588225568 (var113) var1629)
(declare-fun constValue/1588225568 (var113) String)
(declare-fun cast-from-var554-to-var393 (var554) var393)
(declare-fun var261-init () var261)
(declare-fun var393_size/-390258357 (var393) Int)
(declare-fun <init>/1974270677 (var261 Int) void)
(declare-fun cast-from-var261-to-var2245 (var261) var2245)
(declare-fun var2245_addAll/-907809033 (var2245 var393) Bool)
(declare-fun enumValues/1588225568 (var113) var2245)
(declare-fun formatValidator/1588225568 (var113) var3270)
(declare-const null-var113 var113)
(declare-const null-var1608 var1608)
(declare-const null-String String)
(declare-const null-var2245 var2245)
(declare-const null-var3270 var3270)
(declare-const var2733 var113) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var2733 null-var113)))
(declare-const var1981 var1608) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var1981 null-var1608)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var113-to-var1157 var2733) var1981)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var2733!1 var113)
(declare-const var1981!1 var1608)
(define-const var3395 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var405 String (getString/1992452270 var1981!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var3221 Bool (equalsIgnoreCase/-92311102 var3395 var405)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var2733!2 var113)
(assert (not (= var2733!2 null-var113)))
(assert (= (typed/1588225568 var2733!2) var3221)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var2941 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var1478 Int (getIntValue/-1814717338 var1981!1 "minLength" var2941)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var2733!3 var113)
(assert (not (= var2733!3 null-var113)))
(assert (= (minLength/1588225568 var2733!3) var1478)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var599 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var916 Int (getIntValue/-1814717338 var1981!1 "maxLength" var599)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var2733!4 var113)
(assert (not (= var2733!4 null-var113)))
(assert (= (maxLength/1588225568 var2733!4) var916)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var894 String (getString/1992452270 var1981!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var2733!5 var113)
(assert (not (= var2733!5 null-var113)))
(assert (= (patternFormat/1588225568 var2733!5) var894)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var1273 String (patternFormat/1588225568 var2733!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (= var1273 null-String))) ; Cond: $r5 != null 
(define-const var456 String (patternFormat/1588225568 var2733!5)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(define-const var3544 var1986 (var1986_compile/2141929305 var456)) ; Statement: $r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6) 
(assert true) ; Non Conditional
(declare-const var2733!6 var113)
(assert (not (= var2733!6 null-var113)))
(assert (= (pattern/1588225568 var2733!6) var3544)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var2931 String (getString/1992452270 var1981!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var2733!7 var113)
(assert (not (= var2733!7 null-var113)))
(assert (= (format/1588225568 var2733!7) var2931)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var1408 var554 (get/-1324468399 var1981!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var2286 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (not (= (ite var2286 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2310 var5 (cast-from-var554-to-var5 var1408)) ; Statement: $r26 = (com.alibaba.fastjson2.JSONArray) $r29 
(define-const var2645 var1422 (var1157_anyOf/-686272272 var2310 String!class)) ; Statement: $r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;") 
(declare-const var2733!8 var113)
(assert (not (= var2733!8 null-var113)))
(assert (= (anyOf/1588225568 var2733!8) var2645)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27 
 ; Statement: goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2845 var554 (get/-1324468399 var1981!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var1181 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (not (= (ite var1181 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var868 var5 (cast-from-var554-to-var5 var2845)) ; Statement: $r23 = (com.alibaba.fastjson2.JSONArray) $r28 
(define-const var1073 var1629 (var1157_oneOf/-178658204 var868 String!class)) ; Statement: $r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;") 
(declare-const var2733!9 var113)
(assert (not (= var2733!9 null-var113)))
(assert (= (oneOf/1588225568 var2733!9) var1073)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24 
 ; Statement: goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")] 
(assert true) ; Non Conditional
(assert true)
(define-const var302 String (getString/1992452270 var1981!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var2733!10 var113)
(assert (not (= var2733!10 null-var113)))
(assert (= (constValue/1588225568 var2733!10) var302)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var3662 var2245 null-var2245) ; Statement: r31 = null 
(assert true)
(define-const var2476 var554 (get/-1324468399 var1981!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var2244 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (not (= (ite var2244 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2332 var393 (cast-from-var554-to-var393 var2476)) ; Statement: r21 = (java.util.Collection) $r25 
(define-const var1913 var261 var261-init) ; Statement: $r34 = new java.util.LinkedHashSet 
(define-const var2518 Int (var393_size/-390258357 var2332)) ; Statement: $i3 = interfaceinvoke r21.<java.util.Collection: int size()>() 
(assert true)
;(assert (<init>/1974270677 var1913 var2518)) ; Statement: specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3) 

(declare-const var1913!1 var261)
(declare-const var2518!1 Int)
(define-const var3662!1 var2245 (cast-from-var261-to-var2245 var1913!1)) ; Statement: r31 = $r34 
;(assert (var2245_addAll/-907809033 (cast-from-var261-to-var2245 var1913!1) var2332)) ; Statement: interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21) 

(declare-const var1913!2 var261)
(declare-const var2332!1 var393)
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31] 
(assert true) ; Non Conditional
(declare-const var2733!11 var113)
(assert (not (= var2733!11 null-var113)))
(assert (= (enumValues/1588225568 var2733!11) var3662!1)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var2615 String (format/1588225568 var2733!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var2615 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var2733!12 var113)
(assert (not (= var2733!12 null-var113)))
(assert (= (formatValidator/1588225568 var2733!12) null-var3270)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var113-to-var1157=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), var1986_compile/2141929305=([java.lang.String], java.util.regex.Pattern), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), cast-from-var554-to-var5=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var1157_anyOf/-686272272=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.AnyOf), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), var1157_oneOf/-178658204=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.OneOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), cast-from-var554-to-var393=([java.lang.Object], java.util.Collection), var261-init=([], java.util.LinkedHashSet), var393_size/-390258357=([java.util.Collection], int), <init>/1974270677=([java.util.LinkedHashSet, int], void), cast-from-var261-to-var2245=([java.util.LinkedHashSet], java.util.Set), var2245_addAll/-907809033=([java.util.Set, java.util.Collection], boolean), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var113=com.alibaba.fastjson2.schema.StringSchema, var2733=r0, var1608=com.alibaba.fastjson2.JSONObject, var1981=r1, var1157=com.alibaba.fastjson2.schema.JSONSchema, var3395=$r3, var405=$r2, var3221=$z0, var2941=$i6, var1478=$i0, var599=$i8, var916=$i1, var894=$r4, var1273=$r5, var3366=null_type, var456=$r6, var1986=java.util.regex.Pattern, var3544=$r30, var2931=$r7, var554=java.lang.Object, var1408=$r29, var2286=$z1, var5=com.alibaba.fastjson2.JSONArray, var2310=$r26, var1422=com.alibaba.fastjson2.schema.AnyOf, var2645=$r27, var2845=$r28, var1181=$z2, var868=$r23, var1629=com.alibaba.fastjson2.schema.OneOf, var1073=$r24, var302=$r8, var2245=java.util.Set, var3662=r31, var2476=$r25, var2244=$z3, var393=java.util.Collection, var2332=r21, var261=java.util.LinkedHashSet, var1913=$r34, var2518=$i3, var2615=$r32, var3270=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var113, r0=var2733, com.alibaba.fastjson2.JSONObject=var1608, r1=var1981, com.alibaba.fastjson2.schema.JSONSchema=var1157, $r3=var3395, $r2=var405, $z0=var3221, $i6=var2941, $i0=var1478, $i8=var599, $i1=var916, $r4=var894, $r5=var1273, null_type=var3366, $r6=var456, java.util.regex.Pattern=var1986, $r30=var3544, $r7=var2931, java.lang.Object=var554, $r29=var1408, $z1=var2286, com.alibaba.fastjson2.JSONArray=var5, $r26=var2310, com.alibaba.fastjson2.schema.AnyOf=var1422, $r27=var2645, $r28=var2845, $z2=var1181, $r23=var868, com.alibaba.fastjson2.schema.OneOf=var1629, $r24=var1073, $r8=var302, java.util.Set=var2245, r31=var3662, $r25=var2476, $z3=var2244, java.util.Collection=var393, r21=var2332, java.util.LinkedHashSet=var261, $r34=var1913, $i3=var2518, $r32=var2615, java.util.function.Predicate=var3270}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6);	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r26 = (com.alibaba.fastjson2.JSONArray) $r29;	$r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27;	goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")];	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r23 = (com.alibaba.fastjson2.JSONArray) $r28;	$r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24;	goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")];	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	r21 = (java.util.Collection) $r25;	$r34 = new java.util.LinkedHashSet;	$i3 = interfaceinvoke r21.<java.util.Collection: int size()>();	specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3);	r31 = $r34;	interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21);	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11