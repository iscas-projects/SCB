(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2068 0)
(declare-sort var3155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultNS/-1785025210 (var2068) String)
(declare-const null-var2068 var2068)
(declare-const null-String String)
(declare-const var3085 var2068) ; Statement: r1 := @this: freemarker.template.Template 
(assert (not (= var3085 null-var2068)))
(declare-const var2884 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2884 null-String)))
(declare-const var2405 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2405 null-String)))
 ; Statement: if r0 == null goto $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS> 
(assert (= var2405 null-String)) ; Cond: r0 == null 
(define-const var787 String (defaultNS/-1785025210 var3085)) ; Statement: $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS> 
 ; Statement: if $r2 == null goto return r3 
(assert (= var787 null-String)) ; Cond: $r2 == null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultNS/-1785025210=([freemarker.template.Template], java.lang.String)}
; {var2068=freemarker.template.Template, var3085=r1, var2884=r3, var3155=null_type, var2405=r0, var787=$r2}
; {freemarker.template.Template=var2068, r1=var3085, r3=var2884, null_type=var3155, r0=var2405, $r2=var787}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.template.Template;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS>;	$r2 = r1.<freemarker.template.Template: java.lang.String defaultNS>;	if $r2 == null goto return r3;	return r3
;block_num 3