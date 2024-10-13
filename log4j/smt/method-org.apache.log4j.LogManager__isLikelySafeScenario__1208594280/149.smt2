(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2288 0)
(declare-sort var59 0)
(declare-sort var3109 0)
(declare-sort var3279 0)
(declare-sort var3021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var59-init () var59)
(declare-fun <init>/358169345 (var59) void)
(declare-fun var3109-init () var3109)
(declare-fun <init>/-1864438596 (var3109 var3279) void)
(declare-fun cast-from-var59-to-var3279 (var59) var3279)
(declare-fun printStackTrace/652371045 (var3021 var3109) void)
(declare-fun cast-from-var2288-to-var3021 (var2288) var3021)
(declare-fun toString/138175384 (var59) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2288 var2288)
(declare-const var689 var2288) ; Statement: r1 := @parameter0: java.lang.Exception 
(assert (not (= var689 null-var2288)))
(define-const var1109 var59 var59-init) ; Statement: $r4 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var1109)) ; Statement: specialinvoke $r4.<java.io.StringWriter: void <init>()>() 

(declare-const var1109!1 var59)
(define-const var2124 var3109 var3109-init) ; Statement: $r5 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var2124 (cast-from-var59-to-var3279 var1109!1))) ; Statement: specialinvoke $r5.<java.io.PrintWriter: void <init>(java.io.Writer)>($r4) 

(declare-const var2124!1 var3109)
(declare-const var1109!2 var59)
(assert true)
;(assert (printStackTrace/652371045 (cast-from-var2288-to-var3021 var689) var2124!1)) ; Statement: virtualinvoke r1.<java.lang.Exception: void printStackTrace(java.io.PrintWriter)>($r5) 

(declare-const var689!1 var2288)
(declare-const var2124!2 var3109)
(assert true)
(define-const var1567 String (toString/138175384 var1109!2)) ; Statement: r3 = virtualinvoke $r4.<java.io.StringWriter: java.lang.String toString()>() 
(assert true)
(define-const var3534 Int (indexOf/-1209756239 var1567 "org.apache.catalina.loader.WebappClassLoader.stop")) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>("org.apache.catalina.loader.WebappClassLoader.stop") 
(define-const var2049 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto $z0 = 0 
(assert (= var3534 var2049)) ; Cond: $i0 == $i2 
(define-const var1197 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var59-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var3109-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var59-to-var3279=([java.io.StringWriter], java.io.Writer), printStackTrace/652371045=([java.lang.Throwable, java.io.PrintWriter], void), cast-from-var2288-to-var3021=([java.lang.Exception], java.lang.Throwable), toString/138175384=([java.io.StringWriter], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2288=java.lang.Exception, var689=r1, var59=java.io.StringWriter, var1109=$r4, var3109=java.io.PrintWriter, var2124=$r5, var3279=java.io.Writer, var3021=java.lang.Throwable, var1567=r3, var3534=$i0, var2049=$i2, var1197=$z0}
; {java.lang.Exception=var2288, r1=var689, java.io.StringWriter=var59, $r4=var1109, java.io.PrintWriter=var3109, $r5=var2124, java.io.Writer=var3279, java.lang.Throwable=var3021, r3=var1567, $i0=var3534, $i2=var2049, $z0=var1197}
;seq <java.io.StringWriter: java.lang.String toString()>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.Exception;	$r4 = new java.io.StringWriter;	specialinvoke $r4.<java.io.StringWriter: void <init>()>();	$r5 = new java.io.PrintWriter;	specialinvoke $r5.<java.io.PrintWriter: void <init>(java.io.Writer)>($r4);	virtualinvoke r1.<java.lang.Exception: void printStackTrace(java.io.PrintWriter)>($r5);	r3 = virtualinvoke $r4.<java.io.StringWriter: java.lang.String toString()>();	$i0 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>("org.apache.catalina.loader.WebappClassLoader.stop");	$i2 = (int) -1;	if $i0 == $i2 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3