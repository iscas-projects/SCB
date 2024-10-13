(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3074 0)
(declare-sort var3801 0)
(declare-sort var705 0)
(declare-sort var3338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var705_getIdentifierColumns/-1321665429 (var705 var3801) (Array Int String))
(declare-fun var3338_suffix/-1483522881 ((Array Int String) String) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3074 var3074)
(declare-const null-var3801 var3801)
(declare-const null-var705 var705)
(declare-const var2912 var3074) ; Statement: r8 := @this: org.hibernate.criterion.IdentifierEqExpression 
(assert (not (= var2912 null-var3074)))
(declare-const var3733 var3801) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3733 null-var3801)))
(declare-const var802 var705) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var802 null-var705)))
(define-const var3959 (Array Int String) (var705_getIdentifierColumns/-1321665429 var802 var3733)) ; Statement: r2 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getIdentifierColumns(org.hibernate.Criteria)>(r1) 
(define-const var2989 (Array Int String) (var3338_suffix/-1483522881 var3959 " = ?")) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r2, " = ?") 
(define-const var164 String (String_join/-1520935655 (cast-from-String-to-String " and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2989))) ; Statement: r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", $r3) 
(define-const var1672 Int (getLength-Arr-String-1 var3959)) ; Statement: $i0 = lengthof r2 
 ; Statement: if $i0 <= 1 goto return r9 
(assert (<= var1672 1)) ; Cond: $i0 <= 1 
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var705_getIdentifierColumns/-1321665429=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria], java.lang.String[]), var3338_suffix/-1483522881=([java.lang.String[], java.lang.String], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3074=org.hibernate.criterion.IdentifierEqExpression, var2912=r8, var3801=org.hibernate.Criteria, var3733=r1, var705=org.hibernate.criterion.CriteriaQuery, var802=r0, var3959=r2, var3338=org.hibernate.internal.util.StringHelper, var2989=$r3, var164=r9, var1672=$i0}
; {org.hibernate.criterion.IdentifierEqExpression=var3074, r8=var2912, org.hibernate.Criteria=var3801, r1=var3733, org.hibernate.criterion.CriteriaQuery=var705, r0=var802, r2=var3959, org.hibernate.internal.util.StringHelper=var3338, $r3=var2989, r9=var164, $i0=var1672}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r8 := @this: org.hibernate.criterion.IdentifierEqExpression;	r1 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	r2 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getIdentifierColumns(org.hibernate.Criteria)>(r1);	$r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r2, " = ?");	r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", $r3);	$i0 = lengthof r2;	if $i0 <= 1 goto return r9;	return r9
;block_num 2