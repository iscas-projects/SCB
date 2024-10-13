(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3284 0)
(declare-sort var347 0)
(declare-sort var823 0)
(declare-sort var3126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var823-init () (Array Int var823))
(declare-fun cast-from-String-to-var823 (String) var823)
(declare-fun String_format/1339386452 (String (Array Int var823)) String)
(declare-const null-var3284 var3284)
(declare-const null-String String)
(declare-const null-var823 var823)
(declare-const null-var3126 var3126)
(declare-const null-__Array__Int__var823__ (Array Int var823))
(declare-const var1272 var3284) ; Statement: r4 := @this: org.hibernate.hql.internal.ast.util.ASTPrinter 
(assert (not (= var1272 null-var3284)))
(declare-const var3346 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3346 null-String)))
(declare-const var2735 var823) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2735 null-var823)))
(declare-const var1129 var3126) ; Statement: r5 := @parameter2: antlr.collections.AST 
(assert (not (= var1129 null-var3126)))
(define-const var3729 (Array Int var823) arr-var823-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(declare-const var3729!1 (Array Int var823))
(assert (not (= var3729!1 null-__Array__Int__var823__)))
(assert (= (select var3729!1 0) (cast-from-String-to-var823 var3346))) ; Statement: $r0[0] = r1 
(declare-const var3729!2 (Array Int var823))
(assert (not (= var3729!2 null-__Array__Int__var823__)))
(assert (= (select var3729!2 1) var2735)) ; Statement: $r0[1] = r2 
(define-const var1718 String (String_format/1339386452 "%s: %s" var3729!2)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s: %s", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var823-init=([], java.lang.Object[]), cast-from-String-to-var823=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3284=org.hibernate.hql.internal.ast.util.ASTPrinter, var1272=r4, var3346=r1, var347=null_type, var823=java.lang.Object, var2735=r2, var3126=antlr.collections.AST, var1129=r5, var3729=$r0, var1718=$r3}
; {org.hibernate.hql.internal.ast.util.ASTPrinter=var3284, r4=var1272, r1=var3346, null_type=var347, java.lang.Object=var823, r2=var2735, antlr.collections.AST=var3126, r5=var1129, $r0=var3729, $r3=var1718}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r4 := @this: org.hibernate.hql.internal.ast.util.ASTPrinter;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	r5 := @parameter2: antlr.collections.AST;	$r0 = newarray (java.lang.Object)[2];	$r0[0] = r1;	$r0[1] = r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s: %s", $r0);	return $r3
;block_num 1