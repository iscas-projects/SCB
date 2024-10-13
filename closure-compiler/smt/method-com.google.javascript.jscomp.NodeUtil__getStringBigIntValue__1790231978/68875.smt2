(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var2323 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2323 null-String)))
(assert true)
(define-const var2428 Bool (contains/1009244746 var2323 (cast-from-String-to-String "\u000b"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\u000b") 
 ; Statement: if $z0 == 0 goto r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String trimJsWhiteSpace(java.lang.String)>(r0) 
(assert (not (= (ite var2428 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2323=r0, var817=null_type, var2428=$z0}
; {r0=var2323, null_type=var817, $z0=var2428}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\u000b");	if $z0 == 0 goto r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String trimJsWhiteSpace(java.lang.String)>(r0);	return null
;block_num 2