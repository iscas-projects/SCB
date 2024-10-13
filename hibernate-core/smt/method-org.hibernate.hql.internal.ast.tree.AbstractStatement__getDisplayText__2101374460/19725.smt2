(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2781 0)
(declare-sort var1730 0)
(declare-sort var1079 0)
(declare-sort var761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getWalker/1054712749 (var1079) var1730)
(declare-fun cast-from-var2781-to-var1079 (var2781) var1079)
(declare-fun getQuerySpaces/895568105 (var1730) var761)
(declare-fun var761_size/-649653377 (var761) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2781 var2781)
(declare-const var3457 var2781) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.AbstractStatement 
(assert (not (= var3457 null-var2781)))
(define-const var1531 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1531)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1531!1 String)
(assert (= var1531!1 ""))
(assert true)
(define-const var1399 var1730 (getWalker/1054712749 (cast-from-var2781-to-var1079 var3457))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractStatement: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>() 
(assert true)
(define-const var2185 var761 (getQuerySpaces/895568105 var1399)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Set getQuerySpaces()>() 
(define-const var515 Int (var761_size/-649653377 var2185)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.Set: int size()>() 
 ; Statement: if $i0 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var515 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var2172 String (toString/-2075883882 var1531!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getWalker/1054712749=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.HqlSqlWalker), cast-from-var2781-to-var1079=([org.hibernate.hql.internal.ast.tree.AbstractStatement], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), getQuerySpaces/895568105=([org.hibernate.hql.internal.ast.HqlSqlWalker], java.util.Set), var761_size/-649653377=([java.util.Set], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2781=org.hibernate.hql.internal.ast.tree.AbstractStatement, var3457=r1, var1531=$r0, var1730=org.hibernate.hql.internal.ast.HqlSqlWalker, var1079=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var1399=$r2, var761=java.util.Set, var2185=$r3, var515=$i0, var2172=$r4}
; {org.hibernate.hql.internal.ast.tree.AbstractStatement=var2781, r1=var3457, $r0=var1531, org.hibernate.hql.internal.ast.HqlSqlWalker=var1730, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var1079, $r2=var1399, java.util.Set=var761, $r3=var2185, $i0=var515, $r4=var2172}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.AbstractStatement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractStatement: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>();	$r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Set getQuerySpaces()>();	$i0 = interfaceinvoke $r3.<java.util.Set: int size()>();	if $i0 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2