(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2658 0)
(declare-sort var3073 0)
(declare-sort var441 0)
(declare-sort var921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/1398017344 (var2658) String)
(declare-fun var441_findColumns/-631918876 (var441 String var3073) (Array Int String))
(declare-fun otherPropertyName/1398017344 (var2658) String)
(declare-fun getOp/1891624735 (var2658) String)
(declare-fun var921_add/1185074652 ((Array Int String) String (Array Int String)) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var2658 var2658)
(declare-const null-var3073 var3073)
(declare-const null-var441 var441)
(declare-const var1208 var2658) ; Statement: r1 := @this: org.hibernate.criterion.PropertyExpression 
(assert (not (= var1208 null-var2658)))
(declare-const var3776 var3073) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3776 null-var3073)))
(declare-const var3101 var441) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var3101 null-var441)))
(define-const var2017 String (propertyName/1398017344 var1208)) ; Statement: $r3 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String propertyName> 
(define-const var2027 (Array Int String) (var441_findColumns/-631918876 var3101 var2017 var3776)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var788 String (otherPropertyName/1398017344 var1208)) ; Statement: $r5 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String otherPropertyName> 
(define-const var3991 (Array Int String) (var441_findColumns/-631918876 var3101 var788 var3776)) ; Statement: r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r5, r2) 
(assert true)
(define-const var1448 String (getOp/1891624735 var1208)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.criterion.PropertyExpression: java.lang.String getOp()>() 
(define-const var1240 (Array Int String) (var921_add/1185074652 var2027 var1448 var3991)) ; Statement: r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] add(java.lang.String[],java.lang.String,java.lang.String[])>(r4, $r7, r6) 
(define-const var1095 Int (getLength-Arr-String-1 var1240)) ; Statement: $i0 = lengthof r8 
 ; Statement: if $i0 <= 1 goto $r9 = r8[0] 
(assert (<= var1095 1)) ; Cond: $i0 <= 1 
(define-const var438 String (select var1240 0)) ; Statement: $r9 = r8[0] 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/1398017344=([org.hibernate.criterion.PropertyExpression], java.lang.String), var441_findColumns/-631918876=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), otherPropertyName/1398017344=([org.hibernate.criterion.PropertyExpression], java.lang.String), getOp/1891624735=([org.hibernate.criterion.PropertyExpression], java.lang.String), var921_add/1185074652=([java.lang.String[], java.lang.String, java.lang.String[]], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2658=org.hibernate.criterion.PropertyExpression, var1208=r1, var3073=org.hibernate.Criteria, var3776=r2, var441=org.hibernate.criterion.CriteriaQuery, var3101=r0, var2017=$r3, var2027=r4, var788=$r5, var3991=r6, var1448=$r7, var921=org.hibernate.internal.util.StringHelper, var1240=r8, var1095=$i0, var438=$r9}
; {org.hibernate.criterion.PropertyExpression=var2658, r1=var1208, org.hibernate.Criteria=var3073, r2=var3776, org.hibernate.criterion.CriteriaQuery=var441, r0=var3101, $r3=var2017, r4=var2027, $r5=var788, r6=var3991, $r7=var1448, org.hibernate.internal.util.StringHelper=var921, r8=var1240, $i0=var1095, $r9=var438}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.criterion.PropertyExpression;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	$r5 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String otherPropertyName>;	r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r5, r2);	$r7 = virtualinvoke r1.<org.hibernate.criterion.PropertyExpression: java.lang.String getOp()>();	r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] add(java.lang.String[],java.lang.String,java.lang.String[])>(r4, $r7, r6);	$i0 = lengthof r8;	if $i0 <= 1 goto $r9 = r8[0];	$r9 = r8[0];	return $r9
;block_num 2