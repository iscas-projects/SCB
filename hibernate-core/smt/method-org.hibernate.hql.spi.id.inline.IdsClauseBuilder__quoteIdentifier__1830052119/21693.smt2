(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3384 0)
(declare-sort var3090 0)
(declare-sort var2 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2_getReturnedClass/-1468116676 (var2) ClassObject)
(declare-fun getClass/1258963082 (var3090) ClassObject)
(declare-fun equals/-1650223740 (var3090 var3090) Bool)
(declare-fun cast-from-ClassObject-to-var3090 (ClassObject) var3090)
(declare-fun String_valueOf/-333372740 (var3090) String)
(declare-const null-var3384 var3384)
(declare-const null-var3090 var3090)
(declare-const null-var2 var2)
(declare-const var416 var3384) ; Statement: r6 := @this: org.hibernate.hql.spi.id.inline.IdsClauseBuilder 
(assert (not (= var416 null-var3384)))
(declare-const var2115 var3090) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2115 null-var3090)))
(declare-const var284 var2) ; Statement: r0 := @parameter1: org.hibernate.type.Type 
(assert (not (= var284 null-var2)))
(define-const var3314 ClassObject (var2_getReturnedClass/-1468116676 var284)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var3656 ClassObject (getClass/1258963082 var2115)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var428 Bool (equals/-1650223740 (cast-from-ClassObject-to-var3090 var3314) (cast-from-ClassObject-to-var3090 var3656))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r14 = r0 
(assert (not (= (ite var428 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2266 var2 var284) ; Statement: $r14 = r0 
(assert true) ; Non Conditional
(define-const var2313 Bool true) ; Statement: $z1 = $r14 instanceof org.hibernate.type.LiteralType 
 ; Statement: if $z1 == 0 goto $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert (= (ite var2313 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1849 String (String_valueOf/-333372740 var2115)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2_getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), getClass/1258963082=([java.lang.Object], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var3090=([java.lang.Class], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var3384=org.hibernate.hql.spi.id.inline.IdsClauseBuilder, var416=r6, var3090=java.lang.Object, var2115=r1, var2=org.hibernate.type.Type, var284=r0, var3314=$r3, var3656=$r2, var428=$z0, var2266=$r14, var2313=$z1, var1849=$r4}
; {org.hibernate.hql.spi.id.inline.IdsClauseBuilder=var3384, r6=var416, java.lang.Object=var3090, r1=var2115, org.hibernate.type.Type=var2, r0=var284, $r3=var3314, $r2=var3656, $z0=var428, $r14=var2266, $z1=var2313, $r4=var1849}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r6 := @this: org.hibernate.hql.spi.id.inline.IdsClauseBuilder;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: org.hibernate.type.Type;	$r3 = interfaceinvoke r0.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r14 = r0;	$r14 = r0;	$z1 = $r14 instanceof org.hibernate.type.LiteralType;	if $z1 == 0 goto $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	return $r4
;block_num 4