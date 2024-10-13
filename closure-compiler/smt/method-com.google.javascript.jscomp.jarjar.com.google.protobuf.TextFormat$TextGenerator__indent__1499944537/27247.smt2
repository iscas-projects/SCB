(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indent/1923421650 (var3888) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3888 var3888)
(declare-const var2625 var3888) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator 
(assert (not (= var2625 null-var3888)))
(define-const var1226 String (indent/1923421650 var2625)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent> 
(assert true)
;(assert (append/672562846 var1226 "  ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1226!1 String)
(assert (= var1226!1 (str.++ var1226 "  ")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indent/1923421650=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3888=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator, var2625=r0, var1226=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator=var3888, r0=var2625, $r1=var1226}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	return
;block_num 1