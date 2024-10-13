(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2285 0)
(declare-sort var825 0)
(declare-sort var3597 0)
(declare-sort var2354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var825_size/-959786421 (var825) Int)
(declare-fun var3597-init () var3597)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2354) String)
(declare-fun cast-from-var825-to-var2354 (var825) var2354)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3597 String) void)
(declare-const null-var2285 var2285)
(declare-const null-var825 var825)
(declare-const var2110 var2285) ; Statement: r9 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2110 null-var2285)))
(declare-const var2101 var825) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2101 null-var825)))
(define-const var1589 Int (var825_size/-959786421 var2101)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 != 1 goto $r1 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var1589 1))) ; Cond: $i0 != 1 
(define-const var3133 var3597 var3597-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONException 
(define-const var2667 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2667)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2667!1 String)
(assert (= var2667!1 ""))
(assert true)
(define-const var292 String (append/672562846 var2667!1 "parseLong error, field : value ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parseLong error, field : value ") 
(declare-const var2667!2 String)
(assert (= var2667!2 (str.++ var2667!1 "parseLong error, field : value ")))
(assert true)
(define-const var917 String (append/-1031950772 var292 (cast-from-var825-to-var2354 var2101))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var292!1 String)
(assert (str.prefixof var292 var292!1))
(assert true)
(define-const var1232 String (toString/-2075883882 var917)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3133 var1232)) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5) 

(declare-const var3133!1 var3597)
(declare-const var1232!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var825_size/-959786421=([java.util.List], int), var3597-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var825-to-var2354=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2285=com.alibaba.fastjson2.JSONReader, var2110=r9, var825=java.util.List, var2101=r0, var1589=$i0, var3597=com.alibaba.fastjson2.JSONException, var3133=$r1, var2667=$r2, var292=$r3, var2354=java.lang.Object, var917=$r4, var1232=$r5}
; {com.alibaba.fastjson2.JSONReader=var2285, r9=var2110, java.util.List=var825, r0=var2101, $i0=var1589, com.alibaba.fastjson2.JSONException=var3597, $r1=var3133, $r2=var2667, $r3=var292, java.lang.Object=var2354, $r4=var917, $r5=var1232}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.JSONReader;	r0 := @parameter0: java.util.List;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 != 1 goto $r1 = new com.alibaba.fastjson2.JSONException;	$r1 = new com.alibaba.fastjson2.JSONException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parseLong error, field : value ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2