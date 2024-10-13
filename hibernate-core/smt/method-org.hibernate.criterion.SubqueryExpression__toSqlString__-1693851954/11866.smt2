(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3318 0)
(declare-sort var2692 0)
(declare-sort var1519 0)
(declare-sort var3467 0)
(declare-sort var827 0)
(declare-sort var3305 0)
(declare-sort var3187 0)
(declare-sort var3863 0)
(declare-sort var984 0)
(declare-sort var3237 0)
(declare-sort var1095 0)
(declare-sort var3125 0)
(declare-sort var1207 0)
(declare-sort var1560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toLeftSqlString/2142317429 (var3318 var2692 var1519) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun op/1783393843 (var3318) String)
(declare-fun quantifier/1783393843 (var3318) String)
(declare-fun var1519_getFactory/960862227 (var1519) var827)
(declare-fun var827_getMetamodel/1171873935 (var827) var3305)
(declare-fun criteriaImpl/1783393843 (var3318) var3187)
(declare-fun getEntityOrClassName/-721310609 (var3187) String)
(declare-fun var3305_entityPersister/1947554472 (var3305 String) var3863)
(declare-fun cast-from-var3863-to-var984 (var3863) var984)
(declare-fun createAndSetInnerQuery/-1754816979 (var3318 var1519 var827) void)
(declare-fun deriveRootSession/751711935 (var3318 var2692) var3237)
(declare-fun setSession/29518692 (var3187 var3237) void)
(declare-fun var1095-init () var1095)
(declare-fun innerQuery/1783393843 (var3318) var3125)
(declare-fun getSession/-345476140 (var3187) var3237)
(declare-fun var3237_getLoadQueryInfluencers/-159841172 (var3237) var1207)
(declare-fun getRootSQLALias/-1270450261 (var3125) String)
(declare-fun <init>/-1651507830 (var1095 var984 var3125 var827 var3187 String var1207 String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getSQLString/436492184 (var1560) String)
(declare-fun cast-from-var1095-to-var1560 (var1095) var1560)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3318 var3318)
(declare-const null-var2692 var2692)
(declare-const null-var1519 var1519)
(declare-const null-String String)
(declare-const var3032 var3318) ; Statement: r1 := @this: org.hibernate.criterion.SubqueryExpression 
(assert (not (= var3032 null-var3318)))
(declare-const var2930 var2692) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var2930 null-var2692)))
(declare-const var1419 var1519) ; Statement: r3 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1419 null-var1519)))
(define-const var73 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1054 String (toLeftSqlString/2142317429 var3032 var2930 var1419)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.criterion.SubqueryExpression: java.lang.String toLeftSqlString(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r2, r3) 
(assert true)
;(assert (<init>/-1061048412 var73 var1054)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var73!1 String)
(assert (= var73!1 var1054))
(define-const var3662 String (op/1783393843 var3032)) ; Statement: $r5 = r1.<org.hibernate.criterion.SubqueryExpression: java.lang.String op> 
 ; Statement: if $r5 == null goto $r6 = r1.<org.hibernate.criterion.SubqueryExpression: java.lang.String quantifier> 
(assert (= var3662 null-String)) ; Cond: $r5 == null 
(define-const var2319 String (quantifier/1783393843 var3032)) ; Statement: $r6 = r1.<org.hibernate.criterion.SubqueryExpression: java.lang.String quantifier> 
 ; Statement: if $r6 == null goto $r30 = interfaceinvoke r3.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (= var2319 null-String)) ; Cond: $r6 == null 
