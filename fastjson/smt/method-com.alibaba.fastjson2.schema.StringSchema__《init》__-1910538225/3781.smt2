(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2454 0)
(declare-sort var1221 0)
(declare-sort var906 0)
(declare-sort var3378 0)
(declare-sort var1154 0)
(declare-sort var969 0)
(declare-sort var1594 0)
(declare-sort var3691 0)
(declare-sort var566 0)
(declare-sort var639 0)
(declare-sort var3197 0)
(declare-sort var2164 0)
(declare-sort var3341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var906 var1221) void)
(declare-fun cast-from-var2454-to-var906 (var2454) var906)
(declare-fun getString/1992452270 (var1221 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var2454) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var1221 String Int) Int)
(declare-fun minLength/1588225568 (var2454) Int)
(declare-fun maxLength/1588225568 (var2454) Int)
(declare-fun patternFormat/1588225568 (var2454) String)
(declare-fun var1154_compile/2141929305 (String) var1154)
(declare-fun pattern/1588225568 (var2454) var1154)
(declare-fun format/1588225568 (var2454) String)
(declare-fun get/-1324468399 (var1221 String) var969)
(declare-fun anyOf/1588225568 (var2454) var1594)
(declare-fun cast-from-var969-to-var3691 (var969) var3691)
(declare-fun var906_oneOf/-178658204 (var3691 ClassObject) var566)
(declare-fun oneOf/1588225568 (var2454) var566)
(declare-fun constValue/1588225568 (var2454) String)
(declare-fun cast-from-var969-to-var3197 (var969) var3197)
(declare-fun var2164-init () var2164)
(declare-fun var3197_size/-390258357 (var3197) Int)
(declare-fun <init>/1974270677 (var2164 Int) void)
(declare-fun cast-from-var2164-to-var639 (var2164) var639)
(declare-fun var639_addAll/-907809033 (var639 var3197) Bool)
(declare-fun enumValues/1588225568 (var2454) var639)
(declare-fun formatValidator/1588225568 (var2454) var3341)
(declare-const null-var2454 var2454)
(declare-const null-var1221 var1221)
(declare-const null-String String)
(declare-const null-var1594 var1594)
(declare-const null-var639 var639)
(declare-const null-var3341 var3341)
(declare-const var3061 var2454) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var3061 null-var2454)))
(declare-const var2666 var1221) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2666 null-var1221)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var2454-to-var906 var3061) var2666)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var3061!1 var2454)
(declare-const var2666!1 var1221)
(define-const var1277 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var1619 String (getString/1992452270 var2666!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var3927 Bool (equalsIgnoreCase/-92311102 var1277 var1619)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var3061!2 var2454)
(assert (not (= var3061!2 null-var2454)))
(assert (= (typed/1588225568 var3061!2) var3927)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var2694 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var3730 Int (getIntValue/-1814717338 var2666!1 "minLength" var2694)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var3061!3 var2454)
(assert (not (= var3061!3 null-var2454)))
(assert (= (minLength/1588225568 var3061!3) var3730)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var892 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var3188 Int (getIntValue/-1814717338 var2666!1 "maxLength" var892)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var3061!4 var2454)
(assert (not (= var3061!4 null-var2454)))
(assert (= (maxLength/1588225568 var3061!4) var3188)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var2300 String (getString/1992452270 var2666!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var3061!5 var2454)
(assert (not (= var3061!5 null-var2454)))
(assert (= (patternFormat/1588225568 var3061!5) var2300)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var929 String (patternFormat/1588225568 var3061!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (= var929 null-String))) ; Cond: $r5 != null 
(define-const var1043 String (patternFormat/1588225568 var3061!5)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(define-const var1424 var1154 (var1154_compile/2141929305 var1043)) ; Statement: $r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6) 
(assert true) ; Non Conditional
(declare-const var3061!6 var2454)
(assert (not (= var3061!6 null-var2454)))
(assert (= (pattern/1588225568 var3061!6) var1424)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var396 String (getString/1992452270 var2666!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var3061!7 var2454)
(assert (not (= var3061!7 null-var2454)))
(assert (= (format/1588225568 var3061!7) var396)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var580 var969 (get/-1324468399 var2666!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var2131 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (= (ite var2131 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var3061!8 var2454)
(assert (not (= var3061!8 null-var2454)))
(assert (= (anyOf/1588225568 var3061!8) null-var1594)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var1317 var969 (get/-1324468399 var2666!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var2358 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (not (= (ite var2358 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1020 var3691 (cast-from-var969-to-var3691 var1317)) ; Statement: $r23 = (com.alibaba.fastjson2.JSONArray) $r28 
(define-const var2809 var566 (var906_oneOf/-178658204 var1020 String!class)) ; Statement: $r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;") 
(declare-const var3061!9 var2454)
(assert (not (= var3061!9 null-var2454)))
(assert (= (oneOf/1588225568 var3061!9) var2809)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24 
 ; Statement: goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2493 String (getString/1992452270 var2666!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var3061!10 var2454)
(assert (not (= var3061!10 null-var2454)))
(assert (= (constValue/1588225568 var3061!10) var2493)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var1199 var639 null-var639) ; Statement: r31 = null 
(assert true)
(define-const var915 var969 (get/-1324468399 var2666!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var2683 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (not (= (ite var2683 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2662 var3197 (cast-from-var969-to-var3197 var915)) ; Statement: r21 = (java.util.Collection) $r25 
(define-const var1948 var2164 var2164-init) ; Statement: $r34 = new java.util.LinkedHashSet 
(define-const var281 Int (var3197_size/-390258357 var2662)) ; Statement: $i3 = interfaceinvoke r21.<java.util.Collection: int size()>() 
(assert true)
;(assert (<init>/1974270677 var1948 var281)) ; Statement: specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3) 

(declare-const var1948!1 var2164)
(declare-const var281!1 Int)
(define-const var1199!1 var639 (cast-from-var2164-to-var639 var1948!1)) ; Statement: r31 = $r34 
;(assert (var639_addAll/-907809033 (cast-from-var2164-to-var639 var1948!1) var2662)) ; Statement: interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21) 

(declare-const var1948!2 var2164)
(declare-const var2662!1 var3197)
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31] 
(assert true) ; Non Conditional
(declare-const var3061!11 var2454)
(assert (not (= var3061!11 null-var2454)))
(assert (= (enumValues/1588225568 var3061!11) var1199!1)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var257 String (format/1588225568 var3061!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var257 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var3061!12 var2454)
(assert (not (= var3061!12 null-var2454)))
(assert (= (formatValidator/1588225568 var3061!12) null-var3341)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var2454-to-var906=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), var1154_compile/2141929305=([java.lang.String], java.util.regex.Pattern), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), cast-from-var969-to-var3691=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var906_oneOf/-178658204=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.OneOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), cast-from-var969-to-var3197=([java.lang.Object], java.util.Collection), var2164-init=([], java.util.LinkedHashSet), var3197_size/-390258357=([java.util.Collection], int), <init>/1974270677=([java.util.LinkedHashSet, int], void), cast-from-var2164-to-var639=([java.util.LinkedHashSet], java.util.Set), var639_addAll/-907809033=([java.util.Set, java.util.Collection], boolean), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var2454=com.alibaba.fastjson2.schema.StringSchema, var3061=r0, var1221=com.alibaba.fastjson2.JSONObject, var2666=r1, var906=com.alibaba.fastjson2.schema.JSONSchema, var1277=$r3, var1619=$r2, var3927=$z0, var2694=$i6, var3730=$i0, var892=$i8, var3188=$i1, var2300=$r4, var929=$r5, var3378=null_type, var1043=$r6, var1154=java.util.regex.Pattern, var1424=$r30, var396=$r7, var969=java.lang.Object, var580=$r29, var2131=$z1, var1594=com.alibaba.fastjson2.schema.AnyOf, var1317=$r28, var2358=$z2, var3691=com.alibaba.fastjson2.JSONArray, var1020=$r23, var566=com.alibaba.fastjson2.schema.OneOf, var2809=$r24, var2493=$r8, var639=java.util.Set, var1199=r31, var915=$r25, var2683=$z3, var3197=java.util.Collection, var2662=r21, var2164=java.util.LinkedHashSet, var1948=$r34, var281=$i3, var257=$r32, var3341=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var2454, r0=var3061, com.alibaba.fastjson2.JSONObject=var1221, r1=var2666, com.alibaba.fastjson2.schema.JSONSchema=var906, $r3=var1277, $r2=var1619, $z0=var3927, $i6=var2694, $i0=var3730, $i8=var892, $i1=var3188, $r4=var2300, $r5=var929, null_type=var3378, $r6=var1043, java.util.regex.Pattern=var1154, $r30=var1424, $r7=var396, java.lang.Object=var969, $r29=var580, $z1=var2131, com.alibaba.fastjson2.schema.AnyOf=var1594, $r28=var1317, $z2=var2358, com.alibaba.fastjson2.JSONArray=var3691, $r23=var1020, com.alibaba.fastjson2.schema.OneOf=var566, $r24=var2809, $r8=var2493, java.util.Set=var639, r31=var1199, $r25=var915, $z3=var2683, java.util.Collection=var3197, r21=var2662, java.util.LinkedHashSet=var2164, $r34=var1948, $i3=var281, $r32=var257, java.util.function.Predicate=var3341}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6);	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r23 = (com.alibaba.fastjson2.JSONArray) $r28;	$r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24;	goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")];	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	r21 = (java.util.Collection) $r25;	$r34 = new java.util.LinkedHashSet;	$i3 = interfaceinvoke r21.<java.util.Collection: int size()>();	specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3);	r31 = $r34;	interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21);	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11