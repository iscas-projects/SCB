(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var397 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var397 null-String)))
(assert true)
(define-const var2733 String (replaceAll/1692887130 var397 "(<[^<]*?>)|(<[\u005cs]*?/[^<]*?>)|(<[^<]*?/[\u005cs]*?>)" "")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(<[^<]*?>)|(<[\\s]*?/[^<]*?>)|(<[^<]*?/[\\s]*?>)", "") 
(assert (= (replaceAll/1692887130 var397 "(<[^<]*?>)|(<[\u005cs]*?/[^<]*?>)|(<[^<]*?/[\u005cs]*?>)" "") (str.replace_re_all var397 (re.union (re.++ (str.to_re "<") (re.opt (re.* (re.comp (str.to_re "<")))) (str.to_re ">")) (re.++ (str.to_re "<") (re.opt (re.* (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " ")))) (str.to_re "/") (re.opt (re.* (re.comp (str.to_re "<")))) (str.to_re ">")) (re.++ (str.to_re "<") (re.opt (re.* (re.comp (str.to_re "<")))) (str.to_re "/") (re.opt (re.* (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " ")))) (str.to_re ">"))) "")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var397=r0, var1113=null_type, var2733=$r1}
; {r0=var397, null_type=var1113, $r1=var2733}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(<[^<]*?>)|(<[\\s]*?/[^<]*?>)|(<[^<]*?/[\\s]*?>)", "");	return $r1
;block_num 1