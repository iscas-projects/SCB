(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1620 0)
(declare-sort var1135 0)
(declare-sort var2958 0)
(declare-sort var3272 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3272-init () (Array Int var3272))
(declare-fun cast-from-var1620-to-var3272 (var1620) var3272)
(declare-fun cast-from-var1135-to-var3272 (var1135) var3272)
(declare-fun cast-from-var2958-to-var3272 (var2958) var3272)
(declare-fun String_format/1339386452 (String (Array Int var3272)) String)
(declare-const null-var1620 var1620)
(declare-const null-var1135 var1135)
(declare-const null-var2958 var2958)
(declare-const null-__Array__Int__var3272__ (Array Int var3272))
(declare-const var662 var1620) ; Statement: r1 := @parameter0: java.lang.annotation.Annotation 
(assert (not (= var662 null-var1620)))
(declare-const var2556 var1135) ; Statement: r2 := @parameter1: java.lang.reflect.AnnotatedElement 
(assert (not (= var2556 null-var1135)))
(declare-const var2714 var2958) ; Statement: r3 := @parameter2: org.junit.jupiter.api.extension.ConditionEvaluationResult 
(assert (not (= var2714 null-var2958)))
(define-const var2132 (Array Int var3272) arr-var3272-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(declare-const var2132!1 (Array Int var3272))
(assert (not (= var2132!1 null-__Array__Int__var3272__)))
(assert (= (select var2132!1 0) (cast-from-var1620-to-var3272 var662))) ; Statement: $r0[0] = r1 
(declare-const var2132!2 (Array Int var3272))
(assert (not (= var2132!2 null-__Array__Int__var3272__)))
(assert (= (select var2132!2 1) (cast-from-var1135-to-var3272 var2556))) ; Statement: $r0[1] = r2 
(declare-const var2132!3 (Array Int var3272))
(assert (not (= var2132!3 null-__Array__Int__var3272__)))
(assert (= (select var2132!3 2) (cast-from-var2958-to-var3272 var2714))) ; Statement: $r0[2] = r3 
(define-const var1778 String (String_format/1339386452 "Evaluation of %s on [%s] resulted in: %s" var2132!3)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Evaluation of %s on [%s] resulted in: %s", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3272-init=([], java.lang.Object[]), cast-from-var1620-to-var3272=([java.lang.annotation.Annotation], java.lang.Object), cast-from-var1135-to-var3272=([java.lang.reflect.AnnotatedElement], java.lang.Object), cast-from-var2958-to-var3272=([org.junit.jupiter.api.extension.ConditionEvaluationResult], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1620=java.lang.annotation.Annotation, var662=r1, var1135=java.lang.reflect.AnnotatedElement, var2556=r2, var2958=org.junit.jupiter.api.extension.ConditionEvaluationResult, var2714=r3, var3272=java.lang.Object, var2132=$r0, var1778=$r4}
; {java.lang.annotation.Annotation=var1620, r1=var662, java.lang.reflect.AnnotatedElement=var1135, r2=var2556, org.junit.jupiter.api.extension.ConditionEvaluationResult=var2958, r3=var2714, java.lang.Object=var3272, $r0=var2132, $r4=var1778}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.annotation.Annotation;	r2 := @parameter1: java.lang.reflect.AnnotatedElement;	r3 := @parameter2: org.junit.jupiter.api.extension.ConditionEvaluationResult;	$r0 = newarray (java.lang.Object)[3];	$r0[0] = r1;	$r0[1] = r2;	$r0[2] = r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Evaluation of %s on [%s] resulted in: %s", $r0);	return $r4
;block_num 1