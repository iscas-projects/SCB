(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var3004 0)
(declare-sort var2858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3004-init () (Array Int var3004))
(declare-fun var2858_notEmpty/1384193294 (String String (Array Int var3004)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-String String)
(declare-const var1498 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1498 null-String)))
(define-const var575 (Array Int var3004) arr-var3004-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2858_notEmpty/1384193294 (cast-from-String-to-String var1498) "The String must not be empty" var575)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "The String must not be empty", $r1) 

(declare-const var1498!1 String)
(declare-const var3713 String)
(declare-const var575!1 (Array Int var3004))
(assert (not (and true (and (> (str.len var1498!1) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3004-init=([], java.lang.Object[]), var2858_notEmpty/1384193294=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char)}
; {var1498=r0, var1125=null_type, var3004=java.lang.Object, var575=$r1, var2858=org.apache.commons.lang3.Validate, var3713="The String must not be empty", var1734=$c0}
; {r0=var1498, null_type=var1125, java.lang.Object=var3004, $r1=var575, org.apache.commons.lang3.Validate=var2858, "The String must not be empty"=var3713, $c0=var1734}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "The String must not be empty", $r1);	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return $c0
;block_num 1