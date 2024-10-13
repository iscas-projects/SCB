(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun collectDisplayInfo/-238939711 (var175) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var175 var175)
(declare-const var1996 var175) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications 
(assert (not (= var1996 null-var175)))
(define-const var1365 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1365)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1365!1 String)
(assert (= var1365!1 ""))
(assert true)
(define-const var1916 String (append/672562846 var1365!1 "index-selector [")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("index-selector [") 
(declare-const var1365!2 String)
(assert (= var1365!2 (str.++ var1365!1 "index-selector [")))
(assert true)
(define-const var1761 String (collectDisplayInfo/-238939711 var1996)) ; Statement: $r2 = specialinvoke r1.<org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications: java.lang.String collectDisplayInfo()>() 
(assert true)
(define-const var1575 String (append/672562846 var1916 var1761)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1916!1 String)
(assert (= var1916!1 (str.++ var1916 var1761)))
(assert true)
(define-const var2134 String (append/672562846 var1575 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1575!1 String)
(assert (= var1575!1 (str.++ var1575 "]")))
(assert true)
(define-const var3184 String (toString/-2075883882 var2134)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), collectDisplayInfo/-238939711=([org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var175=org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications, var1996=r1, var1365=$r0, var1916=$r3, var1761=$r2, var1575=$r4, var2134=$r5, var3184=$r6}
; {org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications=var175, r1=var1996, $r0=var1365, $r3=var1916, $r2=var1761, $r4=var1575, $r5=var2134, $r6=var3184}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("index-selector [");	$r2 = specialinvoke r1.<org.hibernate.hql.internal.ast.tree.IndexNode$AggregatedIndexCollectionSelectorParameterSpecifications: java.lang.String collectDisplayInfo()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1