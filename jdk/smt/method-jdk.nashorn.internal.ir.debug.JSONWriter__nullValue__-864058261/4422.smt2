(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-2106681294 (var1025) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1025 var1025)
(declare-const var2625 var1025) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var2625 null-var1025)))
(define-const var1396 String (buf/-2106681294 var2625)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var1396 "null")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(declare-const var1396!1 String)
(assert (= var1396!1 (str.++ var1396 "null")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1025=jdk.nashorn.internal.ir.debug.JSONWriter, var2625=r0, var1396=$r1}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var1025, r0=var2625, $r1=var1396}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	$r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	return
;block_num 1