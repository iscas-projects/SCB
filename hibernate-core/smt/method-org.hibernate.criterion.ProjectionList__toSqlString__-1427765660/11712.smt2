(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2289 0)
(declare-sort var462 0)
(declare-sort var1547 0)
(declare-sort var1116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun elements/-700127232 (var2289) var1116)
(declare-fun var1116_iterator/-912451715 (var1116) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2289 var2289)
(declare-const null-var462 var462)
(declare-const null-Int Int)
(declare-const null-var1547 var1547)
(declare-const var81 var2289) ; Statement: r1 := @this: org.hibernate.criterion.ProjectionList 
(assert (not (= var81 null-var2289)))
(declare-const var1435 var462) ; Statement: r7 := @parameter0: org.hibernate.Criteria 
(assert (not (= var1435 null-var462)))
(declare-const var3804 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3804 null-Int)))
(declare-const var2238 var1547) ; Statement: r8 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2238 null-var1547)))
(define-const var2248 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2248)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2248!1 String)
(assert (= var2248!1 ""))
(define-const var1777 String "") ; Statement: r12 = "" 
(define-const var543 var1116 (elements/-700127232 var81)) ; Statement: $r2 = r1.<org.hibernate.criterion.ProjectionList: java.util.List elements> 
(define-const var2310 Iterator (var1116_iterator/-912451715 var543)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var72 Bool (Iterator_hasNext/-1669924200 var2310)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var72 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2871 String (toString/-2075883882 var2248!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), elements/-700127232=([org.hibernate.criterion.ProjectionList], java.util.List), var1116_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2289=org.hibernate.criterion.ProjectionList, var81=r1, var462=org.hibernate.Criteria, var1435=r7, var3804=i1, var1547=org.hibernate.criterion.CriteriaQuery, var2238=r8, var2248=$r0, var1777=r12, var1116=java.util.List, var543=$r2, var2310=r3, var72=$z0, var2871=$r4}
; {org.hibernate.criterion.ProjectionList=var2289, r1=var81, org.hibernate.Criteria=var462, r7=var1435, i1=var3804, org.hibernate.criterion.CriteriaQuery=var1547, r8=var2238, $r0=var2248, r12=var1777, java.util.List=var1116, $r2=var543, r3=var2310, $z0=var72, $r4=var2871}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.ProjectionList;	r7 := @parameter0: org.hibernate.Criteria;	i1 := @parameter1: int;	r8 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r12 = "";	$r2 = r1.<org.hibernate.criterion.ProjectionList: java.util.List elements>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3