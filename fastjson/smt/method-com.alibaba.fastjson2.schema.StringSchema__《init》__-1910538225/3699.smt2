(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var2221 0)
(declare-sort var2912 0)
(declare-sort var1787 0)
(declare-sort var3947 0)
(declare-sort var1415 0)
(declare-sort var2320 0)
(declare-sort var3356 0)
(declare-sort var339 0)
(declare-sort var2789 0)
(declare-sort var408 0)
(declare-sort var2127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1415540230 (var2912 var2221) void)
(declare-fun cast-from-var2556-to-var2912 (var2556) var2912)
(declare-fun getString/1992452270 (var2221 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var2556) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var2221 String Int) Int)
(declare-fun minLength/1588225568 (var2556) Int)
(declare-fun maxLength/1588225568 (var2556) Int)
(declare-fun patternFormat/1588225568 (var2556) String)
(declare-fun pattern/1588225568 (var2556) var3947)
(declare-fun format/1588225568 (var2556) String)
(declare-fun get/-1324468399 (var2221 String) var1415)
(declare-fun anyOf/1588225568 (var2556) var2320)
(declare-fun oneOf/1588225568 (var2556) var3356)
(declare-fun constValue/1588225568 (var2556) String)
(declare-fun cast-from-var1415-to-var2789 (var1415) var2789)
(declare-fun var408-init () var408)
(declare-fun var2789_size/-390258357 (var2789) Int)
(declare-fun <init>/1974270677 (var408 Int) void)
(declare-fun cast-from-var408-to-var339 (var408) var339)
(declare-fun var339_addAll/-907809033 (var339 var2789) Bool)
(declare-fun enumValues/1588225568 (var2556) var339)
(declare-fun formatValidator/1588225568 (var2556) var2127)
(declare-const null-var2556 var2556)
(declare-const null-var2221 var2221)
(declare-const null-String String)
(declare-const null-var3947 var3947)
(declare-const null-var2320 var2320)
(declare-const null-var3356 var3356)
(declare-const null-var339 var339)
(declare-const null-var2127 var2127)
(declare-const var1041 var2556) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var1041 null-var2556)))
(declare-const var2623 var2221) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2623 null-var2221)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var2556-to-var2912 var1041) var2623)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var1041!1 var2556)
(declare-const var2623!1 var2221)
(define-const var322 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var1695 String (getString/1992452270 var2623!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var3589 Bool (equalsIgnoreCase/-92311102 var322 var1695)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var1041!2 var2556)
(assert (not (= var1041!2 null-var2556)))
(assert (= (typed/1588225568 var1041!2) var3589)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var837 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var176 Int (getIntValue/-1814717338 var2623!1 "minLength" var837)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var1041!3 var2556)
(assert (not (= var1041!3 null-var2556)))
(assert (= (minLength/1588225568 var1041!3) var176)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var2042 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var932 Int (getIntValue/-1814717338 var2623!1 "maxLength" var2042)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var1041!4 var2556)
(assert (not (= var1041!4 null-var2556)))
(assert (= (maxLength/1588225568 var1041!4) var932)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var3382 String (getString/1992452270 var2623!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var1041!5 var2556)
(assert (not (= var1041!5 null-var2556)))
(assert (= (patternFormat/1588225568 var1041!5) var3382)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var1923 String (patternFormat/1588225568 var1041!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (not (= var1923 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var1196 var3947 null-var3947) ; Statement: $r30 = null 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30] 
(assert true) ; Non Conditional
(declare-const var1041!6 var2556)
(assert (not (= var1041!6 null-var2556)))
(assert (= (pattern/1588225568 var1041!6) var1196)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var1341 String (getString/1992452270 var2623!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var1041!7 var2556)
(assert (not (= var1041!7 null-var2556)))
(assert (= (format/1588225568 var1041!7) var1341)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var1434 var1415 (get/-1324468399 var2623!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var2219 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (= (ite var2219 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var1041!8 var2556)
(assert (not (= var1041!8 null-var2556)))
(assert (= (anyOf/1588225568 var1041!8) null-var2320)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var201 var1415 (get/-1324468399 var2623!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var860 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (= (ite var860 1 0) 0)) ; Cond: $z2 == 0 
(declare-const var1041!9 var2556)
(assert (not (= var1041!9 null-var2556)))
(assert (= (oneOf/1588225568 var1041!9) null-var3356)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var1763 String (getString/1992452270 var2623!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var1041!10 var2556)
(assert (not (= var1041!10 null-var2556)))
(assert (= (constValue/1588225568 var1041!10) var1763)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var2583 var339 null-var339) ; Statement: r31 = null 
(assert true)
(define-const var664 var1415 (get/-1324468399 var2623!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var1774 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (not (= (ite var1774 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var599 var2789 (cast-from-var1415-to-var2789 var664)) ; Statement: r21 = (java.util.Collection) $r25 
(define-const var2037 var408 var408-init) ; Statement: $r34 = new java.util.LinkedHashSet 
(define-const var1691 Int (var2789_size/-390258357 var599)) ; Statement: $i3 = interfaceinvoke r21.<java.util.Collection: int size()>() 
(assert true)
;(assert (<init>/1974270677 var2037 var1691)) ; Statement: specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3) 

(declare-const var2037!1 var408)
(declare-const var1691!1 Int)
(define-const var2583!1 var339 (cast-from-var408-to-var339 var2037!1)) ; Statement: r31 = $r34 
;(assert (var339_addAll/-907809033 (cast-from-var408-to-var339 var2037!1) var599)) ; Statement: interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21) 

(declare-const var2037!2 var408)
(declare-const var599!1 var2789)
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31] 
(assert true) ; Non Conditional
(declare-const var1041!11 var2556)
(assert (not (= var1041!11 null-var2556)))
(assert (= (enumValues/1588225568 var1041!11) var2583!1)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var3215 String (format/1588225568 var1041!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var3215 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var1041!12 var2556)
(assert (not (= var1041!12 null-var2556)))
(assert (= (formatValidator/1588225568 var1041!12) null-var2127)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var2556-to-var2912=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), cast-from-var1415-to-var2789=([java.lang.Object], java.util.Collection), var408-init=([], java.util.LinkedHashSet), var2789_size/-390258357=([java.util.Collection], int), <init>/1974270677=([java.util.LinkedHashSet, int], void), cast-from-var408-to-var339=([java.util.LinkedHashSet], java.util.Set), var339_addAll/-907809033=([java.util.Set, java.util.Collection], boolean), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var2556=com.alibaba.fastjson2.schema.StringSchema, var1041=r0, var2221=com.alibaba.fastjson2.JSONObject, var2623=r1, var2912=com.alibaba.fastjson2.schema.JSONSchema, var322=$r3, var1695=$r2, var3589=$z0, var837=$i6, var176=$i0, var2042=$i8, var932=$i1, var3382=$r4, var1923=$r5, var1787=null_type, var3947=java.util.regex.Pattern, var1196=$r30, var1341=$r7, var1415=java.lang.Object, var1434=$r29, var2219=$z1, var2320=com.alibaba.fastjson2.schema.AnyOf, var201=$r28, var860=$z2, var3356=com.alibaba.fastjson2.schema.OneOf, var1763=$r8, var339=java.util.Set, var2583=r31, var664=$r25, var1774=$z3, var2789=java.util.Collection, var599=r21, var408=java.util.LinkedHashSet, var2037=$r34, var1691=$i3, var3215=$r32, var2127=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var2556, r0=var1041, com.alibaba.fastjson2.JSONObject=var2221, r1=var2623, com.alibaba.fastjson2.schema.JSONSchema=var2912, $r3=var322, $r2=var1695, $z0=var3589, $i6=var837, $i0=var176, $i8=var2042, $i1=var932, $r4=var3382, $r5=var1923, null_type=var1787, java.util.regex.Pattern=var3947, $r30=var1196, $r7=var1341, java.lang.Object=var1415, $r29=var1434, $z1=var2219, com.alibaba.fastjson2.schema.AnyOf=var2320, $r28=var201, $z2=var860, com.alibaba.fastjson2.schema.OneOf=var3356, $r8=var1763, java.util.Set=var339, r31=var2583, $r25=var664, $z3=var1774, java.util.Collection=var2789, r21=var599, java.util.LinkedHashSet=var408, $r34=var2037, $i3=var1691, $r32=var3215, java.util.function.Predicate=var2127}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = null;	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	r21 = (java.util.Collection) $r25;	$r34 = new java.util.LinkedHashSet;	$i3 = interfaceinvoke r21.<java.util.Collection: int size()>();	specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3);	r31 = $r34;	interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21);	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11