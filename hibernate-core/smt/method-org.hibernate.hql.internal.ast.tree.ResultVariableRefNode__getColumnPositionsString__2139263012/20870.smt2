(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3317 0)
(declare-sort var2708 0)
(declare-sort var3164 0)
(declare-sort var2182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWalker/1054712749 (var3164) var2708)
(declare-fun cast-from-var3317-to-var3164 (var3317) var3164)
(declare-fun getSelectClause/-471270666 (var2708) var2182)
(declare-fun getColumnNamesStartPosition/-1120052247 (var2182 Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getColumnNames/-910966533 (var2182) (Array Int (Array Int String)))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3317 var3317)
(declare-const null-Int Int)
(declare-const var2459 var3317) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ResultVariableRefNode 
(assert (not (= var2459 null-var3317)))
(declare-const var3473 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3473 null-Int)))
(assert true)
(define-const var1762 var2708 (getWalker/1054712749 (cast-from-var3317-to-var3164 var2459))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ResultVariableRefNode: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>() 
(assert true)
(define-const var603 var2182 (getSelectClause/-471270666 var1762)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.tree.SelectClause getSelectClause()>() 
(assert true)
(define-const var995 Int (getColumnNamesStartPosition/-1120052247 var603 var3473)) ; Statement: i1 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.SelectClause: int getColumnNamesStartPosition(int)>(i0) 
(define-const var2142 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2142)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2142!1 String)
(assert (= var2142!1 ""))
(assert true)
(define-const var146 var2708 (getWalker/1054712749 (cast-from-var3317-to-var3164 var2459))) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ResultVariableRefNode: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>() 
(assert true)
(define-const var1444 var2182 (getSelectClause/-471270666 var146)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.tree.SelectClause getSelectClause()>() 
(assert true)
(define-const var271 (Array Int (Array Int String)) (getColumnNames/-910966533 var1444)) ; Statement: $r6 = virtualinvoke $r5.<org.hibernate.hql.internal.ast.tree.SelectClause: java.lang.String[][] getColumnNames()>() 
(define-const var1023 (Array Int String) (select var271 var3473)) ; Statement: $r7 = $r6[i0] 
(define-const var1149 Int (getLength-Arr-String-1 var1023)) ; Statement: i2 = lengthof $r7 
(define-const var3659 Int var995) ; Statement: i4 = i1 
(assert true) ; Non Conditional
(define-const var2633 Int (+ var995 var1149)) ; Statement: $i3 = i1 + i2 
 ; Statement: if i4 >= $i3 goto $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3659 var2633)) ; Cond: i4 >= $i3 
(assert true)
(define-const var1874 String (toString/-2075883882 var2142!1)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getWalker/1054712749=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.HqlSqlWalker), cast-from-var3317-to-var3164=([org.hibernate.hql.internal.ast.tree.ResultVariableRefNode], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), getSelectClause/-471270666=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.tree.SelectClause), getColumnNamesStartPosition/-1120052247=([org.hibernate.hql.internal.ast.tree.SelectClause, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getColumnNames/-910966533=([org.hibernate.hql.internal.ast.tree.SelectClause], java.lang.String[][]), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3317=org.hibernate.hql.internal.ast.tree.ResultVariableRefNode, var2459=r0, var3473=i0, var2708=org.hibernate.hql.internal.ast.HqlSqlWalker, var3164=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var1762=$r1, var2182=org.hibernate.hql.internal.ast.tree.SelectClause, var603=$r2, var995=i1, var2142=$r3, var146=$r4, var1444=$r5, var271=$r6, var1023=$r7, var1149=i2, var3659=i4, var2633=$i3, var1874=$r8}
; {org.hibernate.hql.internal.ast.tree.ResultVariableRefNode=var3317, r0=var2459, i0=var3473, org.hibernate.hql.internal.ast.HqlSqlWalker=var2708, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var3164, $r1=var1762, org.hibernate.hql.internal.ast.tree.SelectClause=var2182, $r2=var603, i1=var995, $r3=var2142, $r4=var146, $r5=var1444, $r6=var271, $r7=var1023, i2=var1149, i4=var3659, $i3=var2633, $r8=var1874}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ResultVariableRefNode;	i0 := @parameter0: int;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ResultVariableRefNode: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>();	$r2 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.tree.SelectClause getSelectClause()>();	i1 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.SelectClause: int getColumnNamesStartPosition(int)>(i0);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ResultVariableRefNode: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>();	$r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.tree.SelectClause getSelectClause()>();	$r6 = virtualinvoke $r5.<org.hibernate.hql.internal.ast.tree.SelectClause: java.lang.String[][] getColumnNames()>();	$r7 = $r6[i0];	i2 = lengthof $r7;	i4 = i1;	$i3 = i1 + i2;	if i4 >= $i3 goto $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3