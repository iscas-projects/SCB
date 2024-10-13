(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3173 0)
(declare-sort var2091 0)
(declare-sort var766 0)
(declare-sort var3069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/1339386452 (String (Array Int var2091)) String)
(declare-fun var766_error/-189932385 (var766 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var2091__ (Array Int var2091))
(declare-const var3069-logger var766)
(declare-const var2547 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2547 null-String)))
(declare-const var2902 (Array Int var2091)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var2902 null-__Array__Int__var2091__)))
(define-const var601 var766 var3069-logger) ; Statement: $r2 = <com.github.jknack.handlebars.Handlebars: org.slf4j.Logger logger> 
(define-const var3300 String (String_format/1339386452 var2547 var2902)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r1) 
;(assert (var766_error/-189932385 var601 var3300)) ; Statement: interfaceinvoke $r2.<org.slf4j.Logger: void error(java.lang.String)>($r3) 

(declare-const var601!1 var766)
(declare-const var3300!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var766_error/-189932385=([org.slf4j.Logger, java.lang.String], void)}
; {var2547=r0, var3173=null_type, var2091=java.lang.Object, var2902=r1, var766=org.slf4j.Logger, var3069=com.github.jknack.handlebars.Handlebars, var601=$r2, var3300=$r3}
; {r0=var2547, null_type=var3173, java.lang.Object=var2091, r1=var2902, org.slf4j.Logger=var766, com.github.jknack.handlebars.Handlebars=var3069, $r2=var601, $r3=var3300}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object[];	$r2 = <com.github.jknack.handlebars.Handlebars: org.slf4j.Logger logger>;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r1);	interfaceinvoke $r2.<org.slf4j.Logger: void error(java.lang.String)>($r3);	return
;block_num 1