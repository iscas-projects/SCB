(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3208 0)
(declare-sort var3800 0)
(declare-sort var3727 0)
(declare-sort var3063 0)
(declare-sort var2220 0)
(declare-sort var3929 0)
(declare-sort var1620 0)
(declare-sort var697 0)
(declare-sort var803 0)
(declare-sort var948 0)
(declare-sort var3496 0)
(declare-sort var3338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1415540230 (var3727 var3800) void)
(declare-fun cast-from-var3208-to-var3727 (var3208) var3727)
(declare-fun getString/1992452270 (var3800 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var3208) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var3800 String Int) Int)
(declare-fun minLength/1588225568 (var3208) Int)
(declare-fun maxLength/1588225568 (var3208) Int)
(declare-fun patternFormat/1588225568 (var3208) String)
(declare-fun var2220_compile/2141929305 (String) var2220)
(declare-fun pattern/1588225568 (var3208) var2220)
(declare-fun format/1588225568 (var3208) String)
(declare-fun get/-1324468399 (var3800 String) var3929)
(declare-fun anyOf/1588225568 (var3208) var1620)
(declare-fun oneOf/1588225568 (var3208) var697)
(declare-fun constValue/1588225568 (var3208) String)
(declare-fun cast-from-var3929-to-var948 (var3929) var948)
(declare-fun var3496-init () var3496)
(declare-fun var948_size/-390258357 (var948) Int)
(declare-fun <init>/1974270677 (var3496 Int) void)
(declare-fun cast-from-var3496-to-var803 (var3496) var803)
(declare-fun var803_addAll/-907809033 (var803 var948) Bool)
(declare-fun enumValues/1588225568 (var3208) var803)
(declare-fun formatValidator/1588225568 (var3208) var3338)
(declare-const null-var3208 var3208)
(declare-const null-var3800 var3800)
(declare-const null-String String)
(declare-const null-var1620 var1620)
(declare-const null-var697 var697)
(declare-const null-var803 var803)
(declare-const null-var3338 var3338)
(declare-const var3566 var3208) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var3566 null-var3208)))
(declare-const var3748 var3800) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var3748 null-var3800)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var3208-to-var3727 var3566) var3748)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var3566!1 var3208)
(declare-const var3748!1 var3800)
(define-const var893 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var0 String (getString/1992452270 var3748!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var3225 Bool (equalsIgnoreCase/-92311102 var893 var0)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var3566!2 var3208)
(assert (not (= var3566!2 null-var3208)))
(assert (= (typed/1588225568 var3566!2) var3225)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var1448 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var3353 Int (getIntValue/-1814717338 var3748!1 "minLength" var1448)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var3566!3 var3208)
(assert (not (= var3566!3 null-var3208)))
(assert (= (minLength/1588225568 var3566!3) var3353)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var1676 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var352 Int (getIntValue/-1814717338 var3748!1 "maxLength" var1676)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var3566!4 var3208)
(assert (not (= var3566!4 null-var3208)))
(assert (= (maxLength/1588225568 var3566!4) var352)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var3803 String (getString/1992452270 var3748!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var3566!5 var3208)
(assert (not (= var3566!5 null-var3208)))
(assert (= (patternFormat/1588225568 var3566!5) var3803)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var1108 String (patternFormat/1588225568 var3566!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (= var1108 null-String))) ; Cond: $r5 != null 
(define-const var2947 String (patternFormat/1588225568 var3566!5)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(define-const var1850 var2220 (var2220_compile/2141929305 var2947)) ; Statement: $r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6) 
(assert true) ; Non Conditional
(declare-const var3566!6 var3208)
(assert (not (= var3566!6 null-var3208)))
(assert (= (pattern/1588225568 var3566!6) var1850)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var3779 String (getString/1992452270 var3748!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var3566!7 var3208)
(assert (not (= var3566!7 null-var3208)))
(assert (= (format/1588225568 var3566!7) var3779)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var1000 var3929 (get/-1324468399 var3748!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var394 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (= (ite var394 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var3566!8 var3208)
(assert (not (= var3566!8 null-var3208)))
(assert (= (anyOf/1588225568 var3566!8) null-var1620)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var2118 var3929 (get/-1324468399 var3748!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var677 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (= (ite var677 1 0) 0)) ; Cond: $z2 == 0 
(declare-const var3566!9 var3208)
(assert (not (= var3566!9 null-var3208)))
(assert (= (oneOf/1588225568 var3566!9) null-var697)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var1188 String (getString/1992452270 var3748!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var3566!10 var3208)
(assert (not (= var3566!10 null-var3208)))
(assert (= (constValue/1588225568 var3566!10) var1188)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var525 var803 null-var803) ; Statement: r31 = null 
(assert true)
(define-const var507 var3929 (get/-1324468399 var3748!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var1311 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (not (= (ite var1311 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var389 var948 (cast-from-var3929-to-var948 var507)) ; Statement: r21 = (java.util.Collection) $r25 
(define-const var1240 var3496 var3496-init) ; Statement: $r34 = new java.util.LinkedHashSet 
(define-const var2113 Int (var948_size/-390258357 var389)) ; Statement: $i3 = interfaceinvoke r21.<java.util.Collection: int size()>() 
(assert true)
;(assert (<init>/1974270677 var1240 var2113)) ; Statement: specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3) 

(declare-const var1240!1 var3496)
(declare-const var2113!1 Int)
(define-const var525!1 var803 (cast-from-var3496-to-var803 var1240!1)) ; Statement: r31 = $r34 
;(assert (var803_addAll/-907809033 (cast-from-var3496-to-var803 var1240!1) var389)) ; Statement: interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21) 

(declare-const var1240!2 var3496)
(declare-const var389!1 var948)
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31] 
(assert true) ; Non Conditional
(declare-const var3566!11 var3208)
(assert (not (= var3566!11 null-var3208)))
(assert (= (enumValues/1588225568 var3566!11) var525!1)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var1455 String (format/1588225568 var3566!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var1455 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var3566!12 var3208)
(assert (not (= var3566!12 null-var3208)))
(assert (= (formatValidator/1588225568 var3566!12) null-var3338)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var3208-to-var3727=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), var2220_compile/2141929305=([java.lang.String], java.util.regex.Pattern), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), cast-from-var3929-to-var948=([java.lang.Object], java.util.Collection), var3496-init=([], java.util.LinkedHashSet), var948_size/-390258357=([java.util.Collection], int), <init>/1974270677=([java.util.LinkedHashSet, int], void), cast-from-var3496-to-var803=([java.util.LinkedHashSet], java.util.Set), var803_addAll/-907809033=([java.util.Set, java.util.Collection], boolean), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var3208=com.alibaba.fastjson2.schema.StringSchema, var3566=r0, var3800=com.alibaba.fastjson2.JSONObject, var3748=r1, var3727=com.alibaba.fastjson2.schema.JSONSchema, var893=$r3, var0=$r2, var3225=$z0, var1448=$i6, var3353=$i0, var1676=$i8, var352=$i1, var3803=$r4, var1108=$r5, var3063=null_type, var2947=$r6, var2220=java.util.regex.Pattern, var1850=$r30, var3779=$r7, var3929=java.lang.Object, var1000=$r29, var394=$z1, var1620=com.alibaba.fastjson2.schema.AnyOf, var2118=$r28, var677=$z2, var697=com.alibaba.fastjson2.schema.OneOf, var1188=$r8, var803=java.util.Set, var525=r31, var507=$r25, var1311=$z3, var948=java.util.Collection, var389=r21, var3496=java.util.LinkedHashSet, var1240=$r34, var2113=$i3, var1455=$r32, var3338=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var3208, r0=var3566, com.alibaba.fastjson2.JSONObject=var3800, r1=var3748, com.alibaba.fastjson2.schema.JSONSchema=var3727, $r3=var893, $r2=var0, $z0=var3225, $i6=var1448, $i0=var3353, $i8=var1676, $i1=var352, $r4=var3803, $r5=var1108, null_type=var3063, $r6=var2947, java.util.regex.Pattern=var2220, $r30=var1850, $r7=var3779, java.lang.Object=var3929, $r29=var1000, $z1=var394, com.alibaba.fastjson2.schema.AnyOf=var1620, $r28=var2118, $z2=var677, com.alibaba.fastjson2.schema.OneOf=var697, $r8=var1188, java.util.Set=var803, r31=var525, $r25=var507, $z3=var1311, java.util.Collection=var948, r21=var389, java.util.LinkedHashSet=var3496, $r34=var1240, $i3=var2113, $r32=var1455, java.util.function.Predicate=var3338}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6);	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	r21 = (java.util.Collection) $r25;	$r34 = new java.util.LinkedHashSet;	$i3 = interfaceinvoke r21.<java.util.Collection: int size()>();	specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3);	r31 = $r34;	interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21);	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11