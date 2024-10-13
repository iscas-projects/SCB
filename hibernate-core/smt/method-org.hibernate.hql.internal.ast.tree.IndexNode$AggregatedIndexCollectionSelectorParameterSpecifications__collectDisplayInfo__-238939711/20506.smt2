(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2035 0)
(declare-sort var973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun paramSpecs/-822672957 (var2035) var973)
(declare-fun var973_iterator/-912451715 (var973) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2035 var2035)
(declare-const var9 var2035) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications 
(assert (not (= var9 null-var2035)))
(define-const var2789 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2789)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2789!1 String)
(assert (= var2789!1 ""))
(define-const var59 var973 (paramSpecs/-822672957 var9)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications: java.util.List paramSpecs> 
(define-const var350 Iterator (var973_iterator/-912451715 var59)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1309 Bool (Iterator_hasNext/-1669924200 var350)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1309 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var95 String (toString/-2075883882 var2789!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), paramSpecs/-822672957=([org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications], java.util.List), var973_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2035=org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications, var9=r1, var2789=$r0, var973=java.util.List, var59=$r2, var350=r3, var1309=$z0, var95=$r4}
; {org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications=var2035, r1=var9, $r0=var2789, java.util.List=var973, $r2=var59, r3=var350, $z0=var1309, $r4=var95}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications: java.util.List paramSpecs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3