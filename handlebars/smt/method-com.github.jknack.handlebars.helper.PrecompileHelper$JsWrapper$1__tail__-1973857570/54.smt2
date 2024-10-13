(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3069 var3069)
(declare-const null-String String)
(declare-const var3412 var3069) ; Statement: r1 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$1 
(assert (not (= var3412 null-var3069)))
(declare-const var880 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var880 null-String)))
(assert true)
;(assert (append/672562846 var880 "})();")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})();") 
(declare-const var880!1 String)
(assert (= var880!1 (str.++ var880 "})();")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3069=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$1, var3412=r1, var880=r0}
; {com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$1=var3069, r1=var3412, r0=var880}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$1;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})();");	return
;block_num 1