(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var3071 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3071 null-String)))
(assert true)
(define-const var1507 String (replaceAll/1692887130 var3071 "\u0022" "\u0022\u0022")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\"", "\"\"") 
(assert (= (replaceAll/1692887130 var3071 "\u0022" "\u0022\u0022") (str.replace_re_all var3071 (str.to_re "\u{0022}") "\u0022\u0022")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var3071=r0, var3628=null_type, var1507=$r1}
; {r0=var3071, null_type=var3628, $r1=var1507}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\"", "\"\"");	return $r1
;block_num 1