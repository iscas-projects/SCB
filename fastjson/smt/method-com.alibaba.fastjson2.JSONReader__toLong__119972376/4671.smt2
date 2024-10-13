(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1269 0)
(declare-sort var3181 0)
(declare-sort var3754 0)
(declare-sort var901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3181_get/1088891777 (var3181 var3754) var3754)
(declare-fun cast-from-String-to-var3754 (String) var3754)
(declare-fun var901-init () var901)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3754) String)
(declare-fun cast-from-var3181-to-var3754 (var3181) var3754)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var901 String) void)
(declare-const null-var1269 var1269)
(declare-const null-var3181 var3181)
(declare-const var38 var1269) ; Statement: r8 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var38 null-var1269)))
(declare-const var435 var3181) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var435 null-var3181)))
(define-const var3491 var3754 (var3181_get/1088891777 var435 (cast-from-String-to-var3754 "val"))) ; Statement: r1 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>("val") 
(define-const var496 Bool false) ; Statement: $z0 = r1 instanceof java.lang.Number 
 ; Statement: if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var496 1 0) 0)) ; Cond: $z0 == 0 
(define-const var155 var901 var901-init) ; Statement: $r2 = new com.alibaba.fastjson2.JSONException 
(define-const var593 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var593)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var593!1 String)
(assert (= var593!1 ""))
(assert true)
(define-const var698 String (append/672562846 var593!1 "parseLong error, value : ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parseLong error, value : ") 
(declare-const var593!2 String)
(assert (= var593!2 (str.++ var593!1 "parseLong error, value : ")))
(assert true)
(define-const var3398 String (append/-1031950772 var698 (cast-from-var3181-to-var3754 var435))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var698!1 String)
(assert (str.prefixof var698 var698!1))
(assert true)
(define-const var737 String (toString/-2075883882 var3398)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var155 var737)) ; Statement: specialinvoke $r2.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var155!1 var901)
(declare-const var737!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3181_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3754=([java.lang.String], java.lang.Object), var901-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3181-to-var3754=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1269=com.alibaba.fastjson2.JSONReader, var38=r8, var3181=java.util.Map, var435=r0, var3754=java.lang.Object, var3491=r1, var496=$z0, var901=com.alibaba.fastjson2.JSONException, var155=$r2, var593=$r3, var698=$r4, var3398=$r5, var737=$r6}
; {com.alibaba.fastjson2.JSONReader=var1269, r8=var38, java.util.Map=var3181, r0=var435, java.lang.Object=var3754, r1=var3491, $z0=var496, com.alibaba.fastjson2.JSONException=var901, $r2=var155, $r3=var593, $r4=var698, $r5=var3398, $r6=var737}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.JSONReader;	r0 := @parameter0: java.util.Map;	r1 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>("val");	$z0 = r1 instanceof java.lang.Number;	if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONException;	$r2 = new com.alibaba.fastjson2.JSONException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parseLong error, value : ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2