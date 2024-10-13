(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2894 0)
(declare-sort var866 0)
(declare-sort var226 0)
(declare-sort var2207 0)
(declare-sort var1484 0)
(declare-sort var6 0)
(declare-sort var3368 0)
(declare-sort var2341 0)
(declare-sort var47 0)
(declare-sort var2010 0)
(declare-sort var741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var226 var866) void)
(declare-fun cast-from-var2894-to-var226 (var2894) var226)
(declare-fun getString/1992452270 (var866 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var2894) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var866 String Int) Int)
(declare-fun minLength/1588225568 (var2894) Int)
(declare-fun maxLength/1588225568 (var2894) Int)
(declare-fun patternFormat/1588225568 (var2894) String)
(declare-fun var1484_compile/2141929305 (String) var1484)
(declare-fun pattern/1588225568 (var2894) var1484)
(declare-fun format/1588225568 (var2894) String)
(declare-fun get/-1324468399 (var866 String) var6)
(declare-fun cast-from-var6-to-var3368 (var6) var3368)
(declare-fun var226_anyOf/-686272272 (var3368 ClassObject) var2341)
(declare-fun anyOf/1588225568 (var2894) var2341)
(declare-fun oneOf/1588225568 (var2894) var47)
(declare-fun constValue/1588225568 (var2894) String)
(declare-fun enumValues/1588225568 (var2894) var2010)
(declare-fun formatValidator/1588225568 (var2894) var741)
(declare-const null-var2894 var2894)
(declare-const null-var866 var866)
(declare-const null-String String)
(declare-const null-var47 var47)
(declare-const null-var2010 var2010)
(declare-const null-var741 var741)
(declare-const var2823 var2894) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var2823 null-var2894)))
(declare-const var129 var866) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var129 null-var866)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var2894-to-var226 var2823) var129)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var2823!1 var2894)
(declare-const var129!1 var866)
(define-const var873 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var3632 String (getString/1992452270 var129!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var3121 Bool (equalsIgnoreCase/-92311102 var873 var3632)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var2823!2 var2894)
(assert (not (= var2823!2 null-var2894)))
(assert (= (typed/1588225568 var2823!2) var3121)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var1907 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var1593 Int (getIntValue/-1814717338 var129!1 "minLength" var1907)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var2823!3 var2894)
(assert (not (= var2823!3 null-var2894)))
(assert (= (minLength/1588225568 var2823!3) var1593)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var861 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var3752 Int (getIntValue/-1814717338 var129!1 "maxLength" var861)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var2823!4 var2894)
(assert (not (= var2823!4 null-var2894)))
(assert (= (maxLength/1588225568 var2823!4) var3752)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var2140 String (getString/1992452270 var129!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var2823!5 var2894)
(assert (not (= var2823!5 null-var2894)))
(assert (= (patternFormat/1588225568 var2823!5) var2140)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var3511 String (patternFormat/1588225568 var2823!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (= var3511 null-String))) ; Cond: $r5 != null 
(define-const var1301 String (patternFormat/1588225568 var2823!5)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(define-const var3082 var1484 (var1484_compile/2141929305 var1301)) ; Statement: $r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6) 
(assert true) ; Non Conditional
(declare-const var2823!6 var2894)
(assert (not (= var2823!6 null-var2894)))
(assert (= (pattern/1588225568 var2823!6) var3082)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var1809 String (getString/1992452270 var129!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var2823!7 var2894)
(assert (not (= var2823!7 null-var2894)))
(assert (= (format/1588225568 var2823!7) var1809)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var2105 var6 (get/-1324468399 var129!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var2376 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (not (= (ite var2376 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var817 var3368 (cast-from-var6-to-var3368 var2105)) ; Statement: $r26 = (com.alibaba.fastjson2.JSONArray) $r29 
(define-const var2821 var2341 (var226_anyOf/-686272272 var817 String!class)) ; Statement: $r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;") 
(declare-const var2823!8 var2894)
(assert (not (= var2823!8 null-var2894)))
(assert (= (anyOf/1588225568 var2823!8) var2821)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27 
 ; Statement: goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")] 
(assert true) ; Non Conditional
(assert true)
(define-const var398 var6 (get/-1324468399 var129!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var1786 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (= (ite var1786 1 0) 0)) ; Cond: $z2 == 0 
(declare-const var2823!9 var2894)
(assert (not (= var2823!9 null-var2894)))
(assert (= (oneOf/1588225568 var2823!9) null-var47)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var2034 String (getString/1992452270 var129!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var2823!10 var2894)
(assert (not (= var2823!10 null-var2894)))
(assert (= (constValue/1588225568 var2823!10) var2034)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var958 var2010 null-var2010) ; Statement: r31 = null 
(assert true)
(define-const var2607 var6 (get/-1324468399 var129!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var3826 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (= (ite var3826 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3971 Bool false) ; Statement: $z4 = $r25 instanceof java.lang.Object[] 
 ; Statement: if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(assert (= (ite var3971 1 0) 0)) ; Cond: $z4 == 0 
(declare-const var2823!11 var2894)
(assert (not (= var2823!11 null-var2894)))
(assert (= (enumValues/1588225568 var2823!11) var958)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var1109 String (format/1588225568 var2823!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var1109 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var2823!12 var2894)
(assert (not (= var2823!12 null-var2894)))
(assert (= (formatValidator/1588225568 var2823!12) null-var741)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var2894-to-var226=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), var1484_compile/2141929305=([java.lang.String], java.util.regex.Pattern), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), cast-from-var6-to-var3368=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var226_anyOf/-686272272=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.AnyOf), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var2894=com.alibaba.fastjson2.schema.StringSchema, var2823=r0, var866=com.alibaba.fastjson2.JSONObject, var129=r1, var226=com.alibaba.fastjson2.schema.JSONSchema, var873=$r3, var3632=$r2, var3121=$z0, var1907=$i6, var1593=$i0, var861=$i8, var3752=$i1, var2140=$r4, var3511=$r5, var2207=null_type, var1301=$r6, var1484=java.util.regex.Pattern, var3082=$r30, var1809=$r7, var6=java.lang.Object, var2105=$r29, var2376=$z1, var3368=com.alibaba.fastjson2.JSONArray, var817=$r26, var2341=com.alibaba.fastjson2.schema.AnyOf, var2821=$r27, var398=$r28, var1786=$z2, var47=com.alibaba.fastjson2.schema.OneOf, var2034=$r8, var2010=java.util.Set, var958=r31, var2607=$r25, var3826=$z3, var3971=$z4, var1109=$r32, var741=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var2894, r0=var2823, com.alibaba.fastjson2.JSONObject=var866, r1=var129, com.alibaba.fastjson2.schema.JSONSchema=var226, $r3=var873, $r2=var3632, $z0=var3121, $i6=var1907, $i0=var1593, $i8=var861, $i1=var3752, $r4=var2140, $r5=var3511, null_type=var2207, $r6=var1301, java.util.regex.Pattern=var1484, $r30=var3082, $r7=var1809, java.lang.Object=var6, $r29=var2105, $z1=var2376, com.alibaba.fastjson2.JSONArray=var3368, $r26=var817, com.alibaba.fastjson2.schema.AnyOf=var2341, $r27=var2821, $r28=var398, $z2=var1786, com.alibaba.fastjson2.schema.OneOf=var47, $r8=var2034, java.util.Set=var2010, r31=var958, $r25=var2607, $z3=var3826, $z4=var3971, $r32=var1109, java.util.function.Predicate=var741}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r6);	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r26 = (com.alibaba.fastjson2.JSONArray) $r29;	$r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27;	goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")];	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	$z4 = $r25 instanceof java.lang.Object[];	if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11