(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2231 0)
(declare-sort var687 0)
(declare-sort var3967 0)
(declare-sort var1244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/700710765 (var2231) String)
(declare-fun var3967_findColumns/-631918876 (var3967 String var687) (Array Int String))
(declare-fun var1244_suffix/-1483522881 ((Array Int String) String) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var2231 var2231)
(declare-const null-var687 var687)
(declare-const null-var3967 var3967)
(declare-const var36 var2231) ; Statement: r1 := @this: org.hibernate.criterion.BetweenExpression 
(assert (not (= var36 null-var2231)))
(declare-const var990 var687) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var990 null-var687)))
(declare-const var470 var3967) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var470 null-var3967)))
(define-const var3472 String (propertyName/700710765 var36)) ; Statement: $r3 = r1.<org.hibernate.criterion.BetweenExpression: java.lang.String propertyName> 
(define-const var906 (Array Int String) (var3967_findColumns/-631918876 var470 var3472 var990)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var2213 (Array Int String) (var1244_suffix/-1483522881 var906 " between ? and ?")) ; Statement: r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, " between ? and ?") 
(define-const var1649 String (String_join/-1520935655 (cast-from-String-to-String " and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2213))) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/700710765=([org.hibernate.criterion.BetweenExpression], java.lang.String), var3967_findColumns/-631918876=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), var1244_suffix/-1483522881=([java.lang.String[], java.lang.String], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var2231=org.hibernate.criterion.BetweenExpression, var36=r1, var687=org.hibernate.Criteria, var990=r2, var3967=org.hibernate.criterion.CriteriaQuery, var470=r0, var3472=$r3, var906=r4, var1244=org.hibernate.internal.util.StringHelper, var2213=r5, var1649=$r6}
; {org.hibernate.criterion.BetweenExpression=var2231, r1=var36, org.hibernate.Criteria=var687, r2=var990, org.hibernate.criterion.CriteriaQuery=var3967, r0=var470, $r3=var3472, r4=var906, org.hibernate.internal.util.StringHelper=var1244, r5=var2213, $r6=var1649}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: org.hibernate.criterion.BetweenExpression;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r1.<org.hibernate.criterion.BetweenExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, " between ? and ?");	$r6 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", r5);	return $r6
;block_num 1