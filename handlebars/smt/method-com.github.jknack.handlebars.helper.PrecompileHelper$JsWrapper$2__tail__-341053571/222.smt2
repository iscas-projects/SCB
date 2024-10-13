(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1531 var1531)
(declare-const null-String String)
(declare-const var1002 var1531) ; Statement: r1 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2 
(assert (not (= var1002 null-var1531)))
(declare-const var2207 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2207 null-String)))
(assert true)
;(assert (append/672562846 var2207 "  return template;\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  return template;\n") 
(declare-const var2207!1 String)
(assert (= var2207!1 (str.++ var2207 "  return template;\n")))
(assert true)
;(assert (append/672562846 var2207!1 "});")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("});") 
(declare-const var2207!2 String)
(assert (= var2207!2 (str.++ var2207!1 "});")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1531=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2, var1002=r1, var2207=r0}
; {com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2=var1531, r1=var1002, r0=var2207}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  return template;\n");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("});");	return
;block_num 1