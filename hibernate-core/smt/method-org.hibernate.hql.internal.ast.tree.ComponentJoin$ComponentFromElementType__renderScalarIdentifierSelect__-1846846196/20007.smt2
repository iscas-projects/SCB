(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1756 0)
(declare-sort var1808 0)
(declare-sort var515 0)
(declare-sort var1120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-425909968 (var1756) var1808)
(declare-fun getBasePropertyMapping/292274937 (var1808) var515)
(declare-fun getTableAlias/-89139576 (var1120) String)
(declare-fun cast-from-var1808-to-var1120 (var1808) var1120)
(declare-fun getComponentProperty/-1817779309 (var1808) String)
(declare-fun var515_toColumns/701355653 (var515 String String) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1756 var1756)
(declare-const null-Int Int)
(declare-const var3014 var1756) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType 
(assert (not (= var3014 null-var1756)))
(declare-const var202 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var202 null-Int)))
(define-const var1735 var1808 (this$0/-425909968 var3014)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType: org.hibernate.hql.internal.ast.tree.ComponentJoin this$0> 
(assert true)
(define-const var1627 var515 (getBasePropertyMapping/292274937 var1735)) ; Statement: $r6 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.tree.ComponentJoin: org.hibernate.persister.entity.PropertyMapping getBasePropertyMapping()>() 
(define-const var1375 var1808 (this$0/-425909968 var3014)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType: org.hibernate.hql.internal.ast.tree.ComponentJoin this$0> 
(assert true)
(define-const var3503 String (getTableAlias/-89139576 (cast-from-var1808-to-var1120 var1375))) ; Statement: $r5 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getTableAlias()>() 
(define-const var3631 var1808 (this$0/-425909968 var3014)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType: org.hibernate.hql.internal.ast.tree.ComponentJoin this$0> 
(assert true)
(define-const var1406 String (getComponentProperty/-1817779309 var3631)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getComponentProperty()>() 
(define-const var903 (Array Int String) (var515_toColumns/701355653 var1627 var3503 var1406)) ; Statement: r7 = interfaceinvoke $r6.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r5, $r4) 
(define-const var689 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var689)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var689!1 String)
(assert (= var689!1 ""))
(define-const var1677 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3322 Int (getLength-Arr-String-1 var903)) ; Statement: $i0 = lengthof r7 
 ; Statement: if i2 >= $i0 goto $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1677 var3322)) ; Cond: i2 >= $i0 
(assert true)
(define-const var364 String (toString/-2075883882 var689!1)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-425909968=([org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType], org.hibernate.hql.internal.ast.tree.ComponentJoin), getBasePropertyMapping/292274937=([org.hibernate.hql.internal.ast.tree.ComponentJoin], org.hibernate.persister.entity.PropertyMapping), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), cast-from-var1808-to-var1120=([org.hibernate.hql.internal.ast.tree.ComponentJoin], org.hibernate.hql.internal.ast.tree.FromElement), getComponentProperty/-1817779309=([org.hibernate.hql.internal.ast.tree.ComponentJoin], java.lang.String), var515_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1756=org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType, var3014=r0, var202=i1, var1808=org.hibernate.hql.internal.ast.tree.ComponentJoin, var1735=$r1, var515=org.hibernate.persister.entity.PropertyMapping, var1627=$r6, var1375=$r2, var1120=org.hibernate.hql.internal.ast.tree.FromElement, var3503=$r5, var3631=$r3, var1406=$r4, var903=r7, var689=$r8, var1677=i2, var3322=$i0, var364=$r9}
; {org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType=var1756, r0=var3014, i1=var202, org.hibernate.hql.internal.ast.tree.ComponentJoin=var1808, $r1=var1735, org.hibernate.persister.entity.PropertyMapping=var515, $r6=var1627, $r2=var1375, org.hibernate.hql.internal.ast.tree.FromElement=var1120, $r5=var3503, $r3=var3631, $r4=var1406, r7=var903, $r8=var689, i2=var1677, $i0=var3322, $r9=var364}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType;	i1 := @parameter0: int;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType: org.hibernate.hql.internal.ast.tree.ComponentJoin this$0>;	$r6 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.tree.ComponentJoin: org.hibernate.persister.entity.PropertyMapping getBasePropertyMapping()>();	$r2 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType: org.hibernate.hql.internal.ast.tree.ComponentJoin this$0>;	$r5 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getTableAlias()>();	$r3 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType: org.hibernate.hql.internal.ast.tree.ComponentJoin this$0>;	$r4 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getComponentProperty()>();	r7 = interfaceinvoke $r6.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r5, $r4);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$i0 = lengthof r7;	if i2 >= $i0 goto $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3