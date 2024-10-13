(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2664 0)
(declare-sort var3482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/1594745010 (String var3482) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var2664-to-var3482 (var2664) var3482)
(declare-const null-var2664 var2664)
(declare-const var2334 var2664) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2334 null-var2664)))
(define-const var1618 String (String_join/1594745010 (cast-from-String-to-String "\t") (cast-from-var2664-to-var3482 var2334))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>("\t", r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var2664-to-var3482=([java.util.List], java.lang.Iterable)}
; {var2664=java.util.List, var2334=r0, var3482=java.lang.Iterable, var1618=$r1}
; {java.util.List=var2664, r0=var2334, java.lang.Iterable=var3482, $r1=var1618}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1}
;stmts r0 := @parameter0: java.util.List;	$r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>("\t", r0);	return $r1
;block_num 1