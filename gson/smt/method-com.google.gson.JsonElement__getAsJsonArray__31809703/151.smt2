(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3632 0)
(declare-sort var1550 0)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonArray/615145329 (var3632) Bool)
(declare-fun var1550-init () var1550)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3694) String)
(declare-fun cast-from-var3632-to-var3694 (var3632) var3694)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1550 String) void)
(declare-const null-var3632 var3632)
(declare-const var1662 var3632) ; Statement: r0 := @this: com.google.gson.JsonElement 
(assert (not (= var1662 null-var3632)))
(assert true)
(define-const var323 Bool (isJsonArray/615145329 var1662)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonArray()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalStateException 
(assert (= (ite var323 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1817 var1550 var1550-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var3552 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3552)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3552!1 String)
(assert (= var3552!1 ""))
(assert true)
(define-const var1912 String (append/672562846 var3552!1 "Not a JSON Array: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Array: ") 
(declare-const var3552!2 String)
(assert (= var3552!2 (str.++ var3552!1 "Not a JSON Array: ")))
(assert true)
(define-const var655 String (append/-1031950772 var1912 (cast-from-var3632-to-var3694 var1662))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1912!1 String)
(assert (str.prefixof var1912 var1912!1))
(assert true)
(define-const var2151 String (toString/-2075883882 var655)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1817 var2151)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1817!1 var1550)
(declare-const var2151!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonArray/615145329=([com.google.gson.JsonElement], boolean), var1550-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3632-to-var3694=([com.google.gson.JsonElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3632=com.google.gson.JsonElement, var1662=r0, var323=$z0, var1550=java.lang.IllegalStateException, var1817=$r1, var3552=$r2, var1912=$r3, var3694=java.lang.Object, var655=$r4, var2151=$r5}
; {com.google.gson.JsonElement=var3632, r0=var1662, $z0=var323, java.lang.IllegalStateException=var1550, $r1=var1817, $r2=var3552, $r3=var1912, java.lang.Object=var3694, $r4=var655, $r5=var2151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonArray()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Array: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2