(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2082 0)
(declare-sort var153 0)
(declare-sort var2263 0)
(declare-sort var3559 0)
(declare-sort var2298 0)
(declare-sort var3075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3559_testValidity/-949246800 (var2263) var2263)
(declare-fun getObj/-1264023465 (var2298 var2263) var2263)
(declare-fun cast-from-var2082-to-var2298 (var2082) var2298)
(declare-fun cast-from-String-to-var2263 (String) var2263)
(declare-fun var3075-init () var3075)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2113043085 (var3075 String) void)
(declare-const null-var2082 var2082)
(declare-const null-String String)
(declare-const null-var2263 var2263)
(declare-const var2765 var2082) ; Statement: r1 := @this: cn.hutool.json.JSONObject 
(assert (not (= var2765 null-var2082)))
(declare-const var1336 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1336 null-String)))
(declare-const var2605 var2263) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2605 null-var2263)))
;(assert (var3559_testValidity/-949246800 var2605)) ; Statement: staticinvoke <cn.hutool.json.InternalJSONUtil: java.lang.Object testValidity(java.lang.Object)>(r0) 

(declare-const var2605!1 var2263)
(assert true)
(define-const var971 var2263 (getObj/-1264023465 (cast-from-var2082-to-var2298 var2765) (cast-from-String-to-var2263 var1336))) ; Statement: r3 = virtualinvoke r1.<cn.hutool.json.JSONObject: java.lang.Object getObj(java.lang.Object)>(r2) 
 ; Statement: if r3 != null goto $z0 = r3 instanceof cn.hutool.json.JSONArray 
(assert (not (= var971 null-var2263))) ; Cond: r3 != null 
(define-const var2760 Bool false) ; Statement: $z0 = r3 instanceof cn.hutool.json.JSONArray 
 ; Statement: if $z0 == 0 goto $r4 = new cn.hutool.json.JSONException 
(assert (= (ite var2760 1 0) 0)) ; Cond: $z0 == 0 
(define-const var662 var3075 var3075-init) ; Statement: $r4 = new cn.hutool.json.JSONException 
(define-const var121 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var121)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var121!1 String)
(assert (= var121!1 ""))
(assert true)
(define-const var2192 String (append/672562846 var121!1 "JSONObject [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSONObject [") 
(declare-const var121!2 String)
(assert (= var121!2 (str.++ var121!1 "JSONObject [")))
(assert true)
(define-const var402 String (append/672562846 var2192 var1336)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2192!1 String)
(assert (= var2192!1 (str.++ var2192 var1336)))
(assert true)
(define-const var1080 String (append/672562846 var402 "] is not a JSONArray.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not a JSONArray.") 
(declare-const var402!1 String)
(assert (= var402!1 (str.++ var402 "] is not a JSONArray.")))
(assert true)
(define-const var869 String (toString/-2075883882 var1080)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2113043085 var662 var869)) ; Statement: specialinvoke $r4.<cn.hutool.json.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var662!1 var3075)
(declare-const var869!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3559_testValidity/-949246800=([java.lang.Object], java.lang.Object), getObj/-1264023465=([cn.hutool.core.getter.OptNullBasicTypeGetter, java.lang.Object], java.lang.Object), cast-from-var2082-to-var2298=([cn.hutool.json.JSONObject], cn.hutool.core.getter.OptNullBasicTypeGetter), cast-from-String-to-var2263=([java.lang.String], java.lang.Object), var3075-init=([], cn.hutool.json.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2113043085=([cn.hutool.json.JSONException, java.lang.String], void)}
; {var2082=cn.hutool.json.JSONObject, var2765=r1, var1336=r2, var153=null_type, var2263=java.lang.Object, var2605=r0, var3559=cn.hutool.json.InternalJSONUtil, var2298=cn.hutool.core.getter.OptNullBasicTypeGetter, var971=r3, var2760=$z0, var3075=cn.hutool.json.JSONException, var662=$r4, var121=$r5, var2192=$r6, var402=$r7, var1080=$r8, var869=$r9}
; {cn.hutool.json.JSONObject=var2082, r1=var2765, r2=var1336, null_type=var153, java.lang.Object=var2263, r0=var2605, cn.hutool.json.InternalJSONUtil=var3559, cn.hutool.core.getter.OptNullBasicTypeGetter=var2298, r3=var971, $z0=var2760, cn.hutool.json.JSONException=var3075, $r4=var662, $r5=var121, $r6=var2192, $r7=var402, $r8=var1080, $r9=var869}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.json.JSONObject;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.Object;	staticinvoke <cn.hutool.json.InternalJSONUtil: java.lang.Object testValidity(java.lang.Object)>(r0);	r3 = virtualinvoke r1.<cn.hutool.json.JSONObject: java.lang.Object getObj(java.lang.Object)>(r2);	if r3 != null goto $z0 = r3 instanceof cn.hutool.json.JSONArray;	$z0 = r3 instanceof cn.hutool.json.JSONArray;	if $z0 == 0 goto $r4 = new cn.hutool.json.JSONException;	$r4 = new cn.hutool.json.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSONObject [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not a JSONArray.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<cn.hutool.json.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 3