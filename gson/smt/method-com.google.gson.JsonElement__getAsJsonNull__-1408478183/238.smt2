(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3410 0)
(declare-sort var773 0)
(declare-sort var793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonNull/138558921 (var3410) Bool)
(declare-fun var773-init () var773)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var793) String)
(declare-fun cast-from-var3410-to-var793 (var3410) var793)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var773 String) void)
(declare-const null-var3410 var3410)
(declare-const var2460 var3410) ; Statement: r0 := @this: com.google.gson.JsonElement 
(assert (not (= var2460 null-var3410)))
(assert true)
(define-const var2544 Bool (isJsonNull/138558921 var2460)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalStateException 
(assert (= (ite var2544 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3420 var773 var773-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var3468 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3468)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3468!1 String)
(assert (= var3468!1 ""))
(assert true)
(define-const var3455 String (append/672562846 var3468!1 "Not a JSON Null: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Null: ") 
(declare-const var3468!2 String)
(assert (= var3468!2 (str.++ var3468!1 "Not a JSON Null: ")))
(assert true)
(define-const var576 String (append/-1031950772 var3455 (cast-from-var3410-to-var793 var2460))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3455!1 String)
(assert (str.prefixof var3455 var3455!1))
(assert true)
(define-const var2599 String (toString/-2075883882 var576)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3420 var2599)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var3420!1 var773)
(declare-const var2599!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonNull/138558921=([com.google.gson.JsonElement], boolean), var773-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3410-to-var793=([com.google.gson.JsonElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3410=com.google.gson.JsonElement, var2460=r0, var2544=$z0, var773=java.lang.IllegalStateException, var3420=$r1, var3468=$r2, var3455=$r3, var793=java.lang.Object, var576=$r4, var2599=$r5}
; {com.google.gson.JsonElement=var3410, r0=var2460, $z0=var2544, java.lang.IllegalStateException=var773, $r1=var3420, $r2=var3468, $r3=var3455, java.lang.Object=var793, $r4=var576, $r5=var2599}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a JSON Null: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2