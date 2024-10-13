(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var1225 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1225 null-String)))
(assert true)
(define-const var3281 String (replaceAll/1692887130 var1225 "[^\u005cp{Alnum}]" "_")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[^\\p{Alnum}]", "_") 
(assert (= (replaceAll/1692887130 var1225 "[^\u005cp{Alnum}]" "_") (str.replace_re_all var1225 (re.comp (re.union (str.to_re "A") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "u") (str.to_re "{") (str.to_re "}"))) "_")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var1225=r0, var2726=null_type, var3281=$r1}
; {r0=var1225, null_type=var2726, $r1=var3281}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[^\\p{Alnum}]", "_");	return $r1
;block_num 1