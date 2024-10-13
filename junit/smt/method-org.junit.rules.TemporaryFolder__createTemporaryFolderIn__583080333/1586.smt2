(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1061 0)
(declare-sort var2280 0)
(declare-sort var429 0)
(declare-sort var3383 0)
(declare-sort var3030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var429-init () var429)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3383) String)
(declare-fun cast-from-var1061-to-var3383 (var1061) var3383)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var429 String var3030) void)
(declare-fun cast-from-var2280-to-var3030 (var2280) var3030)
(declare-const null-var1061 var1061)
(declare-const null-var2280 var2280)
(declare-const var3326 var1061) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3326 null-var1061)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var396 var2280) ; Statement: $r2 := @caughtexception 
(assert (not (= var396 null-var2280)))
(define-const var196 var429 var429-init) ; Statement: $r3 = new java.lang.RuntimeException 
(define-const var946 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var946)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var946!1 String)
(assert (= var946!1 ""))
(assert true)
(define-const var2825 String (append/672562846 var946!1 "Failed to create temporary folder in ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create temporary folder in ") 
(declare-const var946!2 String)
(assert (= var946!2 (str.++ var946!1 "Failed to create temporary folder in ")))
(assert true)
(define-const var3508 String (append/-1031950772 var2825 (cast-from-var1061-to-var3383 var3326))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2825!1 String)
(assert (str.prefixof var2825 var2825!1))
(assert true)
(define-const var2109 String (toString/-2075883882 var3508)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var196 var2109 (cast-from-var2280-to-var3030 var396))) ; Statement: specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r2) 

(declare-const var196!1 var429)
(declare-const var2109!1 String)
(declare-const var396!1 var2280)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var429-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1061-to-var3383=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var2280-to-var3030=([java.lang.Exception], java.lang.Throwable)}
; {var1061=java.io.File, var3326=r0, var2280=java.lang.Exception, var396=$r2, var429=java.lang.RuntimeException, var196=$r3, var946=$r4, var2825=$r5, var3383=java.lang.Object, var3508=$r6, var2109=$r7, var3030=java.lang.Throwable}
; {java.io.File=var1061, r0=var3326, java.lang.Exception=var2280, $r2=var396, java.lang.RuntimeException=var429, $r3=var196, $r4=var946, $r5=var2825, java.lang.Object=var3383, $r6=var3508, $r7=var2109, java.lang.Throwable=var3030}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	$r2 := @caughtexception;	$r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create temporary folder in ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r2);	throw $r3
;block_num 2