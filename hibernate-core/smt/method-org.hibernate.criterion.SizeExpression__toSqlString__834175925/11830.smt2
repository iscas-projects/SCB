(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2859 0)
(declare-sort var2427 0)
(declare-sort var364 0)
(declare-sort var1952 0)
(declare-sort var2147 0)
(declare-sort var554 0)
(declare-sort var1424 0)
(declare-sort var900 0)
(declare-sort var1784 0)
(declare-sort var426 0)
(declare-sort var34 0)
(declare-sort var3396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/1370995180 (var2859) String)
(declare-fun var364_getEntityName/-1677246878 (var364 var2427 String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var364_getPropertyName/-792809433 (var364 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var364_getFactory/960862227 (var364) var1952)
(declare-fun var1952_getCollectionPersister/1293184455 (var1952 String) var2147)
(declare-fun cast-from-var2147-to-var554 (var2147) var554)
(declare-fun var1424_getKeyColumnNames/-374017113 (var1424) (Array Int String))
(declare-fun cast-from-var554-to-var1424 (var554) var1424)
(declare-fun var2147_getOwnerEntityPersister/-1424196242 (var2147) var900)
(declare-fun cast-from-var554-to-var2147 (var554) var2147)
(declare-fun cast-from-var900-to-var1784 (var900) var1784)
(declare-fun var1784_getIdentifierColumnNames/-230260269 (var1784) (Array Int String))
(declare-fun var426-init () var426)
(declare-fun <init>/-966276690 (var426) void)
(declare-fun var364_getSQLAlias/647511094 (var364 var2427 String) String)
(declare-fun setTableAlias/1342634312 (var426 String) var426)
(declare-fun setCondition/-699920356 (var426 (Array Int String) (Array Int String)) var426)
(declare-fun arr-var3396-init () (Array Int var3396))
(declare-fun op/1370995180 (var2859) String)
(declare-fun cast-from-String-to-var3396 (String) var3396)
(declare-fun var1424_getTableName/48490405 (var1424) String)
(declare-fun toFragmentString/-1148506603 (var426) String)
(declare-fun String_format/-647569892 (var34 String (Array Int var3396)) String)
(declare-const null-var2859 var2859)
(declare-const null-var2427 var2427)
(declare-const null-var364 var364)
(declare-const var34-ROOT var34)
(declare-const null-__Array__Int__var3396__ (Array Int var3396))
(declare-const var29 var2859) ; Statement: r2 := @this: org.hibernate.criterion.SizeExpression 
(assert (not (= var29 null-var2859)))
(declare-const var141 var2427) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var141 null-var2427)))
(declare-const var721 var364) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var721 null-var364)))
(define-const var3006 String (propertyName/1370995180 var29)) ; Statement: $r3 = r2.<org.hibernate.criterion.SizeExpression: java.lang.String propertyName> 
(define-const var2509 String (var364_getEntityName/-1677246878 var721 var141 var3006)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getEntityName(org.hibernate.Criteria,java.lang.String)>(r1, $r3) 
(define-const var3065 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3065)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3065!1 String)
(assert (= var3065!1 ""))
(assert true)
(define-const var1255 String (append/672562846 var3065!1 var2509)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3065!2 String)
(assert (= var3065!2 (str.++ var3065!1 var2509)))
(assert true)
(define-const var432 String (append/-1166366385 var1255 46)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1255!1 String)
(assert (str.prefixof var1255 var1255!1))
(define-const var866 String (propertyName/1370995180 var29)) ; Statement: $r7 = r2.<org.hibernate.criterion.SizeExpression: java.lang.String propertyName> 
(define-const var1653 String (var364_getPropertyName/-792809433 var721 var866)) ; Statement: $r8 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getPropertyName(java.lang.String)>($r7) 
(assert true)
(define-const var1788 String (append/672562846 var432 var1653)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var432!1 String)
(assert (= var432!1 (str.++ var432 var1653)))
(assert true)
(define-const var2075 String (toString/-2075883882 var1788)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2331 var1952 (var364_getFactory/960862227 var721)) ; Statement: $r12 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var129 var2147 (var1952_getCollectionPersister/1293184455 var2331 var2075)) ; Statement: $r13 = interfaceinvoke $r12.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.collection.CollectionPersister getCollectionPersister(java.lang.String)>(r11) 
(define-const var3662 var554 (cast-from-var2147-to-var554 var129)) ; Statement: r14 = (org.hibernate.persister.collection.QueryableCollection) $r13 
(define-const var15 (Array Int String) (var1424_getKeyColumnNames/-374017113 (cast-from-var554-to-var1424 var3662))) ; Statement: r15 = interfaceinvoke r14.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>() 
(define-const var2293 var900 (var2147_getOwnerEntityPersister/-1424196242 (cast-from-var554-to-var2147 var3662))) ; Statement: $r16 = interfaceinvoke r14.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.persister.entity.EntityPersister getOwnerEntityPersister()>() 
(define-const var3520 var1784 (cast-from-var900-to-var1784 var2293)) ; Statement: $r17 = (org.hibernate.persister.entity.Loadable) $r16 
(define-const var1334 (Array Int String) (var1784_getIdentifierColumnNames/-230260269 var3520)) ; Statement: r18 = interfaceinvoke $r17.<org.hibernate.persister.entity.Loadable: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var1004 var426 var426-init) ; Statement: $r19 = new org.hibernate.sql.ConditionFragment 
(assert true)
;(assert (<init>/-966276690 var1004)) ; Statement: specialinvoke $r19.<org.hibernate.sql.ConditionFragment: void <init>()>() 

