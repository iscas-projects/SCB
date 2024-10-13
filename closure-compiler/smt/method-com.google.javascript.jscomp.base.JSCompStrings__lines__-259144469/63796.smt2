(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/1594745010 (String var1353) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1353 var1353)
(declare-const var1296 var1353) ; Statement: r0 := @parameter0: java.lang.Iterable 
(assert (not (= var1296 null-var1353)))
(define-const var326 String (String_join/1594745010 (cast-from-String-to-String "\n") var1296)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>("\n", r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1353=java.lang.Iterable, var1296=r0, var326=$r1}
; {java.lang.Iterable=var1353, r0=var1296, $r1=var326}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1}
;stmts r0 := @parameter0: java.lang.Iterable;	$r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>("\n", r0);	return $r1
;block_num 1