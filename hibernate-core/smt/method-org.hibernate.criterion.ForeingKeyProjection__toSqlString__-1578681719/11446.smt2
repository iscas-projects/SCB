(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var447 0)
(declare-sort var2286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun associationPropertyName/387021883 (var851) String)
(declare-fun var2286_getForeignKeyColumns/1282874126 (var2286 var447 String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var851 var851)
(declare-const null-var447 var447)
(declare-const null-Int Int)
(declare-const null-var2286 var2286)
(declare-const var1892 var851) ; Statement: r3 := @this: org.hibernate.criterion.ForeingKeyProjection 
(assert (not (= var1892 null-var851)))
(declare-const var1934 var447) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var1934 null-var447)))
(declare-const var765 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var765 null-Int)))
(declare-const var3890 var2286) ; Statement: r1 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var3890 null-var2286)))
(define-const var386 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var386)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var386!1 String)
(assert (= var386!1 ""))
(define-const var3366 String (associationPropertyName/387021883 var1892)) ; Statement: $r4 = r3.<org.hibernate.criterion.ForeingKeyProjection: java.lang.String associationPropertyName> 
(define-const var2212 (Array Int String) (var2286_getForeignKeyColumns/1282874126 var3890 var1934 var3366)) ; Statement: r5 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getForeignKeyColumns(org.hibernate.Criteria,java.lang.String)>(r2, $r4) 
(define-const var1765 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var1878 Int (getLength-Arr-String-1 var2212)) ; Statement: $i0 = lengthof r5 
 ; Statement: if i5 >= $i0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1765 var1878)) ; Cond: i5 >= $i0 
(assert true)
(define-const var485 String (toString/-2075883882 var386!1)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), associationPropertyName/387021883=([org.hibernate.criterion.ForeingKeyProjection], java.lang.String), var2286_getForeignKeyColumns/1282874126=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var851=org.hibernate.criterion.ForeingKeyProjection, var1892=r3, var447=org.hibernate.Criteria, var1934=r2, var765=i1, var2286=org.hibernate.criterion.CriteriaQuery, var3890=r1, var386=$r0, var3366=$r4, var2212=r5, var1765=i5, var1878=$i0, var485=$r6}
; {org.hibernate.criterion.ForeingKeyProjection=var851, r3=var1892, org.hibernate.Criteria=var447, r2=var1934, i1=var765, org.hibernate.criterion.CriteriaQuery=var2286, r1=var3890, $r0=var386, $r4=var3366, r5=var2212, i5=var1765, $i0=var1878, $r6=var485}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.criterion.ForeingKeyProjection;	r2 := @parameter0: org.hibernate.Criteria;	i1 := @parameter1: int;	r1 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = r3.<org.hibernate.criterion.ForeingKeyProjection: java.lang.String associationPropertyName>;	r5 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getForeignKeyColumns(org.hibernate.Criteria,java.lang.String)>(r2, $r4);	i5 = 0;	$i0 = lengthof r5;	if i5 >= $i0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3