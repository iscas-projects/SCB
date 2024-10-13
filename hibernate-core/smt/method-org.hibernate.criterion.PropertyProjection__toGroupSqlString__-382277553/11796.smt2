(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2943 0)
(declare-sort var2165 0)
(declare-sort var571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun grouped/1223509239 (var2943) Bool)
(declare-fun propertyName/1223509239 (var2943) String)
(declare-fun var571_getColumns/-1607850951 (var571 String var2165) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var2943 var2943)
(declare-const null-var2165 var2165)
(declare-const null-var571 var571)
(declare-const var782 var2943) ; Statement: r0 := @this: org.hibernate.criterion.PropertyProjection 
(assert (not (= var782 null-var2943)))
(declare-const var3090 var2165) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3090 null-var2165)))
(declare-const var1642 var571) ; Statement: r1 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1642 null-var571)))
(define-const var2821 Bool (grouped/1223509239 var782)) ; Statement: $z0 = r0.<org.hibernate.criterion.PropertyProjection: boolean grouped> 
 ; Statement: if $z0 != 0 goto $r3 = r0.<org.hibernate.criterion.PropertyProjection: java.lang.String propertyName> 
(assert (not (= (ite var2821 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3795 String (propertyName/1223509239 var782)) ; Statement: $r3 = r0.<org.hibernate.criterion.PropertyProjection: java.lang.String propertyName> 
(define-const var20 (Array Int String) (var571_getColumns/-1607850951 var1642 var3795 var3090)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var262 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var20))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {grouped/1223509239=([org.hibernate.criterion.PropertyProjection], boolean), propertyName/1223509239=([org.hibernate.criterion.PropertyProjection], java.lang.String), var571_getColumns/-1607850951=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var2943=org.hibernate.criterion.PropertyProjection, var782=r0, var2165=org.hibernate.Criteria, var3090=r2, var571=org.hibernate.criterion.CriteriaQuery, var1642=r1, var2821=$z0, var3795=$r3, var20=$r4, var262=$r5}
; {org.hibernate.criterion.PropertyProjection=var2943, r0=var782, org.hibernate.Criteria=var2165, r2=var3090, org.hibernate.criterion.CriteriaQuery=var571, r1=var1642, $z0=var2821, $r3=var3795, $r4=var20, $r5=var262}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: org.hibernate.criterion.PropertyProjection;	r2 := @parameter0: org.hibernate.Criteria;	r1 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$z0 = r0.<org.hibernate.criterion.PropertyProjection: boolean grouped>;	if $z0 != 0 goto $r3 = r0.<org.hibernate.criterion.PropertyProjection: java.lang.String propertyName>;	$r3 = r0.<org.hibernate.criterion.PropertyProjection: java.lang.String propertyName>;	$r4 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	$r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r4);	return $r5
;block_num 2