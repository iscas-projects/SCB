(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var268 0)
(declare-sort var2617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var2617_decode/-73598010 (String String) String)
(declare-const null-String String)
(declare-const var3198 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3198 null-String)))
(assert true)
(define-const var1505 String (replaceAll/1692887130 var3198 "\u005c+" "%2B")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\+", "%2B") 
(assert (= (replaceAll/1692887130 var3198 "\u005c+" "%2B") (str.replace_re_all var3198 (str.to_re "+") "%2B")))
(assert true) ; Non Conditional
(define-const var1277 String (var2617_decode/-73598010 var1505 "UTF-8")) ; Statement: $r2 = staticinvoke <java.net.URLDecoder: java.lang.String decode(java.lang.String,java.lang.String)>(r1, "UTF-8") 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var2617_decode/-73598010=([java.lang.String, java.lang.String], java.lang.String)}
; {var3198=r0, var268=null_type, var1505=r1, var2617=java.net.URLDecoder, var1277=$r2}
; {r0=var3198, null_type=var268, r1=var1505, java.net.URLDecoder=var2617, $r2=var1277}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\+", "%2B");	$r2 = staticinvoke <java.net.URLDecoder: java.lang.String decode(java.lang.String,java.lang.String)>(r1, "UTF-8");	return $r2
;block_num 3