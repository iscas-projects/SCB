(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1518 0)
(declare-sort var416 0)
(declare-sort var99 0)
(declare-sort var3586 0)
(declare-sort var3907 0)
(declare-sort var400 0)
(declare-sort var1403 0)
(declare-sort var3254 0)
(declare-sort var2823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionRole/2096745176 (var1518) String)
(declare-fun getCollectionPersister/1644298624 (var99 String) var3586)
(declare-fun createNameForCollection/1938347349 (var99 String) String)
(declare-fun var400_getCollectionType/2147155409 (var400) var3907)
(declare-fun cast-from-var3586-to-var400 (var3586) var400)
(declare-fun addJoin/1843943170 (var1518 String var1403) void)
(declare-fun cast-from-var3907-to-var1403 (var3907) var1403)
(declare-fun collectionName/2096745176 (var1518) String)
(declare-fun currentName/2096745176 (var1518) String)
(declare-fun collectionOwnerName/2096745176 (var1518) String)
(declare-fun currentProperty/2096745176 (var1518) String)
(declare-fun componentPath/2096745176 (var1518) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun var3254-init () var3254)
(declare-fun <init>/-303923806 (var3254 var3586) void)
(declare-fun cast-from-var3254-to-var2823 (var3254) var2823)
(declare-fun currentPropertyMapping/2096745176 (var1518) var2823)
(declare-const null-var1518 var1518)
(declare-const null-String String)
(declare-const null-var99 var99)
(declare-const var2976 var1518) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var2976 null-var1518)))
(declare-const var3691 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var3691 null-String)))
(declare-const var2838 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2838 null-String)))
(declare-const var1729 var99) ; Statement: r2 := @parameter2: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var1729 null-var99)))
(declare-const var2976!1 var1518)
(assert (not (= var2976!1 null-var1518)))
(assert (= (collectionRole/2096745176 var2976!1) var2838)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionRole> = r1 
(assert true)
(define-const var3806 var3586 (getCollectionPersister/1644298624 var1729 var2838)) ; Statement: r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.collection.QueryableCollection getCollectionPersister(java.lang.String)>(r1) 
(assert true)
(define-const var2183 String (createNameForCollection/1938347349 var1729 var2838)) ; Statement: r4 = virtualinvoke r2.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String createNameForCollection(java.lang.String)>(r1) 
(define-const var1081 var3907 (var400_getCollectionType/2147155409 (cast-from-var3586-to-var400 var3806))) ; Statement: $r5 = interfaceinvoke r3.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.CollectionType getCollectionType()>() 
(assert true)
;(assert (addJoin/1843943170 var2976!1 var2183 (cast-from-var3907-to-var1403 var1081))) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: void addJoin(java.lang.String,org.hibernate.type.AssociationType)>(r4, $r5) 

(declare-const var2976!2 var1518)
(declare-const var2183!1 String)
(declare-const var1081!1 var3907)
(declare-const var2976!3 var1518)
(assert (not (= var2976!3 null-var1518)))
(assert (= (collectionName/2096745176 var2976!3) var2183!1)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionName> = r4 
(define-const var625 String (currentName/2096745176 var2976!3)) ; Statement: $r6 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> 
(declare-const var2976!4 var1518)
(assert (not (= var2976!4 null-var1518)))
(assert (= (collectionOwnerName/2096745176 var2976!4) var625)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionOwnerName> = $r6 
(declare-const var2976!5 var1518)
(assert (not (= var2976!5 null-var1518)))
(assert (= (currentName/2096745176 var2976!5) var2183!1)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> = r4 
(declare-const var2976!6 var1518)
(assert (not (= var2976!6 null-var1518)))
(assert (= (currentProperty/2096745176 var2976!6) var3691)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> = r7 
(define-const var1215 String (componentPath/2096745176 var2976!6)) ; Statement: $r8 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert true)
;(assert (setLength/1276735992 var1215 0)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var1215!1 String)
(declare-const var604 Int)
(define-const var1125 var3254 var3254-init) ; Statement: $r9 = new org.hibernate.persister.collection.CollectionPropertyMapping 
(assert true)
;(assert (<init>/-303923806 var1125 var3806)) ; Statement: specialinvoke $r9.<org.hibernate.persister.collection.CollectionPropertyMapping: void <init>(org.hibernate.persister.collection.QueryableCollection)>(r3) 

(declare-const var1125!1 var3254)
(declare-const var3806!1 var3586)
(declare-const var2976!7 var1518)
(assert (not (= var2976!7 null-var1518)))
(assert (= (currentPropertyMapping/2096745176 var2976!7) (cast-from-var3254-to-var2823 var1125!1))) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping currentPropertyMapping> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionRole/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), getCollectionPersister/1644298624=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], org.hibernate.persister.collection.QueryableCollection), createNameForCollection/1938347349=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], java.lang.String), var400_getCollectionType/2147155409=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.type.CollectionType), cast-from-var3586-to-var400=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), addJoin/1843943170=([org.hibernate.hql.internal.classic.PathExpressionParser, java.lang.String, org.hibernate.type.AssociationType], void), cast-from-var3907-to-var1403=([org.hibernate.type.CollectionType], org.hibernate.type.AssociationType), collectionName/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), currentName/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), collectionOwnerName/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), currentProperty/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), componentPath/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), var3254-init=([], org.hibernate.persister.collection.CollectionPropertyMapping), <init>/-303923806=([org.hibernate.persister.collection.CollectionPropertyMapping, org.hibernate.persister.collection.QueryableCollection], void), cast-from-var3254-to-var2823=([org.hibernate.persister.collection.CollectionPropertyMapping], org.hibernate.persister.entity.PropertyMapping), currentPropertyMapping/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.persister.entity.PropertyMapping)}
; {var1518=org.hibernate.hql.internal.classic.PathExpressionParser, var2976=r0, var3691=r7, var416=null_type, var2838=r1, var99=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var1729=r2, var3586=org.hibernate.persister.collection.QueryableCollection, var3806=r3, var2183=r4, var3907=org.hibernate.type.CollectionType, var400=org.hibernate.persister.collection.CollectionPersister, var1081=$r5, var1403=org.hibernate.type.AssociationType, var625=$r6, var1215=$r8, var604=0, var3254=org.hibernate.persister.collection.CollectionPropertyMapping, var1125=$r9, var2823=org.hibernate.persister.entity.PropertyMapping}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var1518, r0=var2976, r7=var3691, null_type=var416, r1=var2838, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var99, r2=var1729, org.hibernate.persister.collection.QueryableCollection=var3586, r3=var3806, r4=var2183, org.hibernate.type.CollectionType=var3907, org.hibernate.persister.collection.CollectionPersister=var400, $r5=var1081, org.hibernate.type.AssociationType=var1403, $r6=var625, $r8=var1215, 0=var604, org.hibernate.persister.collection.CollectionPropertyMapping=var3254, $r9=var1125, org.hibernate.persister.entity.PropertyMapping=var2823}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r7 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionRole> = r1;	r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.collection.QueryableCollection getCollectionPersister(java.lang.String)>(r1);	r4 = virtualinvoke r2.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String createNameForCollection(java.lang.String)>(r1);	$r5 = interfaceinvoke r3.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.CollectionType getCollectionType()>();	specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: void addJoin(java.lang.String,org.hibernate.type.AssociationType)>(r4, $r5);	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionName> = r4;	$r6 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName>;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionOwnerName> = $r6;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> = r4;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> = r7;	$r8 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	virtualinvoke $r8.<java.lang.StringBuilder: void setLength(int)>(0);	$r9 = new org.hibernate.persister.collection.CollectionPropertyMapping;	specialinvoke $r9.<org.hibernate.persister.collection.CollectionPropertyMapping: void <init>(org.hibernate.persister.collection.QueryableCollection)>(r3);	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping currentPropertyMapping> = $r9;	return
;block_num 1