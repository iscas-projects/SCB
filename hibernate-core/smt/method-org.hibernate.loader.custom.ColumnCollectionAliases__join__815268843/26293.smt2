(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var3340 var3340)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1967 var3340) ; Statement: r2 := @this: org.hibernate.loader.custom.ColumnCollectionAliases 
(assert (not (= var1967 null-var3340)))
(declare-const var2987 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2987 null-__Array__Int__String__)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0) 
(assert (not (= var2987 null-__Array__Int__String__))) ; Cond: r0 != null 
(define-const var813 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2987))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var3340=org.hibernate.loader.custom.ColumnCollectionAliases, var1967=r2, var2987=r0, var813=$r1}
; {org.hibernate.loader.custom.ColumnCollectionAliases=var3340, r2=var1967, r0=var2987, $r1=var813}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r2 := @this: org.hibernate.loader.custom.ColumnCollectionAliases;	r0 := @parameter0: java.lang.String[];	if r0 != null goto $r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0);	$r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0);	return $r1
;block_num 2