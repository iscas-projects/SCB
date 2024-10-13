(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var44 0)
(declare-sort var1802 0)
(declare-sort var3620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonPrimitive/2003092387 (var44) Bool)
(declare-fun var1802-init () var1802)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3620) String)
(declare-fun cast-from-var44-to-var3620 (var44) var3620)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1802 String) void)
(declare-const null-var44 var44)
(declare-const var2969 var44) ; Statement: r0 := @this: com.google.gson.JsonElement 
(assert (not (= var2969 null-var44)))
(assert true)
(define-const var1903 Bool (isJsonPrimitive/2003092387 var2969)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalStateException 
(assert (= (ite var1903 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3070 var1802 var1802-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var2761 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2761)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2761!1 String)
(assert (= var2761!1 ""))
(assert true)
(define-const var736 String (append/672562846 var2761!1 "Not a JSON Primitive: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Primitive: ") 
(declare-const var2761!2 String)
(assert (= var2761!2 (str.++ var2761!1 "Not a JSON Primitive: ")))
(assert true)
(define-const var2711 String (append/-1031950772 var736 (cast-from-var44-to-var3620 var2969))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var736!1 String)
(assert (str.prefixof var736 var736!1))
(assert true)
(define-const var3740 String (toString/-2075883882 var2711)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3070 var3740)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var3070!1 var1802)
(declare-const var3740!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonPrimitive/2003092387=([com.google.gson.JsonElement], boolean), var1802-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var44-to-var3620=([com.google.gson.JsonElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var44=com.google.gson.JsonElement, var2969=r0, var1903=$z0, var1802=java.lang.IllegalStateException, var3070=$r1, var2761=$r2, var736=$r3, var3620=java.lang.Object, var2711=$r4, var3740=$r5}
; {com.google.gson.JsonElement=var44, r0=var2969, $z0=var1903, java.lang.IllegalStateException=var1802, $r1=var3070, $r2=var2761, $r3=var736, java.lang.Object=var3620, $r4=var2711, $r5=var3740}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonPrimitive()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Primitive: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2