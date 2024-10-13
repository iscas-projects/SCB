(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2455 0)
(declare-sort var1914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var1914) String)
(declare-fun cast-from-var2455-to-var1914 (var2455) var1914)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/2043240381 (var2455) var1914)
(declare-fun append/-1031950772 (String var1914) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2455 var2455)
(declare-const var1148 var2455) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture 
(assert (not (= var1148 null-var2455)))
(define-const var3184 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3184)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3184!1 String)
(assert (= var3184!1 ""))
(assert true)
(define-const var2712 String (toString/-522406933 (cast-from-var2455-to-var1914 var1148))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var369 String (append/672562846 var3184!1 var2712)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3184!2 String)
(assert (= var3184!2 (str.++ var3184!1 var2712)))
(assert true)
(define-const var3416 String (append/672562846 var369 "[status=SUCCESS, result=[")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[status=SUCCESS, result=[") 
(declare-const var369!1 String)
(assert (= var369!1 (str.++ var369 "[status=SUCCESS, result=[")))
(define-const var3940 var1914 (value/2043240381 var1148)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture: java.lang.Object value> 
(assert true)
(define-const var543 String (append/-1031950772 var3416 var3940)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3416!1 String)
(assert (str.prefixof var3416 var3416!1))
(assert true)
(define-const var946 String (append/672562846 var543 "]]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]]") 
(declare-const var543!1 String)
(assert (= var543!1 (str.++ var543 "]]")))
(assert true)
(define-const var3041 String (toString/-2075883882 var946)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2455-to-var1914=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/2043240381=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2455=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture, var1148=r1, var3184=$r0, var1914=java.lang.Object, var2712=$r2, var369=$r3, var3416=$r5, var3940=$r4, var543=$r6, var946=$r7, var3041=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture=var2455, r1=var1148, $r0=var3184, java.lang.Object=var1914, $r2=var2712, $r3=var369, $r5=var3416, $r4=var3940, $r6=var543, $r7=var946, $r8=var3041}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[status=SUCCESS, result=[");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1