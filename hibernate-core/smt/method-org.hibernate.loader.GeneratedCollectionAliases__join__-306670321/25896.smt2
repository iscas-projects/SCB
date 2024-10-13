(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var562 var562)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2509 var562) ; Statement: r2 := @this: org.hibernate.loader.GeneratedCollectionAliases 
(assert (not (= var2509 null-var562)))
(declare-const var2326 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2326 null-__Array__Int__String__)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0) 
(assert (not (= var2326 null-__Array__Int__String__))) ; Cond: r0 != null 
(define-const var443 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2326))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var562=org.hibernate.loader.GeneratedCollectionAliases, var2509=r2, var2326=r0, var443=$r1}
; {org.hibernate.loader.GeneratedCollectionAliases=var562, r2=var2509, r0=var2326, $r1=var443}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r2 := @this: org.hibernate.loader.GeneratedCollectionAliases;	r0 := @parameter0: java.lang.String[];	if r0 != null goto $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0);	$r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0);	return $r1
;block_num 2