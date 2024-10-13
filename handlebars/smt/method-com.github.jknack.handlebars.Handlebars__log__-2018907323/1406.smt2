(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3910 0)
(declare-sort var1084 0)
(declare-sort var588 0)
(declare-sort var128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/1339386452 (String (Array Int var1084)) String)
(declare-fun var588_info/626955599 (var588 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var1084__ (Array Int var1084))
(declare-const var128-logger var588)
(declare-const var1690 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1690 null-String)))
(declare-const var993 (Array Int var1084)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var993 null-__Array__Int__var1084__)))
(define-const var278 var588 var128-logger) ; Statement: $r2 = <com.github.jknack.handlebars.Handlebars: org.slf4j.Logger logger> 
(define-const var2115 String (String_format/1339386452 var1690 var993)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r1) 
;(assert (var588_info/626955599 var278 var2115)) ; Statement: interfaceinvoke $r2.<org.slf4j.Logger: void info(java.lang.String)>($r3) 

(declare-const var278!1 var588)
(declare-const var2115!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var588_info/626955599=([org.slf4j.Logger, java.lang.String], void)}
; {var1690=r0, var3910=null_type, var1084=java.lang.Object, var993=r1, var588=org.slf4j.Logger, var128=com.github.jknack.handlebars.Handlebars, var278=$r2, var2115=$r3}
; {r0=var1690, null_type=var3910, java.lang.Object=var1084, r1=var993, org.slf4j.Logger=var588, com.github.jknack.handlebars.Handlebars=var128, $r2=var278, $r3=var2115}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object[];	$r2 = <com.github.jknack.handlebars.Handlebars: org.slf4j.Logger logger>;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r1);	interfaceinvoke $r2.<org.slf4j.Logger: void info(java.lang.String)>($r3);	return
;block_num 1