(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3059 0)
(declare-sort var305 0)
(declare-sort var3578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/1339386452 (String (Array Int var3578)) String)
(declare-fun append/1659648310 (var3059 String) var3059)
(declare-const null-var3059 var3059)
(declare-const null-String String)
(declare-const null-__Array__Int__var3578__ (Array Int var3578))
(declare-const var172 var3059) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var172 null-var3059)))
(declare-const var332 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var332 null-String)))
(declare-const var707 (Array Int var3578)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var707 null-__Array__Int__var3578__)))
(define-const var1466 String (String_format/1339386452 var332 var707)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r2) 
(assert true)
(define-const var683 var3059 (append/1659648310 var172 var1466)) ; Statement: $r4 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/1659648310=([org.apache.commons.lang3.text.StrBuilder, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var3059=org.apache.commons.lang3.text.StrBuilder, var172=r0, var332=r1, var305=null_type, var3578=java.lang.Object, var707=r2, var1466=$r3, var683=$r4}
; {org.apache.commons.lang3.text.StrBuilder=var3059, r0=var172, r1=var332, null_type=var305, java.lang.Object=var3578, r2=var707, $r3=var1466, $r4=var683}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r2);	$r4 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r3);	return $r4
;block_num 1