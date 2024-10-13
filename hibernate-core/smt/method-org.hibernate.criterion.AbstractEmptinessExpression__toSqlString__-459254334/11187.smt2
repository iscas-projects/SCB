(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var967 0)
(declare-sort var814 0)
(declare-sort var841 0)
(declare-sort var3033 0)
(declare-sort var2858 0)
(declare-sort var1683 0)
(declare-sort var2381 0)
(declare-sort var2085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/-241534537 (var1979) String)
(declare-fun var814_getEntityName/-1677246878 (var814 var967 String) String)
(declare-fun var814_getPropertyName/-792809433 (var814 String) String)
(declare-fun var814_getSQLAlias/647511094 (var814 var967 String) String)
(declare-fun var814_getFactory/960862227 (var814) var841)
(declare-fun getQueryableCollection/2077303329 (var1979 String String var841) var3033)
(declare-fun var2858_getKeyColumnNames/-374017113 (var2858) (Array Int String))
(declare-fun cast-from-var3033-to-var2858 (var3033) var2858)
(declare-fun var841_getEntityPersister/1301528620 (var841 String) var1683)
(declare-fun cast-from-var1683-to-var2381 (var1683) var2381)
(declare-fun var2381_getIdentifierColumnNames/-230260269 (var2381) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2858_getTableName/48490405 (var2858) String)
(declare-fun var2085-init () var2085)
(declare-fun <init>/-966276690 (var2085) void)
(declare-fun setTableAlias/1342634312 (var2085 String) var2085)
(declare-fun setCondition/-699920356 (var2085 (Array Int String) (Array Int String)) var2085)
(declare-fun toFragmentString/-1148506603 (var2085) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun excludeEmpty/1424530801 (var1979) Bool)
(declare-const null-var1979 var1979)
(declare-const null-var967 var967)
(declare-const null-var814 var814)
(declare-const var3593 var1979) ; Statement: r2 := @this: org.hibernate.criterion.AbstractEmptinessExpression 
(assert (not (= var3593 null-var1979)))
(declare-const var404 var967) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var404 null-var967)))
(declare-const var1042 var814) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1042 null-var814)))
(define-const var172 String (propertyName/-241534537 var3593)) ; Statement: $r3 = r2.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName> 
(define-const var1392 String (var814_getEntityName/-1677246878 var1042 var404 var172)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getEntityName(org.hibernate.Criteria,java.lang.String)>(r1, $r3) 
(define-const var1473 String (propertyName/-241534537 var3593)) ; Statement: $r5 = r2.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName> 
(define-const var3677 String (var814_getPropertyName/-792809433 var1042 var1473)) ; Statement: r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getPropertyName(java.lang.String)>($r5) 
(define-const var865 String (propertyName/-241534537 var3593)) ; Statement: $r7 = r2.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName> 
(define-const var3141 String (var814_getSQLAlias/647511094 var1042 var404 var865)) ; Statement: r8 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, $r7) 
(define-const var597 var841 (var814_getFactory/960862227 var1042)) ; Statement: r9 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var37 var3033 (getQueryableCollection/2077303329 var3593 var1392 var3677 var597)) ; Statement: r10 = virtualinvoke r2.<org.hibernate.criterion.AbstractEmptinessExpression: org.hibernate.persister.collection.QueryableCollection getQueryableCollection(java.lang.String,java.lang.String,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r6, r9) 
(define-const var951 (Array Int String) (var2858_getKeyColumnNames/-374017113 (cast-from-var3033-to-var2858 var37))) ; Statement: r11 = interfaceinvoke r10.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>() 
(define-const var596 var1683 (var841_getEntityPersister/1301528620 var597 var1392)) ; Statement: $r12 = interfaceinvoke r9.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>(r4) 
(define-const var3061 var2381 (cast-from-var1683-to-var2381 var596)) ; Statement: $r13 = (org.hibernate.persister.entity.Loadable) $r12 
(define-const var901 (Array Int String) (var2381_getIdentifierColumnNames/-230260269 var3061)) ; Statement: r14 = interfaceinvoke $r13.<org.hibernate.persister.entity.Loadable: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var2902 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2902)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2902!1 String)
(assert (= var2902!1 ""))
(assert true)
(define-const var3102 String (append/672562846 var2902!1 "(select 1 from ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(select 1 from ") 
(declare-const var2902!2 String)
(assert (= var2902!2 (str.++ var2902!1 "(select 1 from ")))
(define-const var2586 String (var2858_getTableName/48490405 (cast-from-var3033-to-var2858 var37))) ; Statement: $r16 = interfaceinvoke r10.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>() 
(assert true)
(define-const var3601 String (append/672562846 var3102 var2586)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3102!1 String)
(assert (= var3102!1 (str.++ var3102 var2586)))
(assert true)
(define-const var3215 String (append/672562846 var3601 " where ")) ; Statement: $r23 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(declare-const var3601!1 String)
(assert (= var3601!1 (str.++ var3601 " where ")))
(define-const var846 var2085 var2085-init) ; Statement: $r19 = new org.hibernate.sql.ConditionFragment 
(assert true)
;(assert (<init>/-966276690 var846)) ; Statement: specialinvoke $r19.<org.hibernate.sql.ConditionFragment: void <init>()>() 

(declare-const var846!1 var2085)
(assert true)
(define-const var3587 var2085 (setTableAlias/1342634312 var846!1 var3141)) ; Statement: $r20 = virtualinvoke $r19.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setTableAlias(java.lang.String)>(r8) 
(assert true)
(define-const var3106 var2085 (setCondition/-699920356 var3587 var901 var951)) ; Statement: $r21 = virtualinvoke $r20.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setCondition(java.lang.String[],java.lang.String[])>(r14, r11) 
(assert true)
(define-const var1531 String (toFragmentString/-1148506603 var3106)) ; Statement: $r22 = virtualinvoke $r21.<org.hibernate.sql.ConditionFragment: java.lang.String toFragmentString()>() 
(assert true)
(define-const var2776 String (append/672562846 var3215 var1531)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3215!1 String)
(assert (= var3215!1 (str.++ var3215 var1531)))
(assert true)
(define-const var763 String (append/672562846 var2776 ")")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2776!1 String)
(assert (= var2776!1 (str.++ var2776 ")")))
(assert true)
(define-const var3354 String (toString/-2075883882 var763)) ; Statement: r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2286 Bool (excludeEmpty/1424530801 var3593)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.criterion.AbstractEmptinessExpression: boolean excludeEmpty()>() 
 ; Statement: if $z0 == 0 goto $r27 = new java.lang.StringBuilder 
(assert (not (= (ite var2286 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var472 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var472)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var472!1 String)
(assert (= var472!1 ""))
(assert true)
(define-const var2480 String (append/672562846 var472!1 "exists ")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exists ") 
(declare-const var472!2 String)
(assert (= var472!2 (str.++ var472!1 "exists ")))
(assert true)
(define-const var2117 String (append/672562846 var2480 var3354)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var2480!1 String)
(assert (= var2480!1 (str.++ var2480 var3354)))
(assert true)
(define-const var2149 String (toString/-2075883882 var2117)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r33] 
(assert true) ; Non Conditional
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/-241534537=([org.hibernate.criterion.AbstractEmptinessExpression], java.lang.String), var814_getEntityName/-1677246878=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], java.lang.String), var814_getPropertyName/-792809433=([org.hibernate.criterion.CriteriaQuery, java.lang.String], java.lang.String), var814_getSQLAlias/647511094=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], java.lang.String), var814_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), getQueryableCollection/2077303329=([org.hibernate.criterion.AbstractEmptinessExpression, java.lang.String, java.lang.String, org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.persister.collection.QueryableCollection), var2858_getKeyColumnNames/-374017113=([org.hibernate.persister.entity.Joinable], java.lang.String[]), cast-from-var3033-to-var2858=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.entity.Joinable), var841_getEntityPersister/1301528620=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), cast-from-var1683-to-var2381=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.Loadable), var2381_getIdentifierColumnNames/-230260269=([org.hibernate.persister.entity.Loadable], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2858_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), var2085-init=([], org.hibernate.sql.ConditionFragment), <init>/-966276690=([org.hibernate.sql.ConditionFragment], void), setTableAlias/1342634312=([org.hibernate.sql.ConditionFragment, java.lang.String], org.hibernate.sql.ConditionFragment), setCondition/-699920356=([org.hibernate.sql.ConditionFragment, java.lang.String[], java.lang.String[]], org.hibernate.sql.ConditionFragment), toFragmentString/-1148506603=([org.hibernate.sql.ConditionFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), excludeEmpty/1424530801=([org.hibernate.criterion.AbstractEmptinessExpression], boolean)}
; {var1979=org.hibernate.criterion.AbstractEmptinessExpression, var3593=r2, var967=org.hibernate.Criteria, var404=r1, var814=org.hibernate.criterion.CriteriaQuery, var1042=r0, var172=$r3, var1392=r4, var1473=$r5, var3677=r6, var865=$r7, var3141=r8, var841=org.hibernate.engine.spi.SessionFactoryImplementor, var597=r9, var3033=org.hibernate.persister.collection.QueryableCollection, var37=r10, var2858=org.hibernate.persister.entity.Joinable, var951=r11, var1683=org.hibernate.persister.entity.EntityPersister, var596=$r12, var2381=org.hibernate.persister.entity.Loadable, var3061=$r13, var901=r14, var2902=$r15, var3102=$r17, var2586=$r16, var3601=$r18, var3215=$r23, var2085=org.hibernate.sql.ConditionFragment, var846=$r19, var3587=$r20, var3106=$r21, var1531=$r22, var2776=$r24, var763=$r25, var3354=r26, var2286=$z0, var472=$r30, var2480=$r31, var2117=$r32, var2149=$r33}
; {org.hibernate.criterion.AbstractEmptinessExpression=var1979, r2=var3593, org.hibernate.Criteria=var967, r1=var404, org.hibernate.criterion.CriteriaQuery=var814, r0=var1042, $r3=var172, r4=var1392, $r5=var1473, r6=var3677, $r7=var865, r8=var3141, org.hibernate.engine.spi.SessionFactoryImplementor=var841, r9=var597, org.hibernate.persister.collection.QueryableCollection=var3033, r10=var37, org.hibernate.persister.entity.Joinable=var2858, r11=var951, org.hibernate.persister.entity.EntityPersister=var1683, $r12=var596, org.hibernate.persister.entity.Loadable=var2381, $r13=var3061, r14=var901, $r15=var2902, $r17=var3102, $r16=var2586, $r18=var3601, $r23=var3215, org.hibernate.sql.ConditionFragment=var2085, $r19=var846, $r20=var3587, $r21=var3106, $r22=var1531, $r24=var2776, $r25=var763, r26=var3354, $z0=var2286, $r30=var472, $r31=var2480, $r32=var2117, $r33=var2149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.hibernate.criterion.AbstractEmptinessExpression;	r1 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r2.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getEntityName(org.hibernate.Criteria,java.lang.String)>(r1, $r3);	$r5 = r2.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName>;	r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getPropertyName(java.lang.String)>($r5);	$r7 = r2.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName>;	r8 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, $r7);	r9 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r10 = virtualinvoke r2.<org.hibernate.criterion.AbstractEmptinessExpression: org.hibernate.persister.collection.QueryableCollection getQueryableCollection(java.lang.String,java.lang.String,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r6, r9);	r11 = interfaceinvoke r10.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>();	$r12 = interfaceinvoke r9.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>(r4);	$r13 = (org.hibernate.persister.entity.Loadable) $r12;	r14 = interfaceinvoke $r13.<org.hibernate.persister.entity.Loadable: java.lang.String[] getIdentifierColumnNames()>();	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(select 1 from ");	$r16 = interfaceinvoke r10.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r23 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$r19 = new org.hibernate.sql.ConditionFragment;	specialinvoke $r19.<org.hibernate.sql.ConditionFragment: void <init>()>();	$r20 = virtualinvoke $r19.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setTableAlias(java.lang.String)>(r8);	$r21 = virtualinvoke $r20.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setCondition(java.lang.String[],java.lang.String[])>(r14, r11);	$r22 = virtualinvoke $r21.<org.hibernate.sql.ConditionFragment: java.lang.String toFragmentString()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke r2.<org.hibernate.criterion.AbstractEmptinessExpression: boolean excludeEmpty()>();	if $z0 == 0 goto $r27 = new java.lang.StringBuilder;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exists ");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r33];	return $r33
;block_num 3