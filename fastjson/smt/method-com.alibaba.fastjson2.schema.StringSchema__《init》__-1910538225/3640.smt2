(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3731 0)
(declare-sort var2870 0)
(declare-sort var1705 0)
(declare-sort var2633 0)
(declare-sort var1145 0)
(declare-sort var957 0)
(declare-sort var672 0)
(declare-sort var3326 0)
(declare-sort var3535 0)
(declare-sort var2078 0)
(declare-sort var1 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var1705 var2870) void)
(declare-fun cast-from-var3731-to-var1705 (var3731) var1705)
(declare-fun getString/1992452270 (var2870 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var3731) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var2870 String Int) Int)
(declare-fun minLength/1588225568 (var3731) Int)
(declare-fun maxLength/1588225568 (var3731) Int)
(declare-fun patternFormat/1588225568 (var3731) String)
(declare-fun pattern/1588225568 (var3731) var1145)
(declare-fun format/1588225568 (var3731) String)
(declare-fun get/-1324468399 (var2870 String) var957)
(declare-fun cast-from-var957-to-var672 (var957) var672)
(declare-fun var1705_anyOf/-686272272 (var672 ClassObject) var3326)
(declare-fun anyOf/1588225568 (var3731) var3326)
(declare-fun oneOf/1588225568 (var3731) var3535)
(declare-fun constValue/1588225568 (var3731) String)
(declare-fun enumValues/1588225568 (var3731) var2078)
(declare-fun formatValidator/1588225568 (var3731) var1)
(declare-const null-var3731 var3731)
(declare-const null-var2870 var2870)
(declare-const null-String String)
(declare-const null-var1145 var1145)
(declare-const null-var3535 var3535)
(declare-const null-var2078 var2078)
(declare-const null-var1 var1)
(declare-const var1592 var3731) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var1592 null-var3731)))
(declare-const var3745 var2870) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var3745 null-var2870)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var3731-to-var1705 var1592) var3745)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var1592!1 var3731)
(declare-const var3745!1 var2870)
(define-const var3671 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var1931 String (getString/1992452270 var3745!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var2213 Bool (equalsIgnoreCase/-92311102 var3671 var1931)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var1592!2 var3731)
(assert (not (= var1592!2 null-var3731)))
(assert (= (typed/1588225568 var1592!2) var2213)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var1583 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var806 Int (getIntValue/-1814717338 var3745!1 "minLength" var1583)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var1592!3 var3731)
(assert (not (= var1592!3 null-var3731)))
(assert (= (minLength/1588225568 var1592!3) var806)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var1089 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var1794 Int (getIntValue/-1814717338 var3745!1 "maxLength" var1089)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var1592!4 var3731)
(assert (not (= var1592!4 null-var3731)))
(assert (= (maxLength/1588225568 var1592!4) var1794)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var2464 String (getString/1992452270 var3745!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var1592!5 var3731)
(assert (not (= var1592!5 null-var3731)))
(assert (= (patternFormat/1588225568 var1592!5) var2464)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var1289 String (patternFormat/1588225568 var1592!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (not (= var1289 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var551 var1145 null-var1145) ; Statement: $r30 = null 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30] 
(assert true) ; Non Conditional
(declare-const var1592!6 var3731)
(assert (not (= var1592!6 null-var3731)))
(assert (= (pattern/1588225568 var1592!6) var551)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var2014 String (getString/1992452270 var3745!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var1592!7 var3731)
(assert (not (= var1592!7 null-var3731)))
(assert (= (format/1588225568 var1592!7) var2014)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var3502 var957 (get/-1324468399 var3745!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var3158 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (not (= (ite var3158 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2595 var672 (cast-from-var957-to-var672 var3502)) ; Statement: $r26 = (com.alibaba.fastjson2.JSONArray) $r29 
(define-const var243 var3326 (var1705_anyOf/-686272272 var2595 String!class)) ; Statement: $r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;") 
(declare-const var1592!8 var3731)
(assert (not (= var1592!8 null-var3731)))
(assert (= (anyOf/1588225568 var1592!8) var243)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27 
 ; Statement: goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3109 var957 (get/-1324468399 var3745!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var3643 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (= (ite var3643 1 0) 0)) ; Cond: $z2 == 0 
(declare-const var1592!9 var3731)
(assert (not (= var1592!9 null-var3731)))
(assert (= (oneOf/1588225568 var1592!9) null-var3535)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var3767 String (getString/1992452270 var3745!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var1592!10 var3731)
(assert (not (= var1592!10 null-var3731)))
(assert (= (constValue/1588225568 var1592!10) var3767)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var3685 var2078 null-var2078) ; Statement: r31 = null 
(assert true)
(define-const var622 var957 (get/-1324468399 var3745!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var416 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (= (ite var416 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2578 Bool false) ; Statement: $z4 = $r25 instanceof java.lang.Object[] 
 ; Statement: if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(assert (= (ite var2578 1 0) 0)) ; Cond: $z4 == 0 
(declare-const var1592!11 var3731)
(assert (not (= var1592!11 null-var3731)))
(assert (= (enumValues/1588225568 var1592!11) var3685)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var2251 String (format/1588225568 var1592!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var2251 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var1592!12 var3731)
(assert (not (= var1592!12 null-var3731)))
(assert (= (formatValidator/1588225568 var1592!12) null-var1)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var3731-to-var1705=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), cast-from-var957-to-var672=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var1705_anyOf/-686272272=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.AnyOf), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var3731=com.alibaba.fastjson2.schema.StringSchema, var1592=r0, var2870=com.alibaba.fastjson2.JSONObject, var3745=r1, var1705=com.alibaba.fastjson2.schema.JSONSchema, var3671=$r3, var1931=$r2, var2213=$z0, var1583=$i6, var806=$i0, var1089=$i8, var1794=$i1, var2464=$r4, var1289=$r5, var2633=null_type, var1145=java.util.regex.Pattern, var551=$r30, var2014=$r7, var957=java.lang.Object, var3502=$r29, var3158=$z1, var672=com.alibaba.fastjson2.JSONArray, var2595=$r26, var3326=com.alibaba.fastjson2.schema.AnyOf, var243=$r27, var3109=$r28, var3643=$z2, var3535=com.alibaba.fastjson2.schema.OneOf, var3767=$r8, var2078=java.util.Set, var3685=r31, var622=$r25, var416=$z3, var2578=$z4, var2251=$r32, var1=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var3731, r0=var1592, com.alibaba.fastjson2.JSONObject=var2870, r1=var3745, com.alibaba.fastjson2.schema.JSONSchema=var1705, $r3=var3671, $r2=var1931, $z0=var2213, $i6=var1583, $i0=var806, $i8=var1089, $i1=var1794, $r4=var2464, $r5=var1289, null_type=var2633, java.util.regex.Pattern=var1145, $r30=var551, $r7=var2014, java.lang.Object=var957, $r29=var3502, $z1=var3158, com.alibaba.fastjson2.JSONArray=var672, $r26=var2595, com.alibaba.fastjson2.schema.AnyOf=var3326, $r27=var243, $r28=var3109, $z2=var3643, com.alibaba.fastjson2.schema.OneOf=var3535, $r8=var3767, java.util.Set=var2078, r31=var3685, $r25=var622, $z3=var416, $z4=var2578, $r32=var2251, java.util.function.Predicate=var1}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = null;	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r26 = (com.alibaba.fastjson2.JSONArray) $r29;	$r27 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r26, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = $r27;	goto [?= $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf")];	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	$z4 = $r25 instanceof java.lang.Object[];	if $z4 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11