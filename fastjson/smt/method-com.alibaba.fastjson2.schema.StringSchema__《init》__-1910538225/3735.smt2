(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var222 0)
(declare-sort var1458 0)
(declare-sort var949 0)
(declare-sort var3555 0)
(declare-sort var3476 0)
(declare-sort var569 0)
(declare-sort var1957 0)
(declare-sort var80 0)
(declare-sort var199 0)
(declare-sort var2287 0)
(declare-sort var1084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var949 var1458) void)
(declare-fun cast-from-var222-to-var949 (var222) var949)
(declare-fun getString/1992452270 (var1458 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var222) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var1458 String Int) Int)
(declare-fun minLength/1588225568 (var222) Int)
(declare-fun maxLength/1588225568 (var222) Int)
(declare-fun patternFormat/1588225568 (var222) String)
(declare-fun var3476_compile/2141929305 (String) var3476)
(declare-fun pattern/1588225568 (var222) var3476)
(declare-fun format/1588225568 (var222) String)
(declare-fun get/-1324468399 (var1458 String) var569)
(declare-fun cast-from-var569-to-var1957 (var569) var1957)
(declare-fun var949_anyOf/-686272272 (var1957 ClassObject) var80)
(declare-fun anyOf/1588225568 (var222) var80)
(declare-fun var949_oneOf/-178658204 (var1957 ClassObject) var199)
(declare-fun oneOf/1588225568 (var222) var199)
(declare-fun constValue/1588225568 (var222) String)
(declare-fun enumValues/1588225568 (var222) var2287)
(declare-fun formatValidator/1588225568 (var222) var1084)
(declare-const null-var222 var222)
(declare-const null-var1458 var1458)
(declare-const null-String String)
(declare-const null-var2287 var2287)
(declare-const null-var1084 var1084)
(declare-const var2177 var222) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var2177 null-var222)))
(declare-const var2360 var1458) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2360 null-var1458)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var222-to-var949 var2177) var2360)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var2177!1 var222)
(declare-const var2360!1 var1458)
(define-const var3212 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var1995 String (getString/1992452270 var2360!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var3604 Bool (equalsIgnoreCase/-92311102 var3212 var1995)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var2177!2 var222)
(assert (not (= var2177!2 null-var222)))
(assert (= (typed/1588225568 var2177!2) var3604)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var3327 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var982 Int (getIntValue/-1814717338 var2360!1 "minLength" var3327)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var2177!3 var222)
(assert (not (= var2177!3 null-var222)))
(assert (= (minLength/1588225568 var2177!3) var982)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var889 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var1916 Int (getIntValue/-1814717338 var2360!1 "maxLength" var889)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var2177!4 var222)
(assert (not (= var2177!4 null-var222)))
(assert (= (maxLength/1588225568 var2177!4) var1916)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var2565 String (getString/1992452270 var2360!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var2177!5 var222)
(assert (not (= var2177!5 null-var222)))
(assert (= (patternFormat/1588225568 var2177!5) var2565)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var3135 String (patternFormat/1588225568 var2177!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (= var3135 null-String))) ; Cond: $r5 != null 
(define-const var1454 String (patternFormat/1588225568 var2177!5)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(define-const var3755 var3476 (var3476_compile/2141929305 var1454)) ; Statement: $r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6) 
(assert true) ; Non Conditional
(declare-const var2177!6 var222)
(assert (not (= var2177!6 null-var222)))
(assert (= (pattern/1588225568 var2177!6) var3755)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var3131 String (getString/1992452270 var2360!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var2177!7 var222)
(assert (not (= var2177!7 null-var222)))
(assert (= (format/1588225568 var2177!7) var3131)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var146 var569 (get/-1324468399 var2360!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var606 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (not (= (ite var606 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var550 var1957 (cast-from-var569-to-var1957 var146)) ; Statement: $r26 = (com.alibaba.fastjson2.JSONArray) $r29 
(define-const var1095 var80 (var949_anyOf/-686272272 var550 String!class)) ; Statement: $r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;") 
(declare-const var2177!8 var222)
(assert (not (= var2177!8 null-var222)))
(assert (= (anyOf/1588225568 var2177!8) var1095)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27 
 ; Statement: goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1914 var569 (get/-1324468399 var2360!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var3279 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (not (= (ite var3279 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2574 var1957 (cast-from-var569-to-var1957 var1914)) ; Statement: $r23 = (com.alibaba.fastjson2.JSONArray) $r28 
(define-const var3854 var199 (var949_oneOf/-178658204 var2574 String!class)) ; Statement: $r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;") 
(declare-const var2177!9 var222)
(assert (not (= var2177!9 null-var222)))
(assert (= (oneOf/1588225568 var2177!9) var3854)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24 
 ; Statement: goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1581 String (getString/1992452270 var2360!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var2177!10 var222)
(assert (not (= var2177!10 null-var222)))
(assert (= (constValue/1588225568 var2177!10) var1581)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var2658 var2287 null-var2287) ; Statement: r31 = null 
(assert true)
(define-const var450 var569 (get/-1324468399 var2360!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var1696 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (= (ite var1696 1 0) 0)) ; Cond: $z3 == 0 
(define-const var852 Bool false) ; Statement: $z4 = $r25 instanceof java.lang.Object[] 
 ; Statement: if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(assert (= (ite var852 1 0) 0)) ; Cond: $z4 == 0 
(declare-const var2177!11 var222)
(assert (not (= var2177!11 null-var222)))
(assert (= (enumValues/1588225568 var2177!11) var2658)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var651 String (format/1588225568 var2177!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var651 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var2177!12 var222)
(assert (not (= var2177!12 null-var222)))
(assert (= (formatValidator/1588225568 var2177!12) null-var1084)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var222-to-var949=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), var3476_compile/2141929305=([java.lang.String], java.util.regex.Pattern), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), cast-from-var569-to-var1957=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var949_anyOf/-686272272=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.AnyOf), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), var949_oneOf/-178658204=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.OneOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var222=com.alibaba.fastjson2.schema.StringSchema, var2177=r0, var1458=com.alibaba.fastjson2.JSONObject, var2360=r1, var949=com.alibaba.fastjson2.schema.JSONSchema, var3212=$r3, var1995=$r2, var3604=$z0, var3327=$i6, var982=$i0, var889=$i8, var1916=$i1, var2565=$r4, var3135=$r5, var3555=null_type, var1454=$r6, var3476=java.util.regex.Pattern, var3755=$r30, var3131=$r7, var569=java.lang.Object, var146=$r29, var606=$z1, var1957=com.alibaba.fastjson2.JSONArray, var550=$r26, var80=com.alibaba.fastjson2.schema.AnyOf, var1095=$r27, var1914=$r28, var3279=$z2, var2574=$r23, var199=com.alibaba.fastjson2.schema.OneOf, var3854=$r24, var1581=$r8, var2287=java.util.Set, var2658=r31, var450=$r25, var1696=$z3, var852=$z4, var651=$r32, var1084=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var222, r0=var2177, com.alibaba.fastjson2.JSONObject=var1458, r1=var2360, com.alibaba.fastjson2.schema.JSONSchema=var949, $r3=var3212, $r2=var1995, $z0=var3604, $i6=var3327, $i0=var982, $i8=var889, $i1=var1916, $r4=var2565, $r5=var3135, null_type=var3555, $r6=var1454, java.util.regex.Pattern=var3476, $r30=var3755, $r7=var3131, java.lang.Object=var569, $r29=var146, $z1=var606, com.alibaba.fastjson2.JSONArray=var1957, $r26=var550, com.alibaba.fastjson2.schema.AnyOf=var80, $r27=var1095, $r28=var1914, $z2=var3279, $r23=var2574, com.alibaba.fastjson2.schema.OneOf=var199, $r24=var3854, $r8=var1581, java.util.Set=var2287, r31=var2658, $r25=var450, $z3=var1696, $z4=var852, $r32=var651, java.util.function.Predicate=var1084}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6);	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r26 = (com.alibaba.fastjson2.JSONArray) $r29;	$r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27;	goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")];	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r23 = (com.alibaba.fastjson2.JSONArray) $r28;	$r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24;	goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")];	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	$z4 = $r25 instanceof java.lang.Object[];	if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11