(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var834 0)
(declare-sort var717 0)
(declare-sort var1603 0)
(declare-sort var963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stack/-614530299 (var834) var717)
(declare-fun var717_isEmpty/-153543822 (var717) Bool)
(declare-fun var1603-init () var1603)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var963) String)
(declare-fun cast-from-var717-to-var963 (var717) var963)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1603 String) void)
(declare-const null-var834 var834)
(declare-const var936 var834) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter 
(assert (not (= var936 null-var834)))
(define-const var3054 var717 (stack/-614530299 var936)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack> 
(define-const var2249 Bool (var717_isEmpty/-153543822 var3054)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement product> 
(assert (not (not (= (ite var2249 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3961 var1603 var1603-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var1220 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1220)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1220!1 String)
(assert (= var1220!1 ""))
(assert true)
(define-const var2797 String (append/672562846 var1220!1 "Expected one JSON element but was ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected one JSON element but was ") 
(declare-const var1220!2 String)
(assert (= var1220!2 (str.++ var1220!1 "Expected one JSON element but was ")))
(define-const var2583 var717 (stack/-614530299 var936)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack> 
(assert true)
(define-const var2214 String (append/-1031950772 var2797 (cast-from-var717-to-var963 var2583))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2797!1 String)
(assert (str.prefixof var2797 var2797!1))
(assert true)
(define-const var2378 String (toString/-2075883882 var2214)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3961 var2378)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3961!1 var1603)
(declare-const var2378!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {stack/-614530299=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter], java.util.List), var717_isEmpty/-153543822=([java.util.List], boolean), var1603-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var717-to-var963=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var834=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter, var936=r0, var717=java.util.List, var3054=$r1, var2249=$z0, var1603=java.lang.IllegalStateException, var3961=$r3, var1220=$r4, var2797=$r6, var2583=$r5, var963=java.lang.Object, var2214=$r7, var2378=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter=var834, r0=var936, java.util.List=var717, $r1=var3054, $z0=var2249, java.lang.IllegalStateException=var1603, $r3=var3961, $r4=var1220, $r6=var2797, $r5=var2583, java.lang.Object=var963, $r7=var2214, $r8=var2378}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement product>;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected one JSON element but was ");	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2