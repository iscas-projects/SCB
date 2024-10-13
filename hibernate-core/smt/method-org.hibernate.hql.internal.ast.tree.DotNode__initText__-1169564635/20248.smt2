(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var593 0)
(declare-sort var2491 0)
(declare-sort var251 0)
(declare-sort var2686 0)
(declare-sort var1615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getColumns/1579227470 (var593) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getWalker/1054712749 (var251) var2491)
(declare-fun cast-from-var593-to-var251 (var593) var251)
(declare-fun isInCountDistinct/135327126 (var2686) Bool)
(declare-fun cast-from-var2491-to-var2686 (var2491) var2686)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun setText/981743401 (var1615 String) void)
(declare-fun cast-from-var593-to-var1615 (var593) var1615)
(declare-const null-var593 var593)
(declare-const var3043 var593) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var3043 null-var593)))
(assert true)
(define-const var3727 (Array Int String) (getColumns/1579227470 var3043)) ; Statement: r1 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String[] getColumns()>() 
(define-const var3892 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var3727))) ; Statement: r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r1) 
(assert true)
(define-const var1823 var2491 (getWalker/1054712749 (cast-from-var593-to-var251 var3043))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>() 
(assert true)
(define-const var2443 Bool (isInCountDistinct/135327126 (cast-from-var2491-to-var2686 var1823))) ; Statement: $z0 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.HqlSqlWalker: boolean isInCountDistinct()>() 
 ; Statement: if $z0 == 0 goto $z3 = 0 
(assert (= (ite var2443 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1344 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var2744 Int (getLength-Arr-String-1 var3727)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 <= 1 goto virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: void setText(java.lang.String)>(r9) 
(assert (<= var2744 1)) ; Cond: $i1 <= 1 
(assert true)
;(assert (setText/981743401 (cast-from-var593-to-var1615 var3043) var3892)) ; Statement: virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: void setText(java.lang.String)>(r9) 

(declare-const var3043!1 var593)
(declare-const var3892!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getColumns/1579227470=([org.hibernate.hql.internal.ast.tree.DotNode], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), getWalker/1054712749=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.HqlSqlWalker), cast-from-var593-to-var251=([org.hibernate.hql.internal.ast.tree.DotNode], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), isInCountDistinct/135327126=([org.hibernate.hql.internal.antlr.HqlSqlBaseWalker], boolean), cast-from-var2491-to-var2686=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.antlr.HqlSqlBaseWalker), getLength-Arr-String-1=([java.lang.String[]], int), setText/981743401=([org.hibernate.hql.internal.ast.tree.SqlNode, java.lang.String], void), cast-from-var593-to-var1615=([org.hibernate.hql.internal.ast.tree.DotNode], org.hibernate.hql.internal.ast.tree.SqlNode)}
; {var593=org.hibernate.hql.internal.ast.tree.DotNode, var3043=r0, var3727=r1, var3892=r9, var2491=org.hibernate.hql.internal.ast.HqlSqlWalker, var251=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var1823=$r2, var2686=org.hibernate.hql.internal.antlr.HqlSqlBaseWalker, var2443=$z0, var1344=$z3, var2744=$i1, var1615=org.hibernate.hql.internal.ast.tree.SqlNode}
; {org.hibernate.hql.internal.ast.tree.DotNode=var593, r0=var3043, r1=var3727, r9=var3892, org.hibernate.hql.internal.ast.HqlSqlWalker=var2491, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var251, $r2=var1823, org.hibernate.hql.internal.antlr.HqlSqlBaseWalker=var2686, $z0=var2443, $z3=var1344, $i1=var2744, org.hibernate.hql.internal.ast.tree.SqlNode=var1615}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.DotNode;	r1 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String[] getColumns()>();	r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r1);	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>();	$z0 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.HqlSqlWalker: boolean isInCountDistinct()>();	if $z0 == 0 goto $z3 = 0;	$z3 = 0;	$i1 = lengthof r1;	if $i1 <= 1 goto virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: void setText(java.lang.String)>(r9);	virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: void setText(java.lang.String)>(r9);	return
;block_num 4