(define-const var2737 var827 (var1519_getFactory/960862227 var1419)) ; Statement: $r30 = interfaceinvoke r3.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3119 var3305 (var827_getMetamodel/1171873935 var2737)) ; Statement: $r9 = interfaceinvoke $r30.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var2216 var3187 (criteriaImpl/1783393843 var3032)) ; Statement: $r7 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl> 
(assert true)
(define-const var1673 String (getEntityOrClassName/-721310609 var2216)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.internal.CriteriaImpl: java.lang.String getEntityOrClassName()>() 
(define-const var2757 var3863 (var3305_entityPersister/1947554472 var3119 var1673)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>($r8) 
(define-const var1033 var984 (cast-from-var3863-to-var984 var2757)) ; Statement: $r31 = (org.hibernate.persister.entity.OuterJoinLoadable) $r10 
(assert true)
;(assert (createAndSetInnerQuery/-1754816979 var3032 var1419 var2737)) ; Statement: specialinvoke r1.<org.hibernate.criterion.SubqueryExpression: void createAndSetInnerQuery(org.hibernate.criterion.CriteriaQuery,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, $r30) 

(declare-const var3032!1 var3318)
(declare-const var1419!1 var1519)
(declare-const var2737!1 var827)
(define-const var1896 var3187 (criteriaImpl/1783393843 var3032!1)) ; Statement: $r11 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl> 
(assert true)
(define-const var2095 var3237 (deriveRootSession/751711935 var3032!1 var2930)) ; Statement: $r12 = specialinvoke r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.engine.spi.SharedSessionContractImplementor deriveRootSession(org.hibernate.Criteria)>(r2) 
(assert true)
;(assert (setSession/29518692 var1896 var2095)) ; Statement: virtualinvoke $r11.<org.hibernate.internal.CriteriaImpl: void setSession(org.hibernate.engine.spi.SharedSessionContractImplementor)>($r12) 

(declare-const var1896!1 var3187)
(declare-const var2095!1 var3237)
(define-const var2243 var1095 var1095-init) ; Statement: $r13 = new org.hibernate.loader.criteria.CriteriaJoinWalker 
(define-const var3313 var3125 (innerQuery/1783393843 var3032!1)) ; Statement: $r15 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.loader.criteria.CriteriaQueryTranslator innerQuery> 
(define-const var913 var3187 (criteriaImpl/1783393843 var3032!1)) ; Statement: $r16 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl> 
(define-const var448 var3187 (criteriaImpl/1783393843 var3032!1)) ; Statement: $r14 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl> 
(assert true)
(define-const var3565 String (getEntityOrClassName/-721310609 var448)) ; Statement: $r22 = virtualinvoke $r14.<org.hibernate.internal.CriteriaImpl: java.lang.String getEntityOrClassName()>() 
(define-const var1797 var3187 (criteriaImpl/1783393843 var3032!1)) ; Statement: $r17 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl> 
(assert true)
(define-const var3278 var3237 (getSession/-345476140 var1797)) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.internal.CriteriaImpl: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var803 var1207 (var3237_getLoadQueryInfluencers/-159841172 var3278)) ; Statement: $r21 = interfaceinvoke $r18.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>() 
(define-const var1945 var3125 (innerQuery/1783393843 var3032!1)) ; Statement: $r19 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.loader.criteria.CriteriaQueryTranslator innerQuery> 
(assert true)
(define-const var1920 String (getRootSQLALias/-1270450261 var1945)) ; Statement: $r20 = virtualinvoke $r19.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getRootSQLALias()>() 
(assert true)
;(assert (<init>/-1651507830 var2243 var1033 var3313 var2737!1 var913 var3565 var803 var1920)) ; Statement: specialinvoke $r13.<org.hibernate.loader.criteria.CriteriaJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.loader.criteria.CriteriaQueryTranslator,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.internal.CriteriaImpl,java.lang.String,org.hibernate.engine.spi.LoadQueryInfluencers,java.lang.String)>($r31, $r15, $r30, $r16, $r22, $r21, $r20) 

