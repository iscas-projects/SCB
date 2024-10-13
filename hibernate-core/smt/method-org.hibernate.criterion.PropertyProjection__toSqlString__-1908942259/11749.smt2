(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3435 0)
(declare-sort var1842 0)
(declare-sort var1593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/1223509239 (var3435) String)
(declare-fun var1593_getColumns/-1607850951 (var1593 String var1842) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3435 var3435)
(declare-const null-var1842 var1842)
(declare-const null-Int Int)
(declare-const null-var1593 var1593)
(declare-const var3249 var3435) ; Statement: r2 := @this: org.hibernate.criterion.PropertyProjection 
(assert (not (= var3249 null-var3435)))
(declare-const var3656 var1842) ; Statement: r3 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3656 null-var1842)))
(declare-const var1177 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1177 null-Int)))
(declare-const var673 var1593) ; Statement: r1 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var673 null-var1593)))
(define-const var1659 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(define-const var2164 String (propertyName/1223509239 var3249)) ; Statement: $r4 = r2.<org.hibernate.criterion.PropertyProjection: java.lang.String propertyName> 
(define-const var2362 (Array Int String) (var1593_getColumns/-1607850951 var673 var2164 var3656)) ; Statement: r5 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getColumns(java.lang.String,org.hibernate.Criteria)>($r4, r3) 
(define-const var1924 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var573 Int (getLength-Arr-String-1 var2362)) ; Statement: $i0 = lengthof r5 
 ; Statement: if i5 >= $i0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1924 var573)) ; Cond: i5 >= $i0 
(assert true)
(define-const var3841 String (toString/-2075883882 var1659!1)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/1223509239=([org.hibernate.criterion.PropertyProjection], java.lang.String), var1593_getColumns/-1607850951=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3435=org.hibernate.criterion.PropertyProjection, var3249=r2, var1842=org.hibernate.Criteria, var3656=r3, var1177=i1, var1593=org.hibernate.criterion.CriteriaQuery, var673=r1, var1659=$r0, var2164=$r4, var2362=r5, var1924=i5, var573=$i0, var3841=$r6}
; {org.hibernate.criterion.PropertyProjection=var3435, r2=var3249, org.hibernate.Criteria=var1842, r3=var3656, i1=var1177, org.hibernate.criterion.CriteriaQuery=var1593, r1=var673, $r0=var1659, $r4=var2164, r5=var2362, i5=var1924, $i0=var573, $r6=var3841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.criterion.PropertyProjection;	r3 := @parameter0: org.hibernate.Criteria;	i1 := @parameter1: int;	r1 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = r2.<org.hibernate.criterion.PropertyProjection: java.lang.String propertyName>;	r5 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getColumns(java.lang.String,org.hibernate.Criteria)>($r4, r3);	i5 = 0;	$i0 = lengthof r5;	if i5 >= $i0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3