(declare-const var1004!1 var426)
(define-const var3890 String (propertyName/1370995180 var29)) ; Statement: $r20 = r2.<org.hibernate.criterion.SizeExpression: java.lang.String propertyName> 
(define-const var3153 String (var364_getSQLAlias/647511094 var721 var141 var3890)) ; Statement: $r21 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, $r20) 
(assert true)
(define-const var862 var426 (setTableAlias/1342634312 var1004!1 var3153)) ; Statement: $r22 = virtualinvoke $r19.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setTableAlias(java.lang.String)>($r21) 
(assert true)
(define-const var510 var426 (setCondition/-699920356 var862 var1334 var15)) ; Statement: r23 = virtualinvoke $r22.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setCondition(java.lang.String[],java.lang.String[])>(r18, r15) 
(define-const var2320 var34 var34-ROOT) ; Statement: $r26 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2097 (Array Int var3396) arr-var3396-init) ; Statement: $r24 = newarray (java.lang.Object)[3] 
(define-const var37 String (op/1370995180 var29)) ; Statement: $r25 = r2.<org.hibernate.criterion.SizeExpression: java.lang.String op> 
(declare-const var2097!1 (Array Int var3396))
(assert (not (= var2097!1 null-__Array__Int__var3396__)))
(assert (= (select var2097!1 0) (cast-from-String-to-var3396 var37))) ; Statement: $r24[0] = $r25 
(define-const var2757 String (var1424_getTableName/48490405 (cast-from-var554-to-var1424 var3662))) ; Statement: $r27 = interfaceinvoke r14.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>() 
(declare-const var2097!2 (Array Int var3396))
(assert (not (= var2097!2 null-__Array__Int__var3396__)))
(assert (= (select var2097!2 1) (cast-from-String-to-var3396 var2757))) ; Statement: $r24[1] = $r27 
(assert true)
(define-const var3480 String (toFragmentString/-1148506603 var510)) ; Statement: $r28 = virtualinvoke r23.<org.hibernate.sql.ConditionFragment: java.lang.String toFragmentString()>() 
(declare-const var2097!3 (Array Int var3396))
(assert (not (= var2097!3 null-__Array__Int__var3396__)))
(assert (= (select var2097!3 2) (cast-from-String-to-var3396 var3480))) ; Statement: $r24[2] = $r28 
(define-const var1068 String (String_format/-647569892 var2320 "? %s (select count(*) from %s where %s)" var2097!3)) ; Statement: $r29 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r26, "? %s (select count(*) from %s where %s)", $r24) 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/1370995180=([org.hibernate.criterion.SizeExpression], java.lang.String), var364_getEntityName/-1677246878=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var364_getPropertyName/-792809433=([org.hibernate.criterion.CriteriaQuery, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var364_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var1952_getCollectionPersister/1293184455=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.collection.CollectionPersister), cast-from-var2147-to-var554=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.persister.collection.QueryableCollection), var1424_getKeyColumnNames/-374017113=([org.hibernate.persister.entity.Joinable], java.lang.String[]), cast-from-var554-to-var1424=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.entity.Joinable), var2147_getOwnerEntityPersister/-1424196242=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.persister.entity.EntityPersister), cast-from-var554-to-var2147=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), cast-from-var900-to-var1784=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.Loadable), var1784_getIdentifierColumnNames/-230260269=([org.hibernate.persister.entity.Loadable], java.lang.String[]), var426-init=([], org.hibernate.sql.ConditionFragment), <init>/-966276690=([org.hibernate.sql.ConditionFragment], void), var364_getSQLAlias/647511094=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], java.lang.String), setTableAlias/1342634312=([org.hibernate.sql.ConditionFragment, java.lang.String], org.hibernate.sql.ConditionFragment), setCondition/-699920356=([org.hibernate.sql.ConditionFragment, java.lang.String[], java.lang.String[]], org.hibernate.sql.ConditionFragment), arr-var3396-init=([], java.lang.Object[]), op/1370995180=([org.hibernate.criterion.SizeExpression], java.lang.String), cast-from-String-to-var3396=([java.lang.String], java.lang.Object), var1424_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), toFragmentString/-1148506603=([org.hibernate.sql.ConditionFragment], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2859=org.hibernate.criterion.SizeExpression, var29=r2, var2427=org.hibernate.Criteria, var141=r1, var364=org.hibernate.criterion.CriteriaQuery, var721=r0, var3006=$r3, var2509=r4, var3065=$r5, var1255=$r6, var432=$r9, var866=$r7, var1653=$r8, var1788=$r10, var2075=r11, var1952=org.hibernate.engine.spi.SessionFactoryImplementor, var2331=$r12, var2147=org.hibernate.persister.collection.CollectionPersister, var129=$r13, var554=org.hibernate.persister.collection.QueryableCollection, var3662=r14, var1424=org.hibernate.persister.entity.Joinable, var15=r15, var900=org.hibernate.persister.entity.EntityPersister, var2293=$r16, var1784=org.hibernate.persister.entity.Loadable, var3520=$r17, var1334=r18, var426=org.hibernate.sql.ConditionFragment, var1004=$r19, var3890=$r20, var3153=$r21, var862=$r22, var510=r23, var34=java.util.Locale, var2320=$r26, var3396=java.lang.Object, var2097=$r24, var37=$r25, var2757=$r27, var3480=$r28, var1068=$r29}
; {org.hibernate.criterion.SizeExpression=var2859, r2=var29, org.hibernate.Criteria=var2427, r1=var141, org.hibernate.criterion.CriteriaQuery=var364, r0=var721, $r3=var3006, r4=var2509, $r5=var3065, $r6=var1255, $r9=var432, $r7=var866, $r8=var1653, $r10=var1788, r11=var2075, org.hibernate.engine.spi.SessionFactoryImplementor=var1952, $r12=var2331, org.hibernate.persister.collection.CollectionPersister=var2147, $r13=var129, org.hibernate.persister.collection.QueryableCollection=var554, r14=var3662, org.hibernate.persister.entity.Joinable=var1424, r15=var15, org.hibernate.persister.entity.EntityPersister=var900, $r16=var2293, org.hibernate.persister.entity.Loadable=var1784, $r17=var3520, r18=var1334, org.hibernate.sql.ConditionFragment=var426, $r19=var1004, $r20=var3890, $r21=var3153, $r22=var862, r23=var510, java.util.Locale=var34, $r26=var2320, java.lang.Object=var3396, $r24=var2097, $r25=var37, $r27=var2757, $r28=var3480, $r29=var1068}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.hibernate.criterion.SizeExpression;	r1 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r2.<org.hibernate.criterion.SizeExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getEntityName(org.hibernate.Criteria,java.lang.String)>(r1, $r3);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = r2.<org.hibernate.criterion.SizeExpression: java.lang.String propertyName>;	$r8 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getPropertyName(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r13 = interfaceinvoke $r12.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.collection.CollectionPersister getCollectionPersister(java.lang.String)>(r11);	r14 = (org.hibernate.persister.collection.QueryableCollection) $r13;	r15 = interfaceinvoke r14.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>();	$r16 = interfaceinvoke r14.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.persister.entity.EntityPersister getOwnerEntityPersister()>();	$r17 = (org.hibernate.persister.entity.Loadable) $r16;	r18 = interfaceinvoke $r17.<org.hibernate.persister.entity.Loadable: java.lang.String[] getIdentifierColumnNames()>();	$r19 = new org.hibernate.sql.ConditionFragment;	specialinvoke $r19.<org.hibernate.sql.ConditionFragment: void <init>()>();	$r20 = r2.<org.hibernate.criterion.SizeExpression: java.lang.String propertyName>;	$r21 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, $r20);	$r22 = virtualinvoke $r19.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setTableAlias(java.lang.String)>($r21);	r23 = virtualinvoke $r22.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setCondition(java.lang.String[],java.lang.String[])>(r18, r15);	$r26 = <java.util.Locale: java.util.Locale ROOT>;	$r24 = newarray (java.lang.Object)[3];	$r25 = r2.<org.hibernate.criterion.SizeExpression: java.lang.String op>;	$r24[0] = $r25;	$r27 = interfaceinvoke r14.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>();	$r24[1] = $r27;	$r28 = virtualinvoke r23.<org.hibernate.sql.ConditionFragment: java.lang.String toFragmentString()>();	$r24[2] = $r28;	$r29 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r26, "? %s (select count(*) from %s where %s)", $r24);	return $r29
;block_num 1