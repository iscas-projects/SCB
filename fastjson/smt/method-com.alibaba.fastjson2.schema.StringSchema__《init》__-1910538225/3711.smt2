(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var589 0)
(declare-sort var1194 0)
(declare-sort var3788 0)
(declare-sort var3656 0)
(declare-sort var2330 0)
(declare-sort var3074 0)
(declare-sort var1420 0)
(declare-sort var2863 0)
(declare-sort var1957 0)
(declare-sort var1515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1415540230 (var3788 var1194) void)
(declare-fun cast-from-var589-to-var3788 (var589) var3788)
(declare-fun getString/1992452270 (var1194 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var589) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var1194 String Int) Int)
(declare-fun minLength/1588225568 (var589) Int)
(declare-fun maxLength/1588225568 (var589) Int)
(declare-fun patternFormat/1588225568 (var589) String)
(declare-fun pattern/1588225568 (var589) var2330)
(declare-fun format/1588225568 (var589) String)
(declare-fun get/-1324468399 (var1194 String) var3074)
(declare-fun anyOf/1588225568 (var589) var1420)
(declare-fun oneOf/1588225568 (var589) var2863)
(declare-fun constValue/1588225568 (var589) String)
(declare-fun enumValues/1588225568 (var589) var1957)
(declare-fun formatValidator/1588225568 (var589) var1515)
(declare-const null-var589 var589)
(declare-const null-var1194 var1194)
(declare-const null-String String)
(declare-const null-var2330 var2330)
(declare-const null-var1420 var1420)
(declare-const null-var2863 var2863)
(declare-const null-var1957 var1957)
(declare-const null-var1515 var1515)
(declare-const var765 var589) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var765 null-var589)))
(declare-const var1873 var1194) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var1873 null-var1194)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var589-to-var3788 var765) var1873)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var765!1 var589)
(declare-const var1873!1 var1194)
(define-const var577 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var513 String (getString/1992452270 var1873!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var2890 Bool (equalsIgnoreCase/-92311102 var577 var513)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var765!2 var589)
(assert (not (= var765!2 null-var589)))
(assert (= (typed/1588225568 var765!2) var2890)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var1459 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var240 Int (getIntValue/-1814717338 var1873!1 "minLength" var1459)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var765!3 var589)
(assert (not (= var765!3 null-var589)))
(assert (= (minLength/1588225568 var765!3) var240)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var2116 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var3521 Int (getIntValue/-1814717338 var1873!1 "maxLength" var2116)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var765!4 var589)
(assert (not (= var765!4 null-var589)))
(assert (= (maxLength/1588225568 var765!4) var3521)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var3343 String (getString/1992452270 var1873!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var765!5 var589)
(assert (not (= var765!5 null-var589)))
(assert (= (patternFormat/1588225568 var765!5) var3343)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var164 String (patternFormat/1588225568 var765!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (not (= var164 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var2460 var2330 null-var2330) ; Statement: $r30 = null 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30] 
(assert true) ; Non Conditional
(declare-const var765!6 var589)
(assert (not (= var765!6 null-var589)))
(assert (= (pattern/1588225568 var765!6) var2460)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var1792 String (getString/1992452270 var1873!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var765!7 var589)
(assert (not (= var765!7 null-var589)))
(assert (= (format/1588225568 var765!7) var1792)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var1333 var3074 (get/-1324468399 var1873!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var1557 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (= (ite var1557 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var765!8 var589)
(assert (not (= var765!8 null-var589)))
(assert (= (anyOf/1588225568 var765!8) null-var1420)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var3346 var3074 (get/-1324468399 var1873!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var1217 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (= (ite var1217 1 0) 0)) ; Cond: $z2 == 0 
(declare-const var765!9 var589)
(assert (not (= var765!9 null-var589)))
(assert (= (oneOf/1588225568 var765!9) null-var2863)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var3180 String (getString/1992452270 var1873!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var765!10 var589)
(assert (not (= var765!10 null-var589)))
(assert (= (constValue/1588225568 var765!10) var3180)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var1274 var1957 null-var1957) ; Statement: r31 = null 
(assert true)
(define-const var3333 var3074 (get/-1324468399 var1873!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var653 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (= (ite var653 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1061 Bool false) ; Statement: $z4 = $r25 instanceof java.lang.Object[] 
 ; Statement: if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(assert (= (ite var1061 1 0) 0)) ; Cond: $z4 == 0 
(declare-const var765!11 var589)
(assert (not (= var765!11 null-var589)))
(assert (= (enumValues/1588225568 var765!11) var1274)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var658 String (format/1588225568 var765!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var658 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var765!12 var589)
(assert (not (= var765!12 null-var589)))
(assert (= (formatValidator/1588225568 var765!12) null-var1515)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var589-to-var3788=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var589=com.alibaba.fastjson2.schema.StringSchema, var765=r0, var1194=com.alibaba.fastjson2.JSONObject, var1873=r1, var3788=com.alibaba.fastjson2.schema.JSONSchema, var577=$r3, var513=$r2, var2890=$z0, var1459=$i6, var240=$i0, var2116=$i8, var3521=$i1, var3343=$r4, var164=$r5, var3656=null_type, var2330=java.util.regex.Pattern, var2460=$r30, var1792=$r7, var3074=java.lang.Object, var1333=$r29, var1557=$z1, var1420=com.alibaba.fastjson2.schema.AnyOf, var3346=$r28, var1217=$z2, var2863=com.alibaba.fastjson2.schema.OneOf, var3180=$r8, var1957=java.util.Set, var1274=r31, var3333=$r25, var653=$z3, var1061=$z4, var658=$r32, var1515=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var589, r0=var765, com.alibaba.fastjson2.JSONObject=var1194, r1=var1873, com.alibaba.fastjson2.schema.JSONSchema=var3788, $r3=var577, $r2=var513, $z0=var2890, $i6=var1459, $i0=var240, $i8=var2116, $i1=var3521, $r4=var3343, $r5=var164, null_type=var3656, java.util.regex.Pattern=var2330, $r30=var2460, $r7=var1792, java.lang.Object=var3074, $r29=var1333, $z1=var1557, com.alibaba.fastjson2.schema.AnyOf=var1420, $r28=var3346, $z2=var1217, com.alibaba.fastjson2.schema.OneOf=var2863, $r8=var3180, java.util.Set=var1957, r31=var1274, $r25=var3333, $z3=var653, $z4=var1061, $r32=var658, java.util.function.Predicate=var1515}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = null;	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	$z4 = $r25 instanceof java.lang.Object[];	if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11