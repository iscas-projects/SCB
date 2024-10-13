(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3611 0)
(declare-sort var2899 0)
(declare-sort var1828 0)
(declare-sort var2059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/-1993715745 (var3611) String)
(declare-fun var1828_findColumns/-631918876 (var1828 String var2899) (Array Int String))
(declare-fun var2059_suffix/-1483522881 ((Array Int String) String) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3611 var3611)
(declare-const null-var2899 var2899)
(declare-const null-var1828 var1828)
(declare-const var2180 var3611) ; Statement: r1 := @this: org.hibernate.criterion.NotNullExpression 
(assert (not (= var2180 null-var3611)))
(declare-const var3899 var2899) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3899 null-var2899)))
(declare-const var1597 var1828) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1597 null-var1828)))
(define-const var898 String (propertyName/-1993715745 var2180)) ; Statement: $r3 = r1.<org.hibernate.criterion.NotNullExpression: java.lang.String propertyName> 
(define-const var465 (Array Int String) (var1828_findColumns/-631918876 var1597 var898 var3899)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var1537 (Array Int String) (var2059_suffix/-1483522881 var465 " is not null")) ; Statement: $r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, " is not null") 
(define-const var3619 String (String_join/-1520935655 (cast-from-String-to-String " or ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var1537))) ; Statement: r10 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" or ", $r5) 
(define-const var1812 Int (getLength-Arr-String-1 var465)) ; Statement: $i0 = lengthof r4 
 ; Statement: if $i0 <= 1 goto return r10 
(assert (<= var1812 1)) ; Cond: $i0 <= 1 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/-1993715745=([org.hibernate.criterion.NotNullExpression], java.lang.String), var1828_findColumns/-631918876=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), var2059_suffix/-1483522881=([java.lang.String[], java.lang.String], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3611=org.hibernate.criterion.NotNullExpression, var2180=r1, var2899=org.hibernate.Criteria, var3899=r2, var1828=org.hibernate.criterion.CriteriaQuery, var1597=r0, var898=$r3, var465=r4, var2059=org.hibernate.internal.util.StringHelper, var1537=$r5, var3619=r10, var1812=$i0}
; {org.hibernate.criterion.NotNullExpression=var3611, r1=var2180, org.hibernate.Criteria=var2899, r2=var3899, org.hibernate.criterion.CriteriaQuery=var1828, r0=var1597, $r3=var898, r4=var465, org.hibernate.internal.util.StringHelper=var2059, $r5=var1537, r10=var3619, $i0=var1812}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: org.hibernate.criterion.NotNullExpression;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r1.<org.hibernate.criterion.NotNullExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	$r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, " is not null");	r10 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" or ", $r5);	$i0 = lengthof r4;	if $i0 <= 1 goto return r10;	return r10
;block_num 2