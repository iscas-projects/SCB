(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var41 0)
(declare-sort var1496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun setText/981743401 (var1496 String) void)
(declare-fun cast-from-var41-to-var1496 (var41) var1496)
(declare-const null-var41 var41)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1278 var41) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.IdentNode 
(assert (not (= var1278 null-var41)))
(declare-const var2281 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2281 null-__Array__Int__String__)))
(define-const var3578 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2281))) ; Statement: r7 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0) 
(define-const var2752 Int (getLength-Arr-String-1 var2281)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 1 goto virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IdentNode: void setText(java.lang.String)>(r7) 
(assert (<= var2752 1)) ; Cond: $i0 <= 1 
(assert true)
;(assert (setText/981743401 (cast-from-var41-to-var1496 var1278) var3578)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IdentNode: void setText(java.lang.String)>(r7) 

(declare-const var1278!1 var41)
(declare-const var3578!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), getLength-Arr-String-1=([java.lang.String[]], int), setText/981743401=([org.hibernate.hql.internal.ast.tree.SqlNode, java.lang.String], void), cast-from-var41-to-var1496=([org.hibernate.hql.internal.ast.tree.IdentNode], org.hibernate.hql.internal.ast.tree.SqlNode)}
; {var41=org.hibernate.hql.internal.ast.tree.IdentNode, var1278=r1, var2281=r0, var3578=r7, var2752=$i0, var1496=org.hibernate.hql.internal.ast.tree.SqlNode}
; {org.hibernate.hql.internal.ast.tree.IdentNode=var41, r1=var1278, r0=var2281, r7=var3578, $i0=var2752, org.hibernate.hql.internal.ast.tree.SqlNode=var1496}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.IdentNode;	r0 := @parameter0: java.lang.String[];	r7 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0);	$i0 = lengthof r0;	if $i0 <= 1 goto virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IdentNode: void setText(java.lang.String)>(r7);	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IdentNode: void setText(java.lang.String)>(r7);	return
;block_num 2