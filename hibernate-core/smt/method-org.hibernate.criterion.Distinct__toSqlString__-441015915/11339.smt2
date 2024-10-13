(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2218 0)
(declare-sort var372 0)
(declare-sort var2952 0)
(declare-sort var2662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun wrappedProjection/1214314927 (var2218) var2662)
(declare-fun var2662_toSqlString/430054498 (var2662 var372 Int var2952) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2218 var2218)
(declare-const null-var372 var372)
(declare-const null-Int Int)
(declare-const null-var2952 var2952)
(declare-const var858 var2218) ; Statement: r1 := @this: org.hibernate.criterion.Distinct 
(assert (not (= var858 null-var2218)))
(declare-const var2092 var372) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var2092 null-var372)))
(declare-const var277 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var277 null-Int)))
(declare-const var1480 var2952) ; Statement: r3 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1480 null-var2952)))
(define-const var1332 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1332)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1332!1 String)
(assert (= var1332!1 ""))
(assert true)
(define-const var3195 String (append/672562846 var1332!1 "distinct ")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("distinct ") 
(declare-const var1332!2 String)
(assert (= var1332!2 (str.++ var1332!1 "distinct ")))
(define-const var155 var2662 (wrappedProjection/1214314927 var858)) ; Statement: $r4 = r1.<org.hibernate.criterion.Distinct: org.hibernate.criterion.Projection wrappedProjection> 
(define-const var3961 String (var2662_toSqlString/430054498 var155 var2092 var277 var1480)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.criterion.Projection: java.lang.String toSqlString(org.hibernate.Criteria,int,org.hibernate.criterion.CriteriaQuery)>(r2, i0, r3) 
(assert true)
(define-const var231 String (append/672562846 var3195 var3961)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3195!1 String)
(assert (= var3195!1 (str.++ var3195 var3961)))
(assert true)
(define-const var3384 String (toString/-2075883882 var231)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), wrappedProjection/1214314927=([org.hibernate.criterion.Distinct], org.hibernate.criterion.Projection), var2662_toSqlString/430054498=([org.hibernate.criterion.Projection, org.hibernate.Criteria, int, org.hibernate.criterion.CriteriaQuery], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2218=org.hibernate.criterion.Distinct, var858=r1, var372=org.hibernate.Criteria, var2092=r2, var277=i0, var2952=org.hibernate.criterion.CriteriaQuery, var1480=r3, var1332=$r0, var3195=$r6, var2662=org.hibernate.criterion.Projection, var155=$r4, var3961=$r5, var231=$r7, var3384=$r8}
; {org.hibernate.criterion.Distinct=var2218, r1=var858, org.hibernate.Criteria=var372, r2=var2092, i0=var277, org.hibernate.criterion.CriteriaQuery=var2952, r3=var1480, $r0=var1332, $r6=var3195, org.hibernate.criterion.Projection=var2662, $r4=var155, $r5=var3961, $r7=var231, $r8=var3384}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.Distinct;	r2 := @parameter0: org.hibernate.Criteria;	i0 := @parameter1: int;	r3 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("distinct ");	$r4 = r1.<org.hibernate.criterion.Distinct: org.hibernate.criterion.Projection wrappedProjection>;	$r5 = interfaceinvoke $r4.<org.hibernate.criterion.Projection: java.lang.String toSqlString(org.hibernate.Criteria,int,org.hibernate.criterion.CriteriaQuery)>(r2, i0, r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1