(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var865 0)
(declare-sort var1393 0)
(declare-sort var2489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonNull/1502105978 (var865) Bool)
(declare-fun var1393-init () var1393)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2489) String)
(declare-fun cast-from-var865-to-var2489 (var865) var2489)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1393 String) void)
(declare-const null-var865 var865)
(declare-const var2275 var865) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement 
(assert (not (= var2275 null-var865)))
(assert true)
(define-const var2828 Bool (isJsonNull/1502105978 var2275)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalStateException 
(assert (= (ite var2828 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1787 var1393 var1393-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var1371 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1371)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1371!1 String)
(assert (= var1371!1 ""))
(assert true)
(define-const var2992 String (append/672562846 var1371!1 "Not a JSON Null: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Null: ") 
(declare-const var1371!2 String)
(assert (= var1371!2 (str.++ var1371!1 "Not a JSON Null: ")))
(assert true)
(define-const var1807 String (append/-1031950772 var2992 (cast-from-var865-to-var2489 var2275))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2992!1 String)
(assert (str.prefixof var2992 var2992!1))
(assert true)
(define-const var770 String (toString/-2075883882 var1807)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1787 var770)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1787!1 var1393)
(declare-const var770!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonNull/1502105978=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean), var1393-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var865-to-var2489=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var865=com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement, var2275=r0, var2828=$z0, var1393=java.lang.IllegalStateException, var1787=$r1, var1371=$r2, var2992=$r3, var2489=java.lang.Object, var1807=$r4, var770=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement=var865, r0=var2275, $z0=var2828, java.lang.IllegalStateException=var1393, $r1=var1787, $r2=var1371, $r3=var2992, java.lang.Object=var2489, $r4=var1807, $r5=var770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Null: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2