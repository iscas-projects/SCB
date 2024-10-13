(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var1616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1047 var1047)
(declare-const null-String String)
(declare-const var1319 var1047) ; Statement: r4 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2 
(assert (not (= var1319 null-var1047)))
(declare-const var917 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var917 null-String)))
(declare-const var1770 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var1770 null-String)))
(assert true)
(define-const var495 String (append/672562846 var1770 "define(\u0027")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("define(\'") 
(declare-const var1770!1 String)
(assert (= var1770!1 (str.++ var1770 "define(\u0027")))
(assert true)
(define-const var2359 String (append/672562846 var495 var917)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var495!1 String)
(assert (= var495!1 (str.++ var495 var917)))
(assert true)
;(assert (append/672562846 var2359 "\u0027, [\u0027handlebars\u0027], function(Handlebars) {")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', [\'handlebars\'], function(Handlebars) {") 
(declare-const var2359!1 String)
(assert (= var2359!1 (str.++ var2359 "\u0027, [\u0027handlebars\u0027], function(Handlebars) {")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1047=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2, var1319=r4, var917=r1, var1616=null_type, var1770=r0, var495=$r2, var2359=$r3}
; {com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2=var1047, r4=var1319, r1=var917, null_type=var1616, r0=var1770, $r2=var495, $r3=var2359}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r4 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.StringBuilder;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("define(\'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', [\'handlebars\'], function(Handlebars) {");	return
;block_num 1