(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2687 0)
(declare-sort var2339 0)
(declare-sort var1398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonArray/-64568864 (var2687) Bool)
(declare-fun var2339-init () var2339)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1398) String)
(declare-fun cast-from-var2687-to-var1398 (var2687) var1398)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2339 String) void)
(declare-const null-var2687 var2687)
(declare-const var1732 var2687) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement 
(assert (not (= var1732 null-var2687)))
(assert true)
(define-const var432 Bool (isJsonArray/-64568864 var1732)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonArray()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalStateException 
(assert (= (ite var432 1 0) 0)) ; Cond: $z0 == 0 
(define-const var532 var2339 var2339-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var1171 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1171)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1171!1 String)
(assert (= var1171!1 ""))
(assert true)
(define-const var2175 String (append/672562846 var1171!1 "Not a JSON Array: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Array: ") 
(declare-const var1171!2 String)
(assert (= var1171!2 (str.++ var1171!1 "Not a JSON Array: ")))
(assert true)
(define-const var392 String (append/-1031950772 var2175 (cast-from-var2687-to-var1398 var1732))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2175!1 String)
(assert (str.prefixof var2175 var2175!1))
(assert true)
(define-const var1088 String (toString/-2075883882 var392)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var532 var1088)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var532!1 var2339)
(declare-const var1088!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonArray/-64568864=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean), var2339-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2687-to-var1398=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2687=com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement, var1732=r0, var432=$z0, var2339=java.lang.IllegalStateException, var532=$r1, var1171=$r2, var2175=$r3, var1398=java.lang.Object, var392=$r4, var1088=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement=var2687, r0=var1732, $z0=var432, java.lang.IllegalStateException=var2339, $r1=var532, $r2=var1171, $r3=var2175, java.lang.Object=var1398, $r4=var392, $r5=var1088}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonArray()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Array: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2