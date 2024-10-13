(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2777 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2777 var2777)
(declare-const null-String String)
(declare-const var1061 var2777) ; Statement: r1 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$1 
(assert (not (= var1061 null-var2777)))
(declare-const var1712 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1712 null-String)))
(declare-const var3783 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3783 null-String)))
(assert true)
;(assert (append/672562846 var3783 "(function() {")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(function() {") 
(declare-const var3783!1 String)
(assert (= var3783!1 (str.++ var3783 "(function() {")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2777=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$1, var1061=r1, var1712=r2, var2437=null_type, var3783=r0}
; {com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$1=var2777, r1=var1061, r2=var1712, null_type=var2437, r0=var3783}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(function() {");	return
;block_num 1