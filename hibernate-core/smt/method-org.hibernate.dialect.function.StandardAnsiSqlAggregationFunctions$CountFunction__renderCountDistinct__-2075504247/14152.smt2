(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1882 0)
(declare-sort var1777 0)
(declare-sort var1861 0)
(declare-sort var2281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun requiresParensForTupleDistinctCounts/749300557 (var1861) Bool)
(declare-fun var1777_iterator/-912451715 (var1777) Iterator)
(declare-fun Iterator_next/-1124697587 (Iterator) var2281)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1882 var1882)
(declare-const null-var1777 var1777)
(declare-const null-var1861 var1861)
(declare-const var100 var1882) ; Statement: r8 := @this: org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$CountFunction 
(assert (not (= var100 null-var1882)))
(declare-const var233 var1777) ; Statement: r2 := @parameter0: java.util.List 
(assert (not (= var233 null-var1777)))
(declare-const var371 var1861) ; Statement: r1 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var371 null-var1861)))
(define-const var2291 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2291)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2291!1 String)
(assert (= var2291!1 ""))
(assert true)
;(assert (append/672562846 var2291!1 "count(distinct ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("count(distinct ") 
(declare-const var2291!2 String)
(assert (= var2291!2 (str.++ var2291!1 "count(distinct ")))
(assert true)
(define-const var2841 Bool (requiresParensForTupleDistinctCounts/749300557 var371)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean requiresParensForTupleDistinctCounts()>() 
 ; Statement: if $z0 == 0 goto r9 = "" 
(assert (= (ite var2841 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3053 String "") ; Statement: r9 = "" 
(define-const var2503 Iterator (var1777_iterator/-912451715 var233)) ; Statement: $r7 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>() 
;(assert (Iterator_next/-1124697587 var2503)) ; Statement: interfaceinvoke $r7.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2503!1 Iterator)
(assert true) ; Non Conditional
(define-const var301 Bool (Iterator_hasNext/-1669924200 var2503!1)) ; Statement: $z2 = interfaceinvoke $r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean requiresParensForTupleDistinctCounts()>() 
(assert (= (ite var301 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2955 Bool (requiresParensForTupleDistinctCounts/749300557 var371)) ; Statement: $z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean requiresParensForTupleDistinctCounts()>() 
 ; Statement: if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var2955 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1515 String (append/672562846 var2291!2 ")")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2291!3 String)
(assert (= var2291!3 (str.++ var2291!2 ")")))
(assert true)
(define-const var2626 String (toString/-2075883882 var1515)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), requiresParensForTupleDistinctCounts/749300557=([org.hibernate.dialect.Dialect], boolean), var1777_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1882=org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$CountFunction, var100=r8, var1777=java.util.List, var233=r2, var1861=org.hibernate.dialect.Dialect, var371=r1, var2291=$r0, var2841=$z0, var3053=r9, var2503=$r7, var301=$z2, var2955=$z1, var1515=$r3, var2626=$r4, var2281=java.lang.Object}
; {org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$CountFunction=var1882, r8=var100, java.util.List=var1777, r2=var233, org.hibernate.dialect.Dialect=var1861, r1=var371, $r0=var2291, $z0=var2841, r9=var3053, $r7=var2503, $z2=var301, $z1=var2955, $r3=var1515, $r4=var2626, java.lang.Object=var2281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$CountFunction;	r2 := @parameter0: java.util.List;	r1 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("count(distinct ");	$z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean requiresParensForTupleDistinctCounts()>();	if $z0 == 0 goto r9 = "";	r9 = "";	$r7 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>();	interfaceinvoke $r7.<java.util.Iterator: java.lang.Object next()>();	$z2 = interfaceinvoke $r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean requiresParensForTupleDistinctCounts()>();	$z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean requiresParensForTupleDistinctCounts()>();	if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5