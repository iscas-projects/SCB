(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3933 0)
(declare-sort var2315 0)
(declare-sort var805 0)
(declare-sort var1014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWalker/1054712749 (var805) var2315)
(declare-fun cast-from-var3933-to-var805 (var3933) var805)
(declare-fun getSelectClause/-471270666 (var2315) var1014)
(declare-fun getColumnNames/-910966533 (var1014) (Array Int (Array Int String)))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var3933 var3933)
(declare-const null-Int Int)
(declare-const var493 var3933) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ResultVariableRefNode 
(assert (not (= var493 null-var3933)))
(declare-const var1358 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1358 null-Int)))
(assert true)
(define-const var1917 var2315 (getWalker/1054712749 (cast-from-var3933-to-var805 var493))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ResultVariableRefNode: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>() 
(assert true)
(define-const var2567 var1014 (getSelectClause/-471270666 var1917)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.tree.SelectClause getSelectClause()>() 
(assert true)
(define-const var1330 (Array Int (Array Int String)) (getColumnNames/-910966533 var2567)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.SelectClause: java.lang.String[][] getColumnNames()>() 
(define-const var2963 (Array Int String) (select var1330 var1358)) ; Statement: $r4 = $r3[i0] 
(define-const var3647 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2963))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getWalker/1054712749=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.HqlSqlWalker), cast-from-var3933-to-var805=([org.hibernate.hql.internal.ast.tree.ResultVariableRefNode], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), getSelectClause/-471270666=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.tree.SelectClause), getColumnNames/-910966533=([org.hibernate.hql.internal.ast.tree.SelectClause], java.lang.String[][]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var3933=org.hibernate.hql.internal.ast.tree.ResultVariableRefNode, var493=r0, var1358=i0, var2315=org.hibernate.hql.internal.ast.HqlSqlWalker, var805=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var1917=$r1, var1014=org.hibernate.hql.internal.ast.tree.SelectClause, var2567=$r2, var1330=$r3, var2963=$r4, var3647=$r5}
; {org.hibernate.hql.internal.ast.tree.ResultVariableRefNode=var3933, r0=var493, i0=var1358, org.hibernate.hql.internal.ast.HqlSqlWalker=var2315, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var805, $r1=var1917, org.hibernate.hql.internal.ast.tree.SelectClause=var1014, $r2=var2567, $r3=var1330, $r4=var2963, $r5=var3647}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ResultVariableRefNode;	i0 := @parameter0: int;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ResultVariableRefNode: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>();	$r2 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.tree.SelectClause getSelectClause()>();	$r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.SelectClause: java.lang.String[][] getColumnNames()>();	$r4 = $r3[i0];	$r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r4);	return $r5
;block_num 1