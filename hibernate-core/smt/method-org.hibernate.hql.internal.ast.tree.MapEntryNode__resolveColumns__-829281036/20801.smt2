(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1641 0)
(declare-sort var2724 0)
(declare-sort var3102 0)
(declare-sort var2934 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3102-init () var3102)
(declare-fun <init>/-325640736 (var3102) void)
(declare-fun determineKeySelectExpressions/-219645735 (var1641 var2724 var2934) void)
(declare-fun cast-from-var3102-to-var2934 (var3102) var2934)
(declare-fun determineValueSelectExpressions/281925831 (var1641 var2724 var2934) void)
(declare-fun var2934_size/-959786421 (var2934) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun arr-String-init () (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setText/-1490730879 (var1641 String) void)
(declare-fun setResolved/761969094 (var985) void)
(declare-fun cast-from-var1641-to-var985 (var1641) var985)
(declare-const null-var1641 var1641)
(declare-const null-var2724 var2724)
(declare-const var524 var1641) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.MapEntryNode 
(assert (not (= var524 null-var1641)))
(declare-const var1315 var2724) ; Statement: r2 := @parameter0: org.hibernate.persister.collection.QueryableCollection 
(assert (not (= var1315 null-var2724)))
(define-const var2240 var3102 var3102-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2240)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var2240!1 var3102)
(assert true)
;(assert (determineKeySelectExpressions/-219645735 var524 var1315 (cast-from-var3102-to-var2934 var2240!1))) ; Statement: specialinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: void determineKeySelectExpressions(org.hibernate.persister.collection.QueryableCollection,java.util.List)>(r2, $r0) 

(declare-const var524!1 var1641)
(declare-const var1315!1 var2724)
(declare-const var2240!2 var3102)
(assert true)
;(assert (determineValueSelectExpressions/281925831 var524!1 var1315!1 (cast-from-var3102-to-var2934 var2240!2))) ; Statement: specialinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: void determineValueSelectExpressions(org.hibernate.persister.collection.QueryableCollection,java.util.List)>(r2, $r0) 

(declare-const var524!2 var1641)
(declare-const var1315!2 var2724)
(declare-const var2240!3 var3102)
(define-const var1310 Int (var2934_size/-959786421 (cast-from-var3102-to-var2934 var2240!3))) ; Statement: i0 = interfaceinvoke $r0.<java.util.List: int size()>() 
(define-const var3566 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var538 Int (* var1310 12)) ; Statement: $i1 = i0 * 12 
(assert true)
;(assert (<init>/543593434 var3566 var538)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3566!1 String)
(declare-const var538!1 Int)
(define-const var1378 (Array Int String) arr-String-init) ; Statement: r4 = newarray (java.lang.String)[i0] 
(define-const var2912 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2912 var1310)) ; Cond: i2 >= i0 
(assert true)
(define-const var1391 String (toString/-2075883882 var3566!1)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setText/-1490730879 var524!2 var1391)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: void setText(java.lang.String)>($r5) 

(declare-const var524!3 var1641)
(declare-const var1391!1 String)
(assert true)
;(assert (setResolved/761969094 (cast-from-var1641-to-var985 var524!3))) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: void setResolved()>() 

(declare-const var524!4 var1641)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3102-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), determineKeySelectExpressions/-219645735=([org.hibernate.hql.internal.ast.tree.MapEntryNode, org.hibernate.persister.collection.QueryableCollection, java.util.List], void), cast-from-var3102-to-var2934=([java.util.ArrayList], java.util.List), determineValueSelectExpressions/281925831=([org.hibernate.hql.internal.ast.tree.MapEntryNode, org.hibernate.persister.collection.QueryableCollection, java.util.List], void), var2934_size/-959786421=([java.util.List], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), arr-String-init=([], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setText/-1490730879=([org.hibernate.hql.internal.ast.tree.MapEntryNode, java.lang.String], void), setResolved/761969094=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], void), cast-from-var1641-to-var985=([org.hibernate.hql.internal.ast.tree.MapEntryNode], org.hibernate.hql.internal.ast.tree.FromReferenceNode)}
; {var1641=org.hibernate.hql.internal.ast.tree.MapEntryNode, var524=r1, var2724=org.hibernate.persister.collection.QueryableCollection, var1315=r2, var3102=java.util.ArrayList, var2240=$r0, var2934=java.util.List, var1310=i0, var3566=$r3, var538=$i1, var1378=r4, var2912=i2, var1391=$r5, var985=org.hibernate.hql.internal.ast.tree.FromReferenceNode}
; {org.hibernate.hql.internal.ast.tree.MapEntryNode=var1641, r1=var524, org.hibernate.persister.collection.QueryableCollection=var2724, r2=var1315, java.util.ArrayList=var3102, $r0=var2240, java.util.List=var2934, i0=var1310, $r3=var3566, $i1=var538, r4=var1378, i2=var2912, $r5=var1391, org.hibernate.hql.internal.ast.tree.FromReferenceNode=var985}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.MapEntryNode;	r2 := @parameter0: org.hibernate.persister.collection.QueryableCollection;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	specialinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: void determineKeySelectExpressions(org.hibernate.persister.collection.QueryableCollection,java.util.List)>(r2, $r0);	specialinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: void determineValueSelectExpressions(org.hibernate.persister.collection.QueryableCollection,java.util.List)>(r2, $r0);	i0 = interfaceinvoke $r0.<java.util.List: int size()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 * 12;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	r4 = newarray (java.lang.String)[i0];	i2 = 0;	if i2 >= i0 goto $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: void setText(java.lang.String)>($r5);	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: void setResolved()>();	return r4
;block_num 3