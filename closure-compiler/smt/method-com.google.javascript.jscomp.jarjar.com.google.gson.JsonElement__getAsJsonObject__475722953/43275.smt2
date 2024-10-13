(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var1677 0)
(declare-sort var1022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonObject/-2064988222 (var117) Bool)
(declare-fun var1677-init () var1677)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1022) String)
(declare-fun cast-from-var117-to-var1022 (var117) var1022)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1677 String) void)
(declare-const null-var117 var117)
(declare-const var2060 var117) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement 
(assert (not (= var2060 null-var117)))
(assert true)
(define-const var382 Bool (isJsonObject/-2064988222 var2060)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonObject()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalStateException 
(assert (= (ite var382 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1157 var1677 var1677-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var2988 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2988)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2988!1 String)
(assert (= var2988!1 ""))
(assert true)
(define-const var770 String (append/672562846 var2988!1 "Not a JSON Object: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Object: ") 
(declare-const var2988!2 String)
(assert (= var2988!2 (str.++ var2988!1 "Not a JSON Object: ")))
(assert true)
(define-const var2362 String (append/-1031950772 var770 (cast-from-var117-to-var1022 var2060))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var770!1 String)
(assert (str.prefixof var770 var770!1))
(assert true)
(define-const var1917 String (toString/-2075883882 var2362)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1157 var1917)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1157!1 var1677)
(declare-const var1917!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonObject/-2064988222=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean), var1677-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var117-to-var1022=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var117=com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement, var2060=r0, var382=$z0, var1677=java.lang.IllegalStateException, var1157=$r1, var2988=$r2, var770=$r3, var1022=java.lang.Object, var2362=$r4, var1917=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement=var117, r0=var2060, $z0=var382, java.lang.IllegalStateException=var1677, $r1=var1157, $r2=var2988, $r3=var770, java.lang.Object=var1022, $r4=var2362, $r5=var1917}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonObject()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Object: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2