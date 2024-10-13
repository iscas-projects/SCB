(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2784 0)
(declare-sort var1204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1204_quote/811834350 (String) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var1204_compile/2141929305 (String) var1204)
(declare-const null-String String)
(declare-const var257 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var257 null-String)))
(define-const var3113 String (var1204_quote/811834350 var257)) ; Statement: r3 = staticinvoke <java.util.regex.Pattern: java.lang.String quote(java.lang.String)>(r2) 
(assert true)
(define-const var3652 String (replaceAll/1692887130 var3113 "\u005c{\u005cd+\u005c}" "\u005c\u005cE.*\u005c\u005cQ")) ; Statement: $r0 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\{\\d+\\}", "\\\\E.*\\\\Q") 
(assert (= (replaceAll/1692887130 var3113 "\u005c{\u005cd+\u005c}" "\u005c\u005cE.*\u005c\u005cQ") (str.replace_re_all var3113 (re.++ (str.to_re "{") (re.+ (re.range "0" "9")) (str.to_re "}")) "\u005c\u005cE.*\u005c\u005cQ")))
(define-const var2317 var1204 (var1204_compile/2141929305 var3652)) ; Statement: $r1 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1204_quote/811834350=([java.lang.String], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var1204_compile/2141929305=([java.lang.String], java.util.regex.Pattern)}
; {var257=r2, var2784=null_type, var1204=java.util.regex.Pattern, var3113=r3, var3652=$r0, var2317=$r1}
; {r2=var257, null_type=var2784, java.util.regex.Pattern=var1204, r3=var3113, $r0=var3652, $r1=var2317}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.String;	r3 = staticinvoke <java.util.regex.Pattern: java.lang.String quote(java.lang.String)>(r2);	$r0 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\{\\d+\\}", "\\\\E.*\\\\Q");	$r1 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r0);	return $r1
;block_num 1