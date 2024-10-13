(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3118 0)
(declare-sort var3394 0)
(declare-sort var812 0)
(declare-sort var1916 0)
(declare-sort var1268 0)
(declare-sort var3078 0)
(declare-sort var3404 0)
(declare-sort var2557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1415540230 (var812 var3394) void)
(declare-fun cast-from-var3118-to-var812 (var3118) var812)
(declare-fun get/-1324468399 (var3394 String) var1916)
(declare-fun typed/-627515764 (var3118) Bool)
(declare-fun var1268-init () var1268)
(declare-fun <init>/-1461814690 (var1268) void)
(declare-fun cast-from-var1268-to-var3078 (var1268) var3078)
(declare-fun definitions/-627515764 (var3118) var3078)
(declare-fun defs/-627515764 (var3118) var3078)
(declare-fun getBooleanValue/-1227457985 (var3394 String Bool) Bool)
(declare-fun encoded/-627515764 (var3118) Bool)
(declare-fun getJSONObject/1148838775 (var3394 String) var3394)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getIntValue/-1814717338 (var3394 String Int) Int)
(declare-fun minLength/-627515764 (var3118) Int)
(declare-fun maxLength/-627515764 (var3118) Int)
(declare-fun getJSONArray/567658193 (var3394 String) var3404)
(declare-fun var2557-init () var2557)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1916) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2557 String) void)
(declare-const null-var3118 var3118)
(declare-const null-var3394 var3394)
(declare-const null-var812 var812)
(declare-const null-var1916 var1916)
(declare-const null-var3404 var3404)
(declare-const var1915 var3118) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.ArraySchema 
(assert (not (= var1915 null-var3118)))
(declare-const var2327 var3394) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2327 null-var3394)))
(declare-const var1164 var812) ; Statement: r7 := @parameter1: com.alibaba.fastjson2.schema.JSONSchema 
(assert (not (= var1164 null-var812)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var3118-to-var812 var1915) var2327)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var1915!1 var3118)
(declare-const var2327!1 var3394)
(define-const var896 String "array") ; Statement: $r3 = "array" 
(assert true)
(define-const var123 var1916 (get/-1324468399 var2327!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("type") 
(assert true)
(define-const var2459 Bool false) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
(declare-const var1915!2 var3118)
(assert (not (= var1915!2 null-var3118)))
(assert (= (typed/-627515764 var1915!2) var2459)) ; Statement: r0.<com.alibaba.fastjson2.schema.ArraySchema: boolean typed> = $z0 
(define-const var1496 var1268 var1268-init) ; Statement: $r65 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var1496)) ; Statement: specialinvoke $r65.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var1496!1 var1268)
(declare-const var1915!3 var3118)
(assert (not (= var1915!3 null-var3118)))
(assert (= (definitions/-627515764 var1915!3) (cast-from-var1268-to-var3078 var1496!1))) ; Statement: r0.<com.alibaba.fastjson2.schema.ArraySchema: java.util.Map definitions> = $r65 
(define-const var2386 var1268 var1268-init) ; Statement: $r66 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var2386)) ; Statement: specialinvoke $r66.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var2386!1 var1268)
(declare-const var1915!4 var3118)
(assert (not (= var1915!4 null-var3118)))
(assert (= (defs/-627515764 var1915!4) (cast-from-var1268-to-var3078 var2386!1))) ; Statement: r0.<com.alibaba.fastjson2.schema.ArraySchema: java.util.Map defs> = $r66 
(assert true)
(define-const var1866 Bool (getBooleanValue/-1227457985 var2327!1 "encoded" (ite (= 1 0) true false))) ; Statement: $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: boolean getBooleanValue(java.lang.String,boolean)>("encoded", 0) 
(declare-const var1915!5 var3118)
(assert (not (= var1915!5 null-var3118)))
(assert (= (encoded/-627515764 var1915!5) var1866)) ; Statement: r0.<com.alibaba.fastjson2.schema.ArraySchema: boolean encoded> = $z1 
(assert true)
(define-const var1356 var3394 (getJSONObject/1148838775 var2327!1 "definitions")) ; Statement: r6 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: com.alibaba.fastjson2.JSONObject getJSONObject(java.lang.String)>("definitions") 
 ; Statement: if r6 == null goto $r41 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: com.alibaba.fastjson2.JSONObject getJSONObject(java.lang.String)>("$defs") 
(assert (= var1356 null-var3394)) ; Cond: r6 == null 
(assert true)
(define-const var1869 var3394 (getJSONObject/1148838775 var2327!1 "$defs")) ; Statement: $r41 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: com.alibaba.fastjson2.JSONObject getJSONObject(java.lang.String)>("$defs") 
 ; Statement: if $r41 == null goto $i8 = (int) -1 
