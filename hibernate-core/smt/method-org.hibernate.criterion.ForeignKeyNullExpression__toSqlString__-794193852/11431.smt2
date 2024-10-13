(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var2498 0)
(declare-sort var99 0)
(declare-sort var2689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun associationPropertyName/-1535666691 (var1743) String)
(declare-fun var99_getForeignKeyColumns/1282874126 (var99 var2498 String) (Array Int String))
(declare-fun getSuffix/-1884550446 (var1743) String)
(declare-fun var2689_suffix/-1483522881 ((Array Int String) String) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1743 var1743)
(declare-const null-var2498 var2498)
(declare-const null-var99 var99)
(declare-const var1252 var1743) ; Statement: r2 := @this: org.hibernate.criterion.ForeignKeyNullExpression 
(assert (not (= var1252 null-var1743)))
(declare-const var1003 var2498) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var1003 null-var2498)))
(declare-const var2852 var99) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2852 null-var99)))
(define-const var3213 String (associationPropertyName/-1535666691 var1252)) ; Statement: $r3 = r2.<org.hibernate.criterion.ForeignKeyNullExpression: java.lang.String associationPropertyName> 
(define-const var280 (Array Int String) (var99_getForeignKeyColumns/1282874126 var2852 var1003 var3213)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getForeignKeyColumns(org.hibernate.Criteria,java.lang.String)>(r1, $r3) 
(assert true)
(define-const var1829 String (getSuffix/-1884550446 var1252)) ; Statement: $r5 = specialinvoke r2.<org.hibernate.criterion.ForeignKeyNullExpression: java.lang.String getSuffix()>() 
(define-const var359 (Array Int String) (var2689_suffix/-1483522881 var280 var1829)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, $r5) 
(define-const var3302 String (String_join/-1520935655 (cast-from-String-to-String " and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var359))) ; Statement: r11 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", $r6) 
(define-const var1788 Int (getLength-Arr-String-1 var280)) ; Statement: $i0 = lengthof r4 
 ; Statement: if $i0 <= 1 goto return r11 
(assert (<= var1788 1)) ; Cond: $i0 <= 1 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {associationPropertyName/-1535666691=([org.hibernate.criterion.ForeignKeyNullExpression], java.lang.String), var99_getForeignKeyColumns/1282874126=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], java.lang.String[]), getSuffix/-1884550446=([org.hibernate.criterion.ForeignKeyNullExpression], java.lang.String), var2689_suffix/-1483522881=([java.lang.String[], java.lang.String], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1743=org.hibernate.criterion.ForeignKeyNullExpression, var1252=r2, var2498=org.hibernate.Criteria, var1003=r1, var99=org.hibernate.criterion.CriteriaQuery, var2852=r0, var3213=$r3, var280=r4, var1829=$r5, var2689=org.hibernate.internal.util.StringHelper, var359=$r6, var3302=r11, var1788=$i0}
; {org.hibernate.criterion.ForeignKeyNullExpression=var1743, r2=var1252, org.hibernate.Criteria=var2498, r1=var1003, org.hibernate.criterion.CriteriaQuery=var99, r0=var2852, $r3=var3213, r4=var280, $r5=var1829, org.hibernate.internal.util.StringHelper=var2689, $r6=var359, r11=var3302, $i0=var1788}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r2 := @this: org.hibernate.criterion.ForeignKeyNullExpression;	r1 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r2.<org.hibernate.criterion.ForeignKeyNullExpression: java.lang.String associationPropertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getForeignKeyColumns(org.hibernate.Criteria,java.lang.String)>(r1, $r3);	$r5 = specialinvoke r2.<org.hibernate.criterion.ForeignKeyNullExpression: java.lang.String getSuffix()>();	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, $r5);	r11 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", $r6);	$i0 = lengthof r4;	if $i0 <= 1 goto return r11;	return r11
;block_num 2