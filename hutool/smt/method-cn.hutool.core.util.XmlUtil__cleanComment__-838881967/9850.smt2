(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var3061 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3061 null-String)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(?s)<!--.+?-->", "") 
(assert (not (= var3061 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1583 String (replaceAll/1692887130 var3061 "(?s)<!--.+?-->" "")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(?s)<!--.+?-->", "") 
(assert (= (replaceAll/1692887130 var3061 "(?s)<!--.+?-->" "") (str.replace_re_all var3061 (re.++ (str.to_re "?s") (str.to_re "<!--") (re.opt (re.+ re.allchar)) (str.to_re "-->")) "")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var3061=r0, var3326=null_type, var1583=$r1}
; {r0=var3061, null_type=var3326, $r1=var1583}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(?s)<!--.+?-->", "");	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(?s)<!--.+?-->", "");	return $r1
;block_num 2