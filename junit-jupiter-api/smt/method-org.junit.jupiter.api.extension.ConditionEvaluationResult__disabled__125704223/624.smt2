(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3064 0)
(declare-sort var126 0)
(declare-sort var2644 0)
(declare-sort var2858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var126_isBlank/1722812613 (String) Bool)
(declare-fun arr-var2644-init () (Array Int var2644))
(declare-fun cast-from-String-to-var2644 (String) var2644)
(declare-fun String_format/1339386452 (String (Array Int var2644)) String)
(declare-fun var2858_disabled/1504372604 (String) var2858)
(declare-const null-String String)
(declare-const null-__Array__Int__var2644__ (Array Int var2644))
(declare-const var1494 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1494 null-String)))
(declare-const var1996 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1996 null-String)))
(define-const var529 Bool (var126_isBlank/1722812613 var1996)) ; Statement: $z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isBlank(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = newarray (java.lang.Object)[2] 
(assert (= (ite var529 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3096 (Array Int var2644) arr-var2644-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var3096!1 (Array Int var2644))
(assert (not (= var3096!1 null-__Array__Int__var2644__)))
(assert (= (select var3096!1 0) (cast-from-String-to-var2644 var1494))) ; Statement: $r1[0] = r2 
(declare-const var3096!2 (Array Int var2644))
(assert (not (= var3096!2 null-__Array__Int__var2644__)))
(assert (= (select var3096!2 1) (cast-from-String-to-var2644 var1996))) ; Statement: $r1[1] = r0 
(define-const var2740 String (String_format/1339386452 "%s ==> %s" var3096!2)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s ==> %s", $r1) 
(define-const var1960 var2858 (var2858_disabled/1504372604 var2740)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult disabled(java.lang.String)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var126_isBlank/1722812613=([java.lang.String], boolean), arr-var2644-init=([], java.lang.Object[]), cast-from-String-to-var2644=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2858_disabled/1504372604=([java.lang.String], org.junit.jupiter.api.extension.ConditionEvaluationResult)}
; {var1494=r2, var3064=null_type, var1996=r0, var126=org.junit.platform.commons.util.StringUtils, var529=$z0, var2644=java.lang.Object, var3096=$r1, var2740=$r3, var2858=org.junit.jupiter.api.extension.ConditionEvaluationResult, var1960=$r4}
; {r2=var1494, null_type=var3064, r0=var1996, org.junit.platform.commons.util.StringUtils=var126, $z0=var529, java.lang.Object=var2644, $r1=var3096, $r3=var2740, org.junit.jupiter.api.extension.ConditionEvaluationResult=var2858, $r4=var1960}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isBlank(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = newarray (java.lang.Object)[2];	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r2;	$r1[1] = r0;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s ==> %s", $r1);	$r4 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult disabled(java.lang.String)>($r3);	return $r4
;block_num 2