(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3060 0)
(declare-sort var255 0)
(declare-sort var318 0)
(declare-sort var283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun elements/-700127232 (var3060) var283)
(declare-fun var283_iterator/-912451715 (var283) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3060 var3060)
(declare-const null-var255 var255)
(declare-const null-var318 var318)
(declare-const var3137 var3060) ; Statement: r1 := @this: org.hibernate.criterion.ProjectionList 
(assert (not (= var3137 null-var3060)))
(declare-const var469 var255) ; Statement: r7 := @parameter0: org.hibernate.Criteria 
(assert (not (= var469 null-var255)))
(declare-const var972 var318) ; Statement: r8 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var972 null-var318)))
(define-const var663 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var663)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var663!1 String)
(assert (= var663!1 ""))
(define-const var3561 String "") ; Statement: r11 = "" 
(define-const var2711 var283 (elements/-700127232 var3137)) ; Statement: $r2 = r1.<org.hibernate.criterion.ProjectionList: java.util.List elements> 
(define-const var1563 Iterator (var283_iterator/-912451715 var2711)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3824 Bool (Iterator_hasNext/-1669924200 var1563)) ; Statement: $z1 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3824 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2324 String (toString/-2075883882 var663!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), elements/-700127232=([org.hibernate.criterion.ProjectionList], java.util.List), var283_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3060=org.hibernate.criterion.ProjectionList, var3137=r1, var255=org.hibernate.Criteria, var469=r7, var318=org.hibernate.criterion.CriteriaQuery, var972=r8, var663=$r0, var3561=r11, var283=java.util.List, var2711=$r2, var1563=r3, var3824=$z1, var2324=$r4}
; {org.hibernate.criterion.ProjectionList=var3060, r1=var3137, org.hibernate.Criteria=var255, r7=var469, org.hibernate.criterion.CriteriaQuery=var318, r8=var972, $r0=var663, r11=var3561, java.util.List=var283, $r2=var2711, r3=var1563, $z1=var3824, $r4=var2324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.ProjectionList;	r7 := @parameter0: org.hibernate.Criteria;	r8 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r11 = "";	$r2 = r1.<org.hibernate.criterion.ProjectionList: java.util.List elements>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3