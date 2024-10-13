(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2903 0)
(declare-sort var3462 0)
(declare-sort var2564 0)
(declare-sort var2675 0)
(declare-sort var392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3462-init () var3462)
(declare-fun <init>/358169345 (var3462) void)
(declare-fun var2564-init () var2564)
(declare-fun <init>/-1864438596 (var2564 var2675) void)
(declare-fun cast-from-var3462-to-var2675 (var3462) var2675)
(declare-fun printStackTrace/652371045 (var392 var2564) void)
(declare-fun cast-from-var2903-to-var392 (var2903) var392)
(declare-fun toString/138175384 (var3462) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2903 var2903)
(declare-const var1759 var2903) ; Statement: r1 := @parameter0: java.lang.Exception 
(assert (not (= var1759 null-var2903)))
(define-const var3580 var3462 var3462-init) ; Statement: $r4 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var3580)) ; Statement: specialinvoke $r4.<java.io.StringWriter: void <init>()>() 

(declare-const var3580!1 var3462)
(define-const var2156 var2564 var2564-init) ; Statement: $r5 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var2156 (cast-from-var3462-to-var2675 var3580!1))) ; Statement: specialinvoke $r5.<java.io.PrintWriter: void <init>(java.io.Writer)>($r4) 

(declare-const var2156!1 var2564)
(declare-const var3580!2 var3462)
(assert true)
;(assert (printStackTrace/652371045 (cast-from-var2903-to-var392 var1759) var2156!1)) ; Statement: virtualinvoke r1.<java.lang.Exception: void printStackTrace(java.io.PrintWriter)>($r5) 

(declare-const var1759!1 var2903)
(declare-const var2156!2 var2564)
(assert true)
(define-const var606 String (toString/138175384 var3580!2)) ; Statement: r3 = virtualinvoke $r4.<java.io.StringWriter: java.lang.String toString()>() 
(assert true)
(define-const var1250 Int (indexOf/-1209756239 var606 "org.apache.catalina.loader.WebappClassLoader.stop")) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>("org.apache.catalina.loader.WebappClassLoader.stop") 
(define-const var2498 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto $z0 = 0 
(assert (not (= var1250 var2498))) ; Negate: Cond: $i0 == $i2  
(define-const var323 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3462-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var2564-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var3462-to-var2675=([java.io.StringWriter], java.io.Writer), printStackTrace/652371045=([java.lang.Throwable, java.io.PrintWriter], void), cast-from-var2903-to-var392=([java.lang.Exception], java.lang.Throwable), toString/138175384=([java.io.StringWriter], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2903=java.lang.Exception, var1759=r1, var3462=java.io.StringWriter, var3580=$r4, var2564=java.io.PrintWriter, var2156=$r5, var2675=java.io.Writer, var392=java.lang.Throwable, var606=r3, var1250=$i0, var2498=$i2, var323=$z0}
; {java.lang.Exception=var2903, r1=var1759, java.io.StringWriter=var3462, $r4=var3580, java.io.PrintWriter=var2564, $r5=var2156, java.io.Writer=var2675, java.lang.Throwable=var392, r3=var606, $i0=var1250, $i2=var2498, $z0=var323}
;seq <java.io.StringWriter: java.lang.String toString()>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.Exception;	$r4 = new java.io.StringWriter;	specialinvoke $r4.<java.io.StringWriter: void <init>()>();	$r5 = new java.io.PrintWriter;	specialinvoke $r5.<java.io.PrintWriter: void <init>(java.io.Writer)>($r4);	virtualinvoke r1.<java.lang.Exception: void printStackTrace(java.io.PrintWriter)>($r5);	r3 = virtualinvoke $r4.<java.io.StringWriter: java.lang.String toString()>();	$i0 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>("org.apache.catalina.loader.WebappClassLoader.stop");	$i2 = (int) -1;	if $i0 == $i2 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3