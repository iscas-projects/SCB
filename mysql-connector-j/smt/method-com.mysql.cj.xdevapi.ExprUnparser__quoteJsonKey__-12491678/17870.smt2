(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var209 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var209 null-String)))
(assert true)
(define-const var3609 String (replaceAll/1692887130 var209 "\u0027" "\u005c\u005c\u0027")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\\\'") 
(assert (= (replaceAll/1692887130 var209 "\u0027" "\u005c\u005c\u0027") (str.replace_re_all var209 (str.to_re "\u{0027}") "\u005c\u005c\u0027")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var209=r0, var1342=null_type, var3609=$r1}
; {r0=var209, null_type=var1342, $r1=var3609}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\\\'");	return $r1
;block_num 1