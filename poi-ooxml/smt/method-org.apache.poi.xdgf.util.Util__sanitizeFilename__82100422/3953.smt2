(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var3057 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3057 null-String)))
(assert true)
(define-const var396 String (replaceAll/1692887130 var3057 "[:\u005c\u005c/*\u0022?|<>]" "_")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[:\\\\/*\"?|<>]", "_") 
(assert (= (replaceAll/1692887130 var3057 "[:\u005c\u005c/*\u0022?|<>]" "_") (str.replace_re_all var3057 (re.union (str.to_re ":") (str.to_re "\u{005c}") (str.to_re "/") (str.to_re "*") (str.to_re "\u{0022}") (str.to_re "?") (str.to_re "|") (str.to_re "<") (str.to_re ">")) "_")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var3057=r0, var1955=null_type, var396=$r1}
; {r0=var3057, null_type=var1955, $r1=var396}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[:\\\\/*\"?|<>]", "_");	return $r1
;block_num 1