(declare-const var2243!1 var1095)
(declare-const var1033!1 var984)
(declare-const var3313!1 var3125)
(declare-const var2737!2 var827)
(declare-const var913!1 var3187)
(declare-const var3565!1 String)
(declare-const var803!1 var1207)
(declare-const var1920!1 String)
(assert true)
(define-const var2627 String (append/-1166366385 var73!1 40)) ; Statement: $r24 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var73!2 String)
(assert (str.prefixof var73!1 var73!2))
(assert true)
(define-const var2098 String (getSQLString/436492184 (cast-from-var1095-to-var1560 var2243!1))) ; Statement: $r23 = virtualinvoke $r13.<org.hibernate.loader.criteria.CriteriaJoinWalker: java.lang.String getSQLString()>() 
(assert true)
(define-const var3911 String (append/672562846 var2627 var2098)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2627!1 String)
(assert (= var2627!1 (str.++ var2627 var2098)))
(assert true)
(define-const var1240 String (append/-1166366385 var3911 41)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3911!1 String)
(assert (str.prefixof var3911 var3911!1))
(assert true)
(define-const var573 String (toString/-2075883882 var1240)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toLeftSqlString/2142317429=([org.hibernate.criterion.SubqueryExpression, org.hibernate.Criteria, org.hibernate.criterion.CriteriaQuery], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), op/1783393843=([org.hibernate.criterion.SubqueryExpression], java.lang.String), quantifier/1783393843=([org.hibernate.criterion.SubqueryExpression], java.lang.String), var1519_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var827_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), criteriaImpl/1783393843=([org.hibernate.criterion.SubqueryExpression], org.hibernate.internal.CriteriaImpl), getEntityOrClassName/-721310609=([org.hibernate.internal.CriteriaImpl], java.lang.String), var3305_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), cast-from-var3863-to-var984=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.OuterJoinLoadable), createAndSetInnerQuery/-1754816979=([org.hibernate.criterion.SubqueryExpression, org.hibernate.criterion.CriteriaQuery, org.hibernate.engine.spi.SessionFactoryImplementor], void), deriveRootSession/751711935=([org.hibernate.criterion.SubqueryExpression, org.hibernate.Criteria], org.hibernate.engine.spi.SharedSessionContractImplementor), setSession/29518692=([org.hibernate.internal.CriteriaImpl, org.hibernate.engine.spi.SharedSessionContractImplementor], void), var1095-init=([], org.hibernate.loader.criteria.CriteriaJoinWalker), innerQuery/1783393843=([org.hibernate.criterion.SubqueryExpression], org.hibernate.loader.criteria.CriteriaQueryTranslator), getSession/-345476140=([org.hibernate.internal.CriteriaImpl], org.hibernate.engine.spi.SharedSessionContractImplementor), var3237_getLoadQueryInfluencers/-159841172=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.LoadQueryInfluencers), getRootSQLALias/-1270450261=([org.hibernate.loader.criteria.CriteriaQueryTranslator], java.lang.String), <init>/-1651507830=([org.hibernate.loader.criteria.CriteriaJoinWalker, org.hibernate.persister.entity.OuterJoinLoadable, org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.internal.CriteriaImpl, java.lang.String, org.hibernate.engine.spi.LoadQueryInfluencers, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getSQLString/436492184=([org.hibernate.loader.JoinWalker], java.lang.String), cast-from-var1095-to-var1560=([org.hibernate.loader.criteria.CriteriaJoinWalker], org.hibernate.loader.JoinWalker), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3318=org.hibernate.criterion.SubqueryExpression, var3032=r1, var2692=org.hibernate.Criteria, var2930=r2, var1519=org.hibernate.criterion.CriteriaQuery, var1419=r3, var73=$r0, var1054=$r4, var3662=$r5, var3467=null_type, var2319=$r6, var827=org.hibernate.engine.spi.SessionFactoryImplementor, var2737=$r30, var3305=org.hibernate.metamodel.spi.MetamodelImplementor, var3119=$r9, var3187=org.hibernate.internal.CriteriaImpl, var2216=$r7, var1673=$r8, var3863=org.hibernate.persister.entity.EntityPersister, var2757=$r10, var984=org.hibernate.persister.entity.OuterJoinLoadable, var1033=$r31, var1896=$r11, var3237=org.hibernate.engine.spi.SharedSessionContractImplementor, var2095=$r12, var1095=org.hibernate.loader.criteria.CriteriaJoinWalker, var2243=$r13, var3125=org.hibernate.loader.criteria.CriteriaQueryTranslator, var3313=$r15, var913=$r16, var448=$r14, var3565=$r22, var1797=$r17, var3278=$r18, var1207=org.hibernate.engine.spi.LoadQueryInfluencers, var803=$r21, var1945=$r19, var1920=$r20, var2627=$r24, var1560=org.hibernate.loader.JoinWalker, var2098=$r23, var3911=$r25, var1240=$r26, var573=$r27}
; {org.hibernate.criterion.SubqueryExpression=var3318, r1=var3032, org.hibernate.Criteria=var2692, r2=var2930, org.hibernate.criterion.CriteriaQuery=var1519, r3=var1419, $r0=var73, $r4=var1054, $r5=var3662, null_type=var3467, $r6=var2319, org.hibernate.engine.spi.SessionFactoryImplementor=var827, $r30=var2737, org.hibernate.metamodel.spi.MetamodelImplementor=var3305, $r9=var3119, org.hibernate.internal.CriteriaImpl=var3187, $r7=var2216, $r8=var1673, org.hibernate.persister.entity.EntityPersister=var3863, $r10=var2757, org.hibernate.persister.entity.OuterJoinLoadable=var984, $r31=var1033, $r11=var1896, org.hibernate.engine.spi.SharedSessionContractImplementor=var3237, $r12=var2095, org.hibernate.loader.criteria.CriteriaJoinWalker=var1095, $r13=var2243, org.hibernate.loader.criteria.CriteriaQueryTranslator=var3125, $r15=var3313, $r16=var913, $r14=var448, $r22=var3565, $r17=var1797, $r18=var3278, org.hibernate.engine.spi.LoadQueryInfluencers=var1207, $r21=var803, $r19=var1945, $r20=var1920, $r24=var2627, org.hibernate.loader.JoinWalker=var1560, $r23=var2098, $r25=var3911, $r26=var1240, $r27=var573}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.SubqueryExpression;	r2 := @parameter0: org.hibernate.Criteria;	r3 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<org.hibernate.criterion.SubqueryExpression: java.lang.String toLeftSqlString(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r2, r3);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	$r5 = r1.<org.hibernate.criterion.SubqueryExpression: java.lang.String op>;	if $r5 == null goto $r6 = r1.<org.hibernate.criterion.SubqueryExpression: java.lang.String quantifier>;	$r6 = r1.<org.hibernate.criterion.SubqueryExpression: java.lang.String quantifier>;	if $r6 == null goto $r30 = interfaceinvoke r3.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r30 = interfaceinvoke r3.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r9 = interfaceinvoke $r30.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	$r7 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl>;	$r8 = virtualinvoke $r7.<org.hibernate.internal.CriteriaImpl: java.lang.String getEntityOrClassName()>();	$r10 = interfaceinvoke $r9.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>($r8);	$r31 = (org.hibernate.persister.entity.OuterJoinLoadable) $r10;	specialinvoke r1.<org.hibernate.criterion.SubqueryExpression: void createAndSetInnerQuery(org.hibernate.criterion.CriteriaQuery,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, $r30);	$r11 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl>;	$r12 = specialinvoke r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.engine.spi.SharedSessionContractImplementor deriveRootSession(org.hibernate.Criteria)>(r2);	virtualinvoke $r11.<org.hibernate.internal.CriteriaImpl: void setSession(org.hibernate.engine.spi.SharedSessionContractImplementor)>($r12);	$r13 = new org.hibernate.loader.criteria.CriteriaJoinWalker;	$r15 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.loader.criteria.CriteriaQueryTranslator innerQuery>;	$r16 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl>;	$r14 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl>;	$r22 = virtualinvoke $r14.<org.hibernate.internal.CriteriaImpl: java.lang.String getEntityOrClassName()>();	$r17 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.internal.CriteriaImpl criteriaImpl>;	$r18 = virtualinvoke $r17.<org.hibernate.internal.CriteriaImpl: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r21 = interfaceinvoke $r18.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>();	$r19 = r1.<org.hibernate.criterion.SubqueryExpression: org.hibernate.loader.criteria.CriteriaQueryTranslator innerQuery>;	$r20 = virtualinvoke $r19.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getRootSQLALias()>();	specialinvoke $r13.<org.hibernate.loader.criteria.CriteriaJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.loader.criteria.CriteriaQueryTranslator,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.internal.CriteriaImpl,java.lang.String,org.hibernate.engine.spi.LoadQueryInfluencers,java.lang.String)>($r31, $r15, $r30, $r16, $r22, $r21, $r20);	$r24 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r23 = virtualinvoke $r13.<org.hibernate.loader.criteria.CriteriaJoinWalker: java.lang.String getSQLString()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	return $r27
;block_num 3