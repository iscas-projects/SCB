(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1565 0)
(declare-sort var1218 0)
(declare-sort var2875 0)
(declare-sort var1401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/-1122963470 (var1565) String)
(declare-fun var2875_findColumns/-631918876 (var2875 String var1218) (Array Int String))
(declare-fun var1401_suffix/-1483522881 ((Array Int String) String) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1565 var1565)
(declare-const null-var1218 var1218)
(declare-const null-var2875 var2875)
(declare-const var3381 var1565) ; Statement: r1 := @this: org.hibernate.criterion.NullExpression 
(assert (not (= var3381 null-var1565)))
(declare-const var2456 var1218) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var2456 null-var1218)))
(declare-const var1848 var2875) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1848 null-var2875)))
(define-const var2861 String (propertyName/-1122963470 var3381)) ; Statement: $r3 = r1.<org.hibernate.criterion.NullExpression: java.lang.String propertyName> 
(define-const var1556 (Array Int String) (var2875_findColumns/-631918876 var1848 var2861 var2456)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var2621 (Array Int String) (var1401_suffix/-1483522881 var1556 " is null")) ; Statement: $r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, " is null") 
(define-const var685 String (String_join/-1520935655 (cast-from-String-to-String " and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2621))) ; Statement: r10 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", $r5) 
(define-const var1518 Int (getLength-Arr-String-1 var1556)) ; Statement: $i0 = lengthof r4 
 ; Statement: if $i0 <= 1 goto return r10 
(assert (<= var1518 1)) ; Cond: $i0 <= 1 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/-1122963470=([org.hibernate.criterion.NullExpression], java.lang.String), var2875_findColumns/-631918876=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), var1401_suffix/-1483522881=([java.lang.String[], java.lang.String], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1565=org.hibernate.criterion.NullExpression, var3381=r1, var1218=org.hibernate.Criteria, var2456=r2, var2875=org.hibernate.criterion.CriteriaQuery, var1848=r0, var2861=$r3, var1556=r4, var1401=org.hibernate.internal.util.StringHelper, var2621=$r5, var685=r10, var1518=$i0}
; {org.hibernate.criterion.NullExpression=var1565, r1=var3381, org.hibernate.Criteria=var1218, r2=var2456, org.hibernate.criterion.CriteriaQuery=var2875, r0=var1848, $r3=var2861, r4=var1556, org.hibernate.internal.util.StringHelper=var1401, $r5=var2621, r10=var685, $i0=var1518}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: org.hibernate.criterion.NullExpression;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r1.<org.hibernate.criterion.NullExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	$r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, " is null");	r10 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", $r5);	$i0 = lengthof r4;	if $i0 <= 1 goto return r10;	return r10
;block_num 2