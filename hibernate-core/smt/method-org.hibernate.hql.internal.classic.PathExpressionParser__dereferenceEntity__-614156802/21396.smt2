(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var965 0)
(declare-sort var873 0)
(declare-sort var542 0)
(declare-sort var924 0)
(declare-sort var3584 0)
(declare-sort var704 0)
(declare-sort var1816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFactory/324636549 (var704) var3584)
(declare-fun cast-from-var924-to-var704 (var924) var704)
(declare-fun getIdentifierOrUniqueKeyPropertyName/426041521 (var542 var1816) String)
(declare-fun cast-from-var3584-to-var1816 (var3584) var1816)
(declare-fun componentPath/2096745176 (var965) String)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var965 var965)
(declare-const null-String String)
(declare-const null-var542 var542)
(declare-const null-var924 var924)
(declare-const var274 var965) ; Statement: r4 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var274 null-var965)))
(declare-const var1102 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1102 null-String)))
(declare-const var699 var542) ; Statement: r2 := @parameter1: org.hibernate.type.EntityType 
(assert (not (= var699 null-var542)))
(declare-const var2539 var924) ; Statement: r3 := @parameter2: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var2539 null-var924)))
(define-const var1427 String "id") ; Statement: $r1 = "id" 
(assert true)
(define-const var1350 Bool (= var1427 var1102)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $z6 = 0 
(assert (= (ite var1350 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2763 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var3867 Bool var2763) ; Statement: z1 = $z6 
(assert true)
(define-const var2559 var3584 (getFactory/324636549 (cast-from-var924-to-var704 var2539))) ; Statement: $r19 = virtualinvoke r3.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var3982 String (getIdentifierOrUniqueKeyPropertyName/426041521 var699 (cast-from-var3584-to-var1816 var2559))) ; Statement: $r20 = virtualinvoke r2.<org.hibernate.type.EntityType: java.lang.String getIdentifierOrUniqueKeyPropertyName(org.hibernate.engine.spi.Mapping)>($r19) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r20 == null goto $z7 = 0 
(assert (= var3982 null-String)) ; Cond: $r20 == null 
(define-const var2869 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
 ; Statement: if z1 != 0 goto $r5 = r4.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert (not (= (ite var3867 1 0) 0))) ; Cond: z1 != 0 
(define-const var3992 String (componentPath/2096745176 var274)) ; Statement: $r5 = r4.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert true)
(define-const var268 Int (length/-171891354 var3992)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r6 = r4.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert (<= var268 0)) ; Cond: $i0 <= 0 
(define-const var2576 String (componentPath/2096745176 var274)) ; Statement: $r6 = r4.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert true)
;(assert (append/672562846 var2576 var1102)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2576!1 String)
(assert (= var2576!1 (str.++ var2576 var1102)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFactory/324636549=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var924-to-var704=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], org.hibernate.loader.Loader), getIdentifierOrUniqueKeyPropertyName/426041521=([org.hibernate.type.EntityType, org.hibernate.engine.spi.Mapping], java.lang.String), cast-from-var3584-to-var1816=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.spi.Mapping), componentPath/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var965=org.hibernate.hql.internal.classic.PathExpressionParser, var274=r4, var1102=r0, var873=null_type, var542=org.hibernate.type.EntityType, var699=r2, var924=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var2539=r3, var1427=$r1, var1350=$z0, var2763=$z6, var3867=z1, var3584=org.hibernate.engine.spi.SessionFactoryImplementor, var704=org.hibernate.loader.Loader, var2559=$r19, var1816=org.hibernate.engine.spi.Mapping, var3982=$r20, var2869=$z7, var3992=$r5, var268=$i0, var2576=$r6}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var965, r4=var274, r0=var1102, null_type=var873, org.hibernate.type.EntityType=var542, r2=var699, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var924, r3=var2539, $r1=var1427, $z0=var1350, $z6=var2763, z1=var3867, org.hibernate.engine.spi.SessionFactoryImplementor=var3584, org.hibernate.loader.Loader=var704, $r19=var2559, org.hibernate.engine.spi.Mapping=var1816, $r20=var3982, $z7=var2869, $r5=var3992, $i0=var268, $r6=var2576}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.type.EntityType;	r3 := @parameter2: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = "id";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $z6 = 0;	$z6 = 0;	z1 = $z6;	$r19 = virtualinvoke r3.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r20 = virtualinvoke r2.<org.hibernate.type.EntityType: java.lang.String getIdentifierOrUniqueKeyPropertyName(org.hibernate.engine.spi.Mapping)>($r19);	goto [?= (branch)];	if $r20 == null goto $z7 = 0;	$z7 = 0;	if z1 != 0 goto $r5 = r4.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	$r5 = r4.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	$i0 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r6 = r4.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	$r6 = r4.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	goto [?= return];	return
;block_num 9