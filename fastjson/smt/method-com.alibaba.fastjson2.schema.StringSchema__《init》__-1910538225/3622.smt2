(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2368 0)
(declare-sort var2060 0)
(declare-sort var3742 0)
(declare-sort var204 0)
(declare-sort var1402 0)
(declare-sort var2907 0)
(declare-sort var2313 0)
(declare-sort var195 0)
(declare-sort var1931 0)
(declare-sort var2731 0)
(declare-sort var3219 0)
(declare-sort var1792 0)
(declare-sort var2631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var3742 var2060) void)
(declare-fun cast-from-var2368-to-var3742 (var2368) var3742)
(declare-fun getString/1992452270 (var2060 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var2368) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var2060 String Int) Int)
(declare-fun minLength/1588225568 (var2368) Int)
(declare-fun maxLength/1588225568 (var2368) Int)
(declare-fun patternFormat/1588225568 (var2368) String)
(declare-fun pattern/1588225568 (var2368) var1402)
(declare-fun format/1588225568 (var2368) String)
(declare-fun get/-1324468399 (var2060 String) var2907)
(declare-fun cast-from-var2907-to-var2313 (var2907) var2313)
(declare-fun var3742_anyOf/-686272272 (var2313 ClassObject) var195)
(declare-fun anyOf/1588225568 (var2368) var195)
(declare-fun oneOf/1588225568 (var2368) var1931)
(declare-fun constValue/1588225568 (var2368) String)
(declare-fun cast-from-var2907-to-var3219 (var2907) var3219)
(declare-fun var1792-init () var1792)
(declare-fun var3219_size/-390258357 (var3219) Int)
(declare-fun <init>/1974270677 (var1792 Int) void)
(declare-fun cast-from-var1792-to-var2731 (var1792) var2731)
(declare-fun var2731_addAll/-907809033 (var2731 var3219) Bool)
(declare-fun enumValues/1588225568 (var2368) var2731)
(declare-fun formatValidator/1588225568 (var2368) var2631)
(declare-const null-var2368 var2368)
(declare-const null-var2060 var2060)
(declare-const null-String String)
(declare-const null-var1402 var1402)
(declare-const null-var1931 var1931)
(declare-const null-var2731 var2731)
(declare-const null-var2631 var2631)
(declare-const var2361 var2368) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var2361 null-var2368)))
(declare-const var2498 var2060) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2498 null-var2060)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var2368-to-var3742 var2361) var2498)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var2361!1 var2368)
(declare-const var2498!1 var2060)
(define-const var1578 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var3007 String (getString/1992452270 var2498!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var3149 Bool (equalsIgnoreCase/-92311102 var1578 var3007)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var2361!2 var2368)
(assert (not (= var2361!2 null-var2368)))
(assert (= (typed/1588225568 var2361!2) var3149)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var469 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var3535 Int (getIntValue/-1814717338 var2498!1 "minLength" var469)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var2361!3 var2368)
(assert (not (= var2361!3 null-var2368)))
(assert (= (minLength/1588225568 var2361!3) var3535)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var2561 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var2896 Int (getIntValue/-1814717338 var2498!1 "maxLength" var2561)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var2361!4 var2368)
(assert (not (= var2361!4 null-var2368)))
(assert (= (maxLength/1588225568 var2361!4) var2896)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var3253 String (getString/1992452270 var2498!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var2361!5 var2368)
(assert (not (= var2361!5 null-var2368)))
(assert (= (patternFormat/1588225568 var2361!5) var3253)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var2542 String (patternFormat/1588225568 var2361!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (not (= var2542 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var908 var1402 null-var1402) ; Statement: $r30 = null 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30] 
(assert true) ; Non Conditional
(declare-const var2361!6 var2368)
(assert (not (= var2361!6 null-var2368)))
(assert (= (pattern/1588225568 var2361!6) var908)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var1259 String (getString/1992452270 var2498!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var2361!7 var2368)
(assert (not (= var2361!7 null-var2368)))
(assert (= (format/1588225568 var2361!7) var1259)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var2855 var2907 (get/-1324468399 var2498!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var1239 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (not (= (ite var1239 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2422 var2313 (cast-from-var2907-to-var2313 var2855)) ; Statement: $r26 = (com.alibaba.fastjson2.JSONArray) $r29 
(define-const var2184 var195 (var3742_anyOf/-686272272 var2422 String!class)) ; Statement: $r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;") 
(declare-const var2361!8 var2368)
(assert (not (= var2361!8 null-var2368)))
(assert (= (anyOf/1588225568 var2361!8) var2184)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27 
 ; Statement: goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1216 var2907 (get/-1324468399 var2498!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var1885 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (= (ite var1885 1 0) 0)) ; Cond: $z2 == 0 
(declare-const var2361!9 var2368)
(assert (not (= var2361!9 null-var2368)))
(assert (= (oneOf/1588225568 var2361!9) null-var1931)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var933 String (getString/1992452270 var2498!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var2361!10 var2368)
(assert (not (= var2361!10 null-var2368)))
(assert (= (constValue/1588225568 var2361!10) var933)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var3560 var2731 null-var2731) ; Statement: r31 = null 
(assert true)
(define-const var151 var2907 (get/-1324468399 var2498!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var1829 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (not (= (ite var1829 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3063 var3219 (cast-from-var2907-to-var3219 var151)) ; Statement: r21 = (java.util.Collection) $r25 
(define-const var33 var1792 var1792-init) ; Statement: $r34 = new java.util.LinkedHashSet 
(define-const var3159 Int (var3219_size/-390258357 var3063)) ; Statement: $i3 = interfaceinvoke r21.<java.util.Collection: int size()>() 
(assert true)
;(assert (<init>/1974270677 var33 var3159)) ; Statement: specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3) 

(declare-const var33!1 var1792)
(declare-const var3159!1 Int)
(define-const var3560!1 var2731 (cast-from-var1792-to-var2731 var33!1)) ; Statement: r31 = $r34 
;(assert (var2731_addAll/-907809033 (cast-from-var1792-to-var2731 var33!1) var3063)) ; Statement: interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21) 

(declare-const var33!2 var1792)
(declare-const var3063!1 var3219)
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31] 
(assert true) ; Non Conditional
(declare-const var2361!11 var2368)
(assert (not (= var2361!11 null-var2368)))
(assert (= (enumValues/1588225568 var2361!11) var3560!1)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var3547 String (format/1588225568 var2361!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var3547 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var2361!12 var2368)
(assert (not (= var2361!12 null-var2368)))
(assert (= (formatValidator/1588225568 var2361!12) null-var2631)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var2368-to-var3742=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), cast-from-var2907-to-var2313=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var3742_anyOf/-686272272=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.AnyOf), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), cast-from-var2907-to-var3219=([java.lang.Object], java.util.Collection), var1792-init=([], java.util.LinkedHashSet), var3219_size/-390258357=([java.util.Collection], int), <init>/1974270677=([java.util.LinkedHashSet, int], void), cast-from-var1792-to-var2731=([java.util.LinkedHashSet], java.util.Set), var2731_addAll/-907809033=([java.util.Set, java.util.Collection], boolean), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var2368=com.alibaba.fastjson2.schema.StringSchema, var2361=r0, var2060=com.alibaba.fastjson2.JSONObject, var2498=r1, var3742=com.alibaba.fastjson2.schema.JSONSchema, var1578=$r3, var3007=$r2, var3149=$z0, var469=$i6, var3535=$i0, var2561=$i8, var2896=$i1, var3253=$r4, var2542=$r5, var204=null_type, var1402=java.util.regex.Pattern, var908=$r30, var1259=$r7, var2907=java.lang.Object, var2855=$r29, var1239=$z1, var2313=com.alibaba.fastjson2.JSONArray, var2422=$r26, var195=com.alibaba.fastjson2.schema.AnyOf, var2184=$r27, var1216=$r28, var1885=$z2, var1931=com.alibaba.fastjson2.schema.OneOf, var933=$r8, var2731=java.util.Set, var3560=r31, var151=$r25, var1829=$z3, var3219=java.util.Collection, var3063=r21, var1792=java.util.LinkedHashSet, var33=$r34, var3159=$i3, var3547=$r32, var2631=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var2368, r0=var2361, com.alibaba.fastjson2.JSONObject=var2060, r1=var2498, com.alibaba.fastjson2.schema.JSONSchema=var3742, $r3=var1578, $r2=var3007, $z0=var3149, $i6=var469, $i0=var3535, $i8=var2561, $i1=var2896, $r4=var3253, $r5=var2542, null_type=var204, java.util.regex.Pattern=var1402, $r30=var908, $r7=var1259, java.lang.Object=var2907, $r29=var2855, $z1=var1239, com.alibaba.fastjson2.JSONArray=var2313, $r26=var2422, com.alibaba.fastjson2.schema.AnyOf=var195, $r27=var2184, $r28=var1216, $z2=var1885, com.alibaba.fastjson2.schema.OneOf=var1931, $r8=var933, java.util.Set=var2731, r31=var3560, $r25=var151, $z3=var1829, java.util.Collection=var3219, r21=var3063, java.util.LinkedHashSet=var1792, $r34=var33, $i3=var3159, $r32=var3547, java.util.function.Predicate=var2631}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = null;	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r26 = (com.alibaba.fastjson2.JSONArray) $r29;	$r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27;	goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")];	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	r21 = (java.util.Collection) $r25;	$r34 = new java.util.LinkedHashSet;	$i3 = interfaceinvoke r21.<java.util.Collection: int size()>();	specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3);	r31 = $r34;	interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21);	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11