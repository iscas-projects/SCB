(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1015 0)
(declare-sort var2806 0)
(declare-sort var2370 0)
(declare-sort var1152 0)
(declare-sort var3906 0)
(declare-sort var3550 0)
(declare-sort var1565 0)
(declare-sort var3035 0)
(declare-sort var724 0)
(declare-sort var1289 0)
(declare-sort var2783 0)
(declare-sort var498 0)
(declare-sort var408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/1415540230 (var2370 var2806) void)
(declare-fun cast-from-var1015-to-var2370 (var1015) var2370)
(declare-fun getString/1992452270 (var2806 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/1588225568 (var1015) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var2806 String Int) Int)
(declare-fun minLength/1588225568 (var1015) Int)
(declare-fun maxLength/1588225568 (var1015) Int)
(declare-fun patternFormat/1588225568 (var1015) String)
(declare-fun pattern/1588225568 (var1015) var3906)
(declare-fun format/1588225568 (var1015) String)
(declare-fun get/-1324468399 (var2806 String) var3550)
(declare-fun anyOf/1588225568 (var1015) var1565)
(declare-fun cast-from-var3550-to-var3035 (var3550) var3035)
(declare-fun var2370_oneOf/-178658204 (var3035 ClassObject) var724)
(declare-fun oneOf/1588225568 (var1015) var724)
(declare-fun constValue/1588225568 (var1015) String)
(declare-fun cast-from-var3550-to-var2783 (var3550) var2783)
(declare-fun var498-init () var498)
(declare-fun var2783_size/-390258357 (var2783) Int)
(declare-fun <init>/1974270677 (var498 Int) void)
(declare-fun cast-from-var498-to-var1289 (var498) var1289)
(declare-fun var1289_addAll/-907809033 (var1289 var2783) Bool)
(declare-fun enumValues/1588225568 (var1015) var1289)
(declare-fun formatValidator/1588225568 (var1015) var408)
(declare-const null-var1015 var1015)
(declare-const null-var2806 var2806)
(declare-const null-String String)
(declare-const null-var3906 var3906)
(declare-const null-var1565 var1565)
(declare-const null-var1289 var1289)
(declare-const null-var408 var408)
(declare-const var765 var1015) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.StringSchema 
(assert (not (= var765 null-var1015)))
(declare-const var2638 var2806) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2638 null-var2806)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var1015-to-var2370 var765) var2638)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var765!1 var1015)
(declare-const var2638!1 var2806)
(define-const var5 String "string") ; Statement: $r3 = "string" 
(assert true)
(define-const var845 String (getString/1992452270 var2638!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var2781 Bool (equalsIgnoreCase/-92311102 var5 var845)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
(declare-const var765!2 var1015)
(assert (not (= var765!2 null-var1015)))
(assert (= (typed/1588225568 var765!2) var2781)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0 
(define-const var3271 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
(define-const var260 Int (getIntValue/-1814717338 var2638!1 "minLength" var3271)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6) 
(declare-const var765!3 var1015)
(assert (not (= var765!3 null-var1015)))
(assert (= (minLength/1588225568 var765!3) var260)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0 
(define-const var3658 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var1627 Int (getIntValue/-1814717338 var2638!1 "maxLength" var3658)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8) 
(declare-const var765!4 var1015)
(assert (not (= var765!4 null-var1015)))
(assert (= (maxLength/1588225568 var765!4) var1627)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1 
(assert true)
(define-const var2439 String (getString/1992452270 var2638!1 "pattern")) ; Statement: $r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern") 
(declare-const var765!5 var1015)
(assert (not (= var765!5 null-var1015)))
(assert (= (patternFormat/1588225568 var765!5) var2439)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4 
(define-const var2578 String (patternFormat/1588225568 var765!5)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> 
(assert (not (not (= var2578 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var3310 var3906 null-var3906) ; Statement: $r30 = null 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30] 
(assert true) ; Non Conditional
(declare-const var765!6 var1015)
(assert (not (= var765!6 null-var1015)))
(assert (= (pattern/1588225568 var765!6) var3310)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30 
(assert true)
(define-const var38 String (getString/1992452270 var2638!1 "format")) ; Statement: $r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format") 
(declare-const var765!7 var1015)
(assert (not (= var765!7 null-var1015)))
(assert (= (format/1588225568 var765!7) var38)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7 
(assert true)
(define-const var46 var3550 (get/-1324468399 var2638!1 "anyOf")) ; Statement: $r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf") 
(define-const var553 Bool false) ; Statement: $z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert (= (ite var553 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var765!8 var1015)
(assert (not (= var765!8 null-var1015)))
(assert (= (anyOf/1588225568 var765!8) null-var1565)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null 
(assert true) ; Non Conditional
(assert true)
(define-const var145 var3550 (get/-1324468399 var2638!1 "oneOf")) ; Statement: $r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf") 
(define-const var3054 Bool false) ; Statement: $z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null 
(assert (not (= (ite var3054 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1128 var3035 (cast-from-var3550-to-var3035 var145)) ; Statement: $r23 = (com.alibaba.fastjson2.JSONArray) $r28 
(define-const var3674 var724 (var2370_oneOf/-178658204 var1128 String!class)) ; Statement: $r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;") 
(declare-const var765!9 var1015)
(assert (not (= var765!9 null-var1015)))
(assert (= (oneOf/1588225568 var765!9) var3674)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24 
 ; Statement: goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3521 String (getString/1992452270 var2638!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const") 
(declare-const var765!10 var1015)
(assert (not (= var765!10 null-var1015)))
(assert (= (constValue/1588225568 var765!10) var3521)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8 
(define-const var1426 var1289 null-var1289) ; Statement: r31 = null 
(assert true)
(define-const var2665 var3550 (get/-1324468399 var2638!1 "enum")) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum") 
(define-const var1358 Bool false) ; Statement: $z3 = $r25 instanceof java.util.Collection 
 ; Statement: if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[] 
(assert (not (= (ite var1358 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3571 var2783 (cast-from-var3550-to-var2783 var2665)) ; Statement: r21 = (java.util.Collection) $r25 
(define-const var2966 var498 var498-init) ; Statement: $r34 = new java.util.LinkedHashSet 
(define-const var1619 Int (var2783_size/-390258357 var3571)) ; Statement: $i3 = interfaceinvoke r21.<java.util.Collection: int size()>() 
(assert true)
;(assert (<init>/1974270677 var2966 var1619)) ; Statement: specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3) 

(declare-const var2966!1 var498)
(declare-const var1619!1 Int)
(define-const var1426!1 var1289 (cast-from-var498-to-var1289 var2966!1)) ; Statement: r31 = $r34 
;(assert (var1289_addAll/-907809033 (cast-from-var498-to-var1289 var2966!1) var3571)) ; Statement: interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21) 

(declare-const var2966!2 var498)
(declare-const var3571!1 var2783)
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31] 
(assert true) ; Non Conditional
(declare-const var765!11 var1015)
(assert (not (= var765!11 null-var1015)))
(assert (= (enumValues/1588225568 var765!11) var1426!1)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31 
(define-const var580 String (format/1588225568 var765!11)) ; Statement: $r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
 ; Statement: if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> 
(assert (not (not (= var580 null-String)))) ; Negate: Cond: $r32 != null  
(declare-const var765!12 var1015)
(assert (not (= var765!12 null-var1015)))
(assert (= (formatValidator/1588225568 var765!12) null-var408)) ; Statement: r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var1015-to-var2370=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/1588225568=([com.alibaba.fastjson2.schema.StringSchema], boolean), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), maxLength/1588225568=([com.alibaba.fastjson2.schema.StringSchema], int), patternFormat/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), pattern/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.regex.Pattern), format/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), anyOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.AnyOf), cast-from-var3550-to-var3035=([java.lang.Object], com.alibaba.fastjson2.JSONArray), var2370_oneOf/-178658204=([com.alibaba.fastjson2.JSONArray, java.lang.Class], com.alibaba.fastjson2.schema.OneOf), oneOf/1588225568=([com.alibaba.fastjson2.schema.StringSchema], com.alibaba.fastjson2.schema.OneOf), constValue/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.lang.String), cast-from-var3550-to-var2783=([java.lang.Object], java.util.Collection), var498-init=([], java.util.LinkedHashSet), var2783_size/-390258357=([java.util.Collection], int), <init>/1974270677=([java.util.LinkedHashSet, int], void), cast-from-var498-to-var1289=([java.util.LinkedHashSet], java.util.Set), var1289_addAll/-907809033=([java.util.Set, java.util.Collection], boolean), enumValues/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.Set), formatValidator/1588225568=([com.alibaba.fastjson2.schema.StringSchema], java.util.function.Predicate)}
; {var1015=com.alibaba.fastjson2.schema.StringSchema, var765=r0, var2806=com.alibaba.fastjson2.JSONObject, var2638=r1, var2370=com.alibaba.fastjson2.schema.JSONSchema, var5=$r3, var845=$r2, var2781=$z0, var3271=$i6, var260=$i0, var3658=$i8, var1627=$i1, var2439=$r4, var2578=$r5, var1152=null_type, var3906=java.util.regex.Pattern, var3310=$r30, var38=$r7, var3550=java.lang.Object, var46=$r29, var553=$z1, var1565=com.alibaba.fastjson2.schema.AnyOf, var145=$r28, var3054=$z2, var3035=com.alibaba.fastjson2.JSONArray, var1128=$r23, var724=com.alibaba.fastjson2.schema.OneOf, var3674=$r24, var3521=$r8, var1289=java.util.Set, var1426=r31, var2665=$r25, var1358=$z3, var2783=java.util.Collection, var3571=r21, var498=java.util.LinkedHashSet, var2966=$r34, var1619=$i3, var580=$r32, var408=java.util.function.Predicate}
; {com.alibaba.fastjson2.schema.StringSchema=var1015, r0=var765, com.alibaba.fastjson2.JSONObject=var2806, r1=var2638, com.alibaba.fastjson2.schema.JSONSchema=var2370, $r3=var5, $r2=var845, $z0=var2781, $i6=var3271, $i0=var260, $i8=var3658, $i1=var1627, $r4=var2439, $r5=var2578, null_type=var1152, java.util.regex.Pattern=var3906, $r30=var3310, $r7=var38, java.lang.Object=var3550, $r29=var46, $z1=var553, com.alibaba.fastjson2.schema.AnyOf=var1565, $r28=var145, $z2=var3054, com.alibaba.fastjson2.JSONArray=var3035, $r23=var1128, com.alibaba.fastjson2.schema.OneOf=var724, $r24=var3674, $r8=var3521, java.util.Set=var1289, r31=var1426, $r25=var2665, $z3=var1358, java.util.Collection=var2783, r21=var3571, java.util.LinkedHashSet=var498, $r34=var2966, $i3=var1619, $r32=var580, java.util.function.Predicate=var408}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.StringSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "string";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	r0.<com.alibaba.fastjson2.schema.StringSchema: boolean typed> = $z0;	$i6 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minLength", $i6);	r0.<com.alibaba.fastjson2.schema.StringSchema: int minLength> = $i0;	$i8 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxLength", $i8);	r0.<com.alibaba.fastjson2.schema.StringSchema: int maxLength> = $i1;	$r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("pattern");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat> = $r4;	$r5 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	if $r5 != null goto $r6 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String patternFormat>;	$r30 = null;	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern pattern> = $r30;	$r7 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("format");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format> = $r7;	$r29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("anyOf");	$z1 = $r29 instanceof com.alibaba.fastjson2.JSONArray;	if $z1 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.AnyOf anyOf> = null;	$r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("oneOf");	$z2 = $r28 instanceof com.alibaba.fastjson2.JSONArray;	if $z2 == 0 goto r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = null;	$r23 = (com.alibaba.fastjson2.JSONArray) $r28;	$r24 = staticinvoke <com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf(com.alibaba.fastjson2.JSONArray,java.lang.Class)>($r23, class "Ljava/lang/String;");	r0.<com.alibaba.fastjson2.schema.StringSchema: com.alibaba.fastjson2.schema.OneOf oneOf> = $r24;	goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const")];	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String constValue> = $r8;	r31 = null;	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("enum");	$z3 = $r25 instanceof java.util.Collection;	if $z3 == 0 goto $z4 = $r25 instanceof java.lang.Object[];	r21 = (java.util.Collection) $r25;	$r34 = new java.util.LinkedHashSet;	$i3 = interfaceinvoke r21.<java.util.Collection: int size()>();	specialinvoke $r34.<java.util.LinkedHashSet: void <init>(int)>($i3);	r31 = $r34;	interfaceinvoke $r34.<java.util.Set: boolean addAll(java.util.Collection)>(r21);	goto [?= r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31];	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.Set enumValues> = r31;	$r32 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	if $r32 != null goto r33 = r0.<com.alibaba.fastjson2.schema.StringSchema: java.lang.String format>;	r0.<com.alibaba.fastjson2.schema.StringSchema: java.util.function.Predicate formatValidator> = null;	goto [?= return];	return
;block_num 11