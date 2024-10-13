(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3228 0)
(declare-sort var464 0)
(declare-sort var3262 0)
(declare-sort var3011 0)
(declare-sort var461 0)
(declare-sort var3616 0)
(declare-sort var1644 0)
(declare-sort var554 0)
(declare-sort var2778 0)
(declare-sort var3774 0)
(declare-sort var333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var3262 var464) void)
(declare-fun cast-from-var3228-to-var3262 (var3228) var3262)
(declare-fun getString/1992452270 (var464 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var3228) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var464 String Int) Int)
(declare-fun minLength/1588225568 (var3228) Int)
(declare-fun maxLength/1588225568 (var3228) Int)
(declare-fun patternFormat/1588225568 (var3228) String)
(declare-fun var461_compile/2141929305 (String) var461)
(declare-fun pattern/1588225568 (var3228) var461)
(declare-fun format/1588225568 (var3228) String)
(declare-fun get/-1324468399 (var464 String) var3616)
(declare-fun anyOf/1588225568 (var3228) var1644)
(declare-fun cast-from-var3616-to-var554 (var3616) var554)
(declare-fun var3262_oneOf/-178658204 (var554 ClassObject) var2778)
(declare-fun oneOf/1588225568 (var3228) var2778)
(declare-fun constValue/1588225568 (var3228) String)
(declare-fun enumValues/1588225568 (var3228) var3774)
(declare-fun formatValidator/1588225568 (var3228) var333)
(declare-const null-var3228 var3228)
(declare-const null-var464 var464)
(declare-const null-String String)
(declare-const null-var1644 var1644)
(declare-const null-var3774 var3774)
(declare-const null-var333 var333)
(declare-const var607 var3228) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var607 null-var3228)))
(declare-const var119 var464) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var119 null-var464)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var3228-to-var3262 var607) var119)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var607!1 var3228)
(declare-const var119!1 var464)
(define-const var3592 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var2887 String (getString/1992452270 var119!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var278 Bool (equalsIgnoreCase/-92311102 var3592 var2887)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var607!2 var3228)
(assert (not (= var607!2 null-var3228)))
(assert (= (typed/1588225568 var607!2) var278)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var69 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var1752 Int (getIntValue/-1814717338 var119!1 "minLength" var69)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var607!3 var3228)
(assert (not (= var607!3 null-var3228)))
(assert (= (minLength/1588225568 var607!3) var1752)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var3561 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var654 Int (getIntValue/-1814717338 var119!1 "maxLength" var3561)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var607!4 var3228)
(assert (not (= var607!4 null-var3228)))
(assert (= (maxLength/1588225568 var607!4) var654)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var1870 String (getString/1992452270 var119!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var607!5 var3228)
(assert (not (= var607!5 null-var3228)))
(assert (= (patternFormat/1588225568 var607!5) var1870)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var1017 String (patternFormat/1588225568 var607!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (= var1017 null-String))) ; Cond: $r5 != null 
(define-const var3245 String (patternFormat/1588225568 var607!5)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(define-const var565 var461 (var461_compile/2141929305 var3245)) ; Statement: $r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6) 
(assert true) ; Non Conditional
(declare-const var607!6 var3228)
(assert (not (= var607!6 null-var3228)))
(assert (= (pattern/1588225568 var607!6) var565)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var696 String (getString/1992452270 var119!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var607!7 var3228)
(assert (not (= var607!7 null-var3228)))
(assert (= (format/1588225568 var607!7) var696)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var870 var3616 (get/-1324468399 var119!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var2481 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (= (ite var2481 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var607!8 var3228)
(assert (not (= var607!8 null-var3228)))
(assert (= (anyOf/1588225568 var607!8) null-var1644)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var3411 var3616 (get/-1324468399 var119!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var2083 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (not (= (ite var2083 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var337 var554 (cast-from-var3616-to-var554 var3411)) ; Statement: $r23 = (com.alibaba.fastjson2.JSONArray) $r28 
(define-const var1861 var2778 (var3262_oneOf/-178658204 var337 String!class)) ; Statement: $r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;") 
(declare-const var607!9 var3228)
(assert (not (= var607!9 null-var3228)))
(assert (= (oneOf/1588225568 var607!9) var1861)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24 
 ; Statement: goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1177 String (getString/1992452270 var119!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var607!10 var3228)
(assert (not (= var607!10 null-var3228)))
(assert (= (constValue/1588225568 var607!10) var1177)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var2769 var3774 null-var3774) ; Statement: r31 = null 
(assert true)
(define-const var284 var3616 (get/-1324468399 var119!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var2452 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (= (ite var2452 1 0) 0)) ; Cond: $z3 == 0 
(define-const var804 Bool false) ; Statement: $z4 = $r25 instanceof java.lang.Object[] 
 ; Statement: if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(assert (= (ite var804 1 0) 0)) ; Cond: $z4 == 0 
(declare-const var607!11 var3228)
(assert (not (= var607!11 null-var3228)))
(assert (= (enumValues/1588225568 var607!11) var2769)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var1401 String (format/1588225568 var607!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var1401 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var607!12 var3228)
(assert (not (= var607!12 null-var3228)))
(assert (= (formatValidator/1588225568 var607!12) null-var333)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var3228-to-var3262=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), var461_compile/2141929305=([java.lang.String], java.util.regex.Pattern), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), cast-from-var3616-to-var554=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var3262_oneOf/-178658204=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.OneOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var3228=com.alibaba.fastjson2.schema.StringSchema, var607=r0, var464=com.alibaba.fastjson2.JSONObject, var119=r1, var3262=com.alibaba.fastjson2.schema.JSONSchema, var3592=$r3, var2887=$r2, var278=$z0, var69=$i6, var1752=$i0, var3561=$i8, var654=$i1, var1870=$r4, var1017=$r5, var3011=null_type, var3245=$r6, var461=java.util.regex.Pattern, var565=$r30, var696=$r7, var3616=java.lang.Object, var870=$r29, var2481=$z1, var1644=com.alibaba.fastjson2.schema.AnyOf, var3411=$r28, var2083=$z2, var554=com.alibaba.fastjson2.JSONArray, var337=$r23, var2778=com.alibaba.fastjson2.schema.OneOf, var1861=$r24, var1177=$r8, var3774=java.util.Set, var2769=r31, var284=$r25, var2452=$z3, var804=$z4, var1401=$r32, var333=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var3228, r0=var607, com.alibaba.fastjson2.JSONObject=var464, r1=var119, com.alibaba.fastjson2.schema.JSONSchema=var3262, $r3=var3592, $r2=var2887, $z0=var278, $i6=var69, $i0=var1752, $i8=var3561, $i1=var654, $r4=var1870, $r5=var1017, null_type=var3011, $r6=var3245, java.util.regex.Pattern=var461, $r30=var565, $r7=var696, java.lang.Object=var3616, $r29=var870, $z1=var2481, com.alibaba.fastjson2.schema.AnyOf=var1644, $r28=var3411, $z2=var2083, com.alibaba.fastjson2.JSONArray=var554, $r23=var337, com.alibaba.fastjson2.schema.OneOf=var2778, $r24=var1861, $r8=var1177, java.util.Set=var3774, r31=var2769, $r25=var284, $z3=var2452, $z4=var804, $r32=var1401, java.util.function.Predicate=var333}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6);	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r23 = (com.alibaba.fastjson2.JSONArray) $r28;	$r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24;	goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")];	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	$z4 = $r25 instanceof java.lang.Object[];	if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11