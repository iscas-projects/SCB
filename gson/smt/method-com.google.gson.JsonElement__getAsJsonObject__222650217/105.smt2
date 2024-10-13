(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2171 0)
(declare-sort var2059 0)
(declare-sort var3151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonObject/1826282577 (var2171) Bool)
(declare-fun var2059-init () var2059)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3151) String)
(declare-fun cast-from-var2171-to-var3151 (var2171) var3151)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2059 String) void)
(declare-const null-var2171 var2171)
(declare-const var3528 var2171) ; Statement: r0 := @this: com.google.gson.JsonElement 
(assert (not (= var3528 null-var2171)))
(assert true)
(define-const var2259 Bool (isJsonObject/1826282577 var3528)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonObject()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalStateException 
(assert (= (ite var2259 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1550 var2059 var2059-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var489 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var489)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var489!1 String)
(assert (= var489!1 ""))
(assert true)
(define-const var965 String (append/672562846 var489!1 "Not a JSON Object: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Object: ") 
(declare-const var489!2 String)
(assert (= var489!2 (str.++ var489!1 "Not a JSON Object: ")))
(assert true)
(define-const var3648 String (append/-1031950772 var965 (cast-from-var2171-to-var3151 var3528))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var965!1 String)
(assert (str.prefixof var965 var965!1))
(assert true)
(define-const var126 String (toString/-2075883882 var3648)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1550 var126)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1550!1 var2059)
(declare-const var126!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonObject/1826282577=([com.google.gson.JsonElement], boolean), var2059-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2171-to-var3151=([com.google.gson.JsonElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2171=com.google.gson.JsonElement, var3528=r0, var2259=$z0, var2059=java.lang.IllegalStateException, var1550=$r1, var489=$r2, var965=$r3, var3151=java.lang.Object, var3648=$r4, var126=$r5}
; {com.google.gson.JsonElement=var2171, r0=var3528, $z0=var2259, java.lang.IllegalStateException=var2059, $r1=var1550, $r2=var489, $r3=var965, java.lang.Object=var3151, $r4=var3648, $r5=var126}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonObject()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Object: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2