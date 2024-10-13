(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3043 0)
(declare-sort var3931 0)
(declare-sort var1134 0)
(declare-sort var2433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stack/-996497260 (var3043) var3931)
(declare-fun var3931_isEmpty/-153543822 (var3931) Bool)
(declare-fun var1134-init () var1134)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2433) String)
(declare-fun cast-from-var3931-to-var2433 (var3931) var2433)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1134 String) void)
(declare-const null-var3043 var3043)
(declare-const var3860 var3043) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeWriter 
(assert (not (= var3860 null-var3043)))
(define-const var2973 var3931 (stack/-996497260 var3860)) ; Statement: $r1 = r0.<com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack> 
(define-const var3411 Bool (var3931_isEmpty/-153543822 var2973)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.google.gson.internal.bind.JsonTreeWriter: com.google.gson.JsonElement product> 
(assert (not (not (= (ite var3411 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1306 var1134 var1134-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var1861 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1861)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1861!1 String)
(assert (= var1861!1 ""))
(assert true)
(define-const var3697 String (append/672562846 var1861!1 "Expected one JSON element but was ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected one JSON element but was ") 
(declare-const var1861!2 String)
(assert (= var1861!2 (str.++ var1861!1 "Expected one JSON element but was ")))
(define-const var2459 var3931 (stack/-996497260 var3860)) ; Statement: $r5 = r0.<com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack> 
(assert true)
(define-const var2155 String (append/-1031950772 var3697 (cast-from-var3931-to-var2433 var2459))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3697!1 String)
(assert (str.prefixof var3697 var3697!1))
(assert true)
(define-const var2527 String (toString/-2075883882 var2155)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1306 var2527)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var1306!1 var1134)
(declare-const var2527!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {stack/-996497260=([com.google.gson.internal.bind.JsonTreeWriter], java.util.List), var3931_isEmpty/-153543822=([java.util.List], boolean), var1134-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3931-to-var2433=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3043=com.google.gson.internal.bind.JsonTreeWriter, var3860=r0, var3931=java.util.List, var2973=$r1, var3411=$z0, var1134=java.lang.IllegalStateException, var1306=$r3, var1861=$r4, var3697=$r6, var2459=$r5, var2433=java.lang.Object, var2155=$r7, var2527=$r8}
; {com.google.gson.internal.bind.JsonTreeWriter=var3043, r0=var3860, java.util.List=var3931, $r1=var2973, $z0=var3411, java.lang.IllegalStateException=var1134, $r3=var1306, $r4=var1861, $r6=var3697, $r5=var2459, java.lang.Object=var2433, $r7=var2155, $r8=var2527}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeWriter;	$r1 = r0.<com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $r2 = r0.<com.google.gson.internal.bind.JsonTreeWriter: com.google.gson.JsonElement product>;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected one JSON element but was ");	$r5 = r0.<com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2