(assert (= var1869 null-var3394)) ; Cond: $r41 == null 
(define-const var500 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(assert true)
(define-const var1992 Int (getIntValue/-1814717338 var2327!1 "minItems" var500)) ; Statement: $i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minItems", $i8) 
(declare-const var1915!6 var3118)
(assert (not (= var1915!6 null-var3118)))
(assert (= (minLength/-627515764 var1915!6) var1992)) ; Statement: r0.<com.alibaba.fastjson2.schema.ArraySchema: int minLength> = $i0 
(define-const var1661 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(assert true)
(define-const var260 Int (getIntValue/-1814717338 var2327!1 "maxItems" var1661)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxItems", $i10) 
(declare-const var1915!7 var3118)
(assert (not (= var1915!7 null-var3118)))
(assert (= (maxLength/-627515764 var1915!7) var260)) ; Statement: r0.<com.alibaba.fastjson2.schema.ArraySchema: int maxLength> = $i1 
(assert true)
(define-const var1895 var1916 (get/-1324468399 var2327!1 "items")) ; Statement: $r32 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("items") 
(assert true)
(define-const var1880 var1916 (get/-1324468399 var2327!1 "additionalItems")) ; Statement: $r33 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("additionalItems") 
(assert true)
(define-const var1228 var3404 (getJSONArray/567658193 var2327!1 "prefixItems")) ; Statement: $r34 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: com.alibaba.fastjson2.JSONArray getJSONArray(java.lang.String)>("prefixItems") 
(define-const var3510 var3404 var1228) ; Statement: r57 = $r34 
 ; Statement: if $r32 != null goto $z2 = $r32 instanceof java.lang.Boolean 
(assert (not (= var1895 null-var1916))) ; Cond: $r32 != null 
(define-const var3234 Bool false) ; Statement: $z2 = $r32 instanceof java.lang.Boolean 
 ; Statement: if $z2 == 0 goto $z3 = $r32 instanceof com.alibaba.fastjson2.JSONArray 
(assert (= (ite var3234 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2451 Bool false) ; Statement: $z3 = $r32 instanceof com.alibaba.fastjson2.JSONArray 
 ; Statement: if $z3 == 0 goto z12 = 1 
(assert (not (= (ite var2451 1 0) 0))) ; Negate: Cond: $z3 == 0  
 ; Statement: if $r34 != null goto $r68 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var1228 null-var3404))) ; Cond: $r34 != null 
(define-const var1978 var2557 var2557-init) ; Statement: $r68 = new com.alibaba.fastjson2.JSONException 
(define-const var3858 String String-init) ; Statement: $r67 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3858)) ; Statement: specialinvoke $r67.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3858!1 String)
(assert (= var3858!1 ""))
(assert true)
(define-const var1129 String (append/672562846 var3858!1 "schema error, items : ")) ; Statement: $r27 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("schema error, items : ") 
(declare-const var3858!2 String)
(assert (= var3858!2 (str.++ var3858!1 "schema error, items : ")))
(assert true)
(define-const var785 String (append/-1031950772 var1129 var1895)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r32) 
(declare-const var1129!1 String)
(assert (str.prefixof var1129 var1129!1))
(assert true)
(define-const var1238 String (toString/-2075883882 var785)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1978 var1238)) ; Statement: specialinvoke $r68.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r29) 

(declare-const var1978!1 var2557)
(declare-const var1238!1 String)
 ; Statement: throw $r68 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var3118-to-var812=([com.alibaba.fastjson2.schema.ArraySchema], com.alibaba.fastjson2.schema.JSONSchema), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), typed/-627515764=([com.alibaba.fastjson2.schema.ArraySchema], boolean), var1268-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var1268-to-var3078=([java.util.LinkedHashMap], java.util.Map), definitions/-627515764=([com.alibaba.fastjson2.schema.ArraySchema], java.util.Map), defs/-627515764=([com.alibaba.fastjson2.schema.ArraySchema], java.util.Map), getBooleanValue/-1227457985=([com.alibaba.fastjson2.JSONObject, java.lang.String, boolean], boolean), encoded/-627515764=([com.alibaba.fastjson2.schema.ArraySchema], boolean), getJSONObject/1148838775=([com.alibaba.fastjson2.JSONObject, java.lang.String], com.alibaba.fastjson2.JSONObject), cast-from-Int-to-Int=([int], int), getIntValue/-1814717338=([com.alibaba.fastjson2.JSONObject, java.lang.String, int], int), minLength/-627515764=([com.alibaba.fastjson2.schema.ArraySchema], int), maxLength/-627515764=([com.alibaba.fastjson2.schema.ArraySchema], int), getJSONArray/567658193=([com.alibaba.fastjson2.JSONObject, java.lang.String], com.alibaba.fastjson2.JSONArray), var2557-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3118=com.alibaba.fastjson2.schema.ArraySchema, var1915=r0, var3394=com.alibaba.fastjson2.JSONObject, var2327=r1, var812=com.alibaba.fastjson2.schema.JSONSchema, var1164=r7, var896=$r3, var1916=java.lang.Object, var123=$r2, var2459=$z0, var1268=java.util.LinkedHashMap, var1496=$r65, var3078=java.util.Map, var2386=$r66, var1866=$z1, var1356=r6, var1869=$r41, var500=$i8, var1992=$i0, var1661=$i10, var260=$i1, var1895=$r32, var1880=$r33, var3404=com.alibaba.fastjson2.JSONArray, var1228=$r34, var3510=r57, var3234=$z2, var2451=$z3, var2557=com.alibaba.fastjson2.JSONException, var1978=$r68, var3858=$r67, var1129=$r27, var785=$r28, var1238=$r29}
; {com.alibaba.fastjson2.schema.ArraySchema=var3118, r0=var1915, com.alibaba.fastjson2.JSONObject=var3394, r1=var2327, com.alibaba.fastjson2.schema.JSONSchema=var812, r7=var1164, $r3=var896, java.lang.Object=var1916, $r2=var123, $z0=var2459, java.util.LinkedHashMap=var1268, $r65=var1496, java.util.Map=var3078, $r66=var2386, $z1=var1866, r6=var1356, $r41=var1869, $i8=var500, $i0=var1992, $i10=var1661, $i1=var260, $r32=var1895, $r33=var1880, com.alibaba.fastjson2.JSONArray=var3404, $r34=var1228, r57=var3510, $z2=var3234, $z3=var2451, com.alibaba.fastjson2.JSONException=var2557, $r68=var1978, $r67=var3858, $r27=var1129, $r28=var785, $r29=var1238}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.ArraySchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	r7 := @parameter1: com.alibaba.fastjson2.schema.JSONSchema;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "array";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	r0.<com.alibaba.fastjson2.schema.ArraySchema: boolean typed> = $z0;	$r65 = new java.util.LinkedHashMap;	specialinvoke $r65.<java.util.LinkedHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.schema.ArraySchema: java.util.Map definitions> = $r65;	$r66 = new java.util.LinkedHashMap;	specialinvoke $r66.<java.util.LinkedHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.schema.ArraySchema: java.util.Map defs> = $r66;	$z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: boolean getBooleanValue(java.lang.String,boolean)>("encoded", 0);	r0.<com.alibaba.fastjson2.schema.ArraySchema: boolean encoded> = $z1;	r6 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: com.alibaba.fastjson2.JSONObject getJSONObject(java.lang.String)>("definitions");	if r6 == null goto $r41 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: com.alibaba.fastjson2.JSONObject getJSONObject(java.lang.String)>("$defs");	$r41 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: com.alibaba.fastjson2.JSONObject getJSONObject(java.lang.String)>("$defs");	if $r41 == null goto $i8 = (int) -1;	$i8 = (int) -1;	$i0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("minItems", $i8);	r0.<com.alibaba.fastjson2.schema.ArraySchema: int minLength> = $i0;	$i10 = (int) -1;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: int getIntValue(java.lang.String,int)>("maxItems", $i10);	r0.<com.alibaba.fastjson2.schema.ArraySchema: int maxLength> = $i1;	$r32 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("items");	$r33 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("additionalItems");	$r34 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: com.alibaba.fastjson2.JSONArray getJSONArray(java.lang.String)>("prefixItems");	r57 = $r34;	if $r32 != null goto $z2 = $r32 instanceof java.lang.Boolean;	$z2 = $r32 instanceof java.lang.Boolean;	if $z2 == 0 goto $z3 = $r32 instanceof com.alibaba.fastjson2.JSONArray;	$z3 = $r32 instanceof com.alibaba.fastjson2.JSONArray;	if $z3 == 0 goto z12 = 1;	if $r34 != null goto $r68 = new com.alibaba.fastjson2.JSONException;	$r68 = new com.alibaba.fastjson2.JSONException;	$r67 = new java.lang.StringBuilder;	specialinvoke $r67.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("schema error, items : ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r32);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r68.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r29);	throw $r68
;block_num 7