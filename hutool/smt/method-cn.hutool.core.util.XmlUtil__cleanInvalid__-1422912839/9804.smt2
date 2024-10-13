(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var1294 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1294 null-String)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[\\x00-\\x08\\x0b-\\x0c\\x0e-\\x1f]", "") 
(assert (not (= var1294 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var252 String (replaceAll/1692887130 var1294 "[\u005cx00-\u005cx08\u005cx0b-\u005cx0c\u005cx0e-\u005cx1f]" "")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[\\x00-\\x08\\x0b-\\x0c\\x0e-\\x1f]", "") 
(assert (= (replaceAll/1692887130 var1294 "[\u005cx00-\u005cx08\u005cx0b-\u005cx0c\u005cx0e-\u005cx1f]" "") (str.replace_re_all var1294 (re.union (str.to_re "x") (str.to_re "0") (re.range "0" "\u{005c}") (str.to_re "x") (str.to_re "0") (str.to_re "8") (str.to_re "x") (str.to_re "0") (re.range "b" "\u{005c}") (str.to_re "x") (str.to_re "0") (str.to_re "c") (str.to_re "x") (str.to_re "0") (re.range "e" "\u{005c}") (str.to_re "x") (str.to_re "1") (str.to_re "f")) "")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var1294=r0, var1898=null_type, var252=$r1}
; {r0=var1294, null_type=var1898, $r1=var252}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[\\x00-\\x08\\x0b-\\x0c\\x0e-\\x1f]", "");	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[\\x00-\\x08\\x0b-\\x0c\\x0e-\\x1f]", "");	return $r1
;block_num 2