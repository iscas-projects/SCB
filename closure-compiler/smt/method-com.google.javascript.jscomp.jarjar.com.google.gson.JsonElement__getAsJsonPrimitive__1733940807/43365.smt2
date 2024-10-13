(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2723 0)
(declare-sort var1559 0)
(declare-sort var2790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonPrimitive/-1677961582 (var2723) Bool)
(declare-fun var1559-init () var1559)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2790) String)
(declare-fun cast-from-var2723-to-var2790 (var2723) var2790)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1559 String) void)
(declare-const null-var2723 var2723)
(declare-const var943 var2723) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement 
(assert (not (= var943 null-var2723)))
(assert true)
(define-const var2023 Bool (isJsonPrimitive/-1677961582 var943)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalStateException 
(assert (= (ite var2023 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1750 var1559 var1559-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var1364 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1364)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1364!1 String)
(assert (= var1364!1 ""))
(assert true)
(define-const var860 String (append/672562846 var1364!1 "Not a JSON Primitive: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Primitive: ") 
(declare-const var1364!2 String)
(assert (= var1364!2 (str.++ var1364!1 "Not a JSON Primitive: ")))
(assert true)
(define-const var2514 String (append/-1031950772 var860 (cast-from-var2723-to-var2790 var943))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var860!1 String)
(assert (str.prefixof var860 var860!1))
(assert true)
(define-const var1283 String (toString/-2075883882 var2514)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1750 var1283)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1750!1 var1559)
(declare-const var1283!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonPrimitive/-1677961582=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean), var1559-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2723-to-var2790=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2723=com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement, var943=r0, var2023=$z0, var1559=java.lang.IllegalStateException, var1750=$r1, var1364=$r2, var860=$r3, var2790=java.lang.Object, var2514=$r4, var1283=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement=var2723, r0=var943, $z0=var2023, java.lang.IllegalStateException=var1559, $r1=var1750, $r2=var1364, $r3=var860, java.lang.Object=var2790, $r4=var2514, $r5=var1283}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonPrimitive()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Primitive: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2