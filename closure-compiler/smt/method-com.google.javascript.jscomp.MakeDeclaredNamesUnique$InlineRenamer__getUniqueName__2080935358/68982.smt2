(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1361 0)
(declare-sort var1697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1361 var1361)
(declare-const null-String String)
(declare-const var3754 var1361) ; Statement: r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer 
(assert (not (= var3754 null-var1361)))
(declare-const var2194 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2194 null-String)))
(assert true)
(define-const var1858 Bool (isEmpty/-1285796103 var2194)) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r7.<java.lang.String: boolean contains(java.lang.CharSequence)>("$jscomp$") 
(assert (not (= (ite var1858 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1361=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer, var3754=r0, var2194=r7, var1697=null_type, var1858=$z0}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer=var1361, r0=var3754, r7=var2194, null_type=var1697, $z0=var1858}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer;	r7 := @parameter0: java.lang.String;	$z0 = virtualinvoke r7.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $z1 = virtualinvoke r7.<java.lang.String: boolean contains(java.lang.CharSequence)>("$jscomp$");	return r7
;block_num 2