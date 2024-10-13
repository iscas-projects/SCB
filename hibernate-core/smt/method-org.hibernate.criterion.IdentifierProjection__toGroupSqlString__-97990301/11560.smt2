(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2149 0)
(declare-sort var2289 0)
(declare-sort var2475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun grouped/-1049843189 (var2149) Bool)
(declare-fun var2475_getIdentifierColumns/-1321665429 (var2475 var2289) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var2149 var2149)
(declare-const null-var2289 var2289)
(declare-const null-var2475 var2475)
(declare-const var128 var2149) ; Statement: r0 := @this: org.hibernate.criterion.IdentifierProjection 
(assert (not (= var128 null-var2149)))
(declare-const var3287 var2289) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3287 null-var2289)))
(declare-const var1471 var2475) ; Statement: r1 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1471 null-var2475)))
(define-const var1645 Bool (grouped/-1049843189 var128)) ; Statement: $z0 = r0.<org.hibernate.criterion.IdentifierProjection: boolean grouped> 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getIdentifierColumns(org.hibernate.Criteria)>(r2) 
(assert (not (= (ite var1645 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3931 (Array Int String) (var2475_getIdentifierColumns/-1321665429 var1471 var3287)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getIdentifierColumns(org.hibernate.Criteria)>(r2) 
(define-const var588 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var3931))) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {grouped/-1049843189=([org.hibernate.criterion.IdentifierProjection], boolean), var2475_getIdentifierColumns/-1321665429=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var2149=org.hibernate.criterion.IdentifierProjection, var128=r0, var2289=org.hibernate.Criteria, var3287=r2, var2475=org.hibernate.criterion.CriteriaQuery, var1471=r1, var1645=$z0, var3931=$r3, var588=$r4}
; {org.hibernate.criterion.IdentifierProjection=var2149, r0=var128, org.hibernate.Criteria=var2289, r2=var3287, org.hibernate.criterion.CriteriaQuery=var2475, r1=var1471, $z0=var1645, $r3=var3931, $r4=var588}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: org.hibernate.criterion.IdentifierProjection;	r2 := @parameter0: org.hibernate.Criteria;	r1 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$z0 = r0.<org.hibernate.criterion.IdentifierProjection: boolean grouped>;	if $z0 != 0 goto $r3 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getIdentifierColumns(org.hibernate.Criteria)>(r2);	$r3 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getIdentifierColumns(org.hibernate.Criteria)>(r2);	$r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r3);	return $r4
;block_num 2