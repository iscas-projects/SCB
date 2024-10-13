(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2157 0)
(declare-sort var1938 0)
(declare-sort var3077 0)
(declare-sort var988 0)
(declare-sort var3516 0)
(declare-sort var3490 0)
(declare-sort var315 0)
(declare-sort var424 0)
(declare-sort var3436 0)
(declare-sort var2917 0)
(declare-sort var2055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var424) void)
(declare-fun cast-from-var2157-to-var424 (var2157) var424)
(declare-fun propertyPath/487596375 (var2157) var1938)
(declare-fun joinableType/487596375 (var2157) var3077)
(declare-fun lhsAlias/487596375 (var2157) String)
(declare-fun lhsColumns/487596375 (var2157) (Array Int String))
(declare-fun rhsAlias/487596375 (var2157) String)
(declare-fun joinType/487596375 (var2157) var3516)
(declare-fun var3077_getAssociatedJoinable/1447135194 (var3077 var3490) var3436)
(declare-fun joinable/487596375 (var2157) var3436)
(declare-fun var2917_getRHSColumnNames/2044831373 (var3077 var3490) (Array Int String))
(declare-fun rhsColumns/487596375 (var2157) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3077_getOnCondition/487347584 (var3077 String var3490 var315) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2055_isBlank/1295660402 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun on/487596375 (var2157) String)
(declare-fun hasRestriction/487596375 (var2157) Bool)
(declare-fun enabledFilters/487596375 (var2157) var315)
(declare-const null-var2157 var2157)
(declare-const null-var1938 var1938)
(declare-const null-var3077 var3077)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3516 var3516)
(declare-const null-Bool Bool)
(declare-const null-var3490 var3490)
(declare-const null-var315 var315)
(declare-const var2615 var2157) ; Statement: r0 := @this: org.hibernate.loader.OuterJoinableAssociation 
(assert (not (= var2615 null-var2157)))
(declare-const var3420 var1938) ; Statement: r1 := @parameter0: org.hibernate.loader.PropertyPath 
(assert (not (= var3420 null-var1938)))
(declare-const var918 var3077) ; Statement: r2 := @parameter1: org.hibernate.type.AssociationType 
(assert (not (= var918 null-var3077)))
(declare-const var2507 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2507 null-String)))
(declare-const var2095 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var2095 null-__Array__Int__String__)))
(declare-const var1597 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var1597 null-String)))
(declare-const var442 var3516) ; Statement: r6 := @parameter5: org.hibernate.sql.JoinType 
(assert (not (= var442 null-var3516)))
(declare-const var2132 String) ; Statement: r13 := @parameter6: java.lang.String 
(assert (not (= var2132 null-String)))
(declare-const var77 Bool) ; Statement: z1 := @parameter7: boolean 
(assert (not (= var77 null-Bool)))
(declare-const var2007 var3490) ; Statement: r7 := @parameter8: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2007 null-var3490)))
(declare-const var1820 var315) ; Statement: r11 := @parameter9: java.util.Map 
(assert (not (= var1820 null-var315)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2157-to-var424 var2615))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2615!1 var2157)
(declare-const var2615!2 var2157)
(assert (not (= var2615!2 null-var2157)))
(assert (= (propertyPath/487596375 var2615!2) var3420)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.loader.PropertyPath propertyPath> = r1 
(declare-const var2615!3 var2157)
(assert (not (= var2615!3 null-var2157)))
(assert (= (joinableType/487596375 var2615!3) var918)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.type.AssociationType joinableType> = r2 
(declare-const var2615!4 var2157)
(assert (not (= var2615!4 null-var2157)))
(assert (= (lhsAlias/487596375 var2615!4) var2507)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String lhsAlias> = r3 
(declare-const var2615!5 var2157)
(assert (not (= var2615!5 null-var2157)))
(assert (= (lhsColumns/487596375 var2615!5) var2095)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] lhsColumns> = r4 
(declare-const var2615!6 var2157)
(assert (not (= var2615!6 null-var2157)))
(assert (= (rhsAlias/487596375 var2615!6) var1597)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> = r5 
(declare-const var2615!7 var2157)
(assert (not (= var2615!7 null-var2157)))
(assert (= (joinType/487596375 var2615!7) var442)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.sql.JoinType joinType> = r6 
(define-const var200 var3436 (var3077_getAssociatedJoinable/1447135194 var918 var2007)) ; Statement: $r8 = interfaceinvoke r2.<org.hibernate.type.AssociationType: org.hibernate.persister.entity.Joinable getAssociatedJoinable(org.hibernate.engine.spi.SessionFactoryImplementor)>(r7) 
(declare-const var2615!8 var2157)
(assert (not (= var2615!8 null-var2157)))
(assert (= (joinable/487596375 var2615!8) var200)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> = $r8 
(define-const var2803 (Array Int String) (var2917_getRHSColumnNames/2044831373 var918 var2007)) ; Statement: $r9 = staticinvoke <org.hibernate.engine.internal.JoinHelper: java.lang.String[] getRHSColumnNames(org.hibernate.type.AssociationType,org.hibernate.engine.spi.SessionFactoryImplementor)>(r2, r7) 
(declare-const var2615!9 var2157)
(assert (not (= var2615!9 null-var2157)))
(assert (= (rhsColumns/487596375 var2615!9) var2803)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns> = $r9 
(define-const var2098 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2098)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2098!1 String)
(assert (= var2098!1 ""))
(define-const var2792 String (var3077_getOnCondition/487347584 var918 var1597 var2007 var1820)) ; Statement: $r12 = interfaceinvoke r2.<org.hibernate.type.AssociationType: java.lang.String getOnCondition(java.lang.String,org.hibernate.engine.spi.SessionFactoryImplementor,java.util.Map)>(r5, r7, r11) 
(assert true)
(define-const var1471 String (append/672562846 var2098!1 var2792)) ; Statement: $r18 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2098!2 String)
(assert (= var2098!2 (str.++ var2098!1 var2792)))
(define-const var571 Bool (var2055_isBlank/1295660402 var2132)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isBlank(java.lang.String)>(r13) 
 ; Statement: if $z0 == 0 goto $r14 = new java.lang.StringBuilder 
(assert (= (ite var571 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3588 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3588)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3588!1 String)
(assert (= var3588!1 ""))
(assert true)
(define-const var1707 String (append/672562846 var3588!1 " and ( ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ( ") 
(declare-const var3588!2 String)
(assert (= var3588!2 (str.++ var3588!1 " and ( ")))
(assert true)
(define-const var2717 String (append/672562846 var1707 var2132)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var1707!1 String)
(assert (= var1707!1 (str.++ var1707 var2132)))
(assert true)
(define-const var2418 String (append/672562846 var2717 " )")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var2717!1 String)
(assert (= var2717!1 (str.++ var2717 " )")))
(assert true)
(define-const var1533 String (toString/-2075883882 var2418)) ; Statement: $r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2017 String (append/672562846 var1471 var1533)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1471!1 String)
(assert (= var1471!1 (str.++ var1471 var1533)))
(assert true)
(define-const var2843 String (toString/-2075883882 var2017)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2615!10 var2157)
(assert (not (= var2615!10 null-var2157)))
(assert (= (on/487596375 var2615!10) var2843)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> = $r20 
(declare-const var2615!11 var2157)
(assert (not (= var2615!11 null-var2157)))
(assert (= (hasRestriction/487596375 var2615!11) var77)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: boolean hasRestriction> = z1 
(declare-const var2615!12 var2157)
(assert (not (= var2615!12 null-var2157)))
(assert (= (enabledFilters/487596375 var2615!12) var1820)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.util.Map enabledFilters> = r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2157-to-var424=([org.hibernate.loader.OuterJoinableAssociation], java.lang.Object), propertyPath/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.loader.PropertyPath), joinableType/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.type.AssociationType), lhsAlias/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), lhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), rhsAlias/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), joinType/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.sql.JoinType), var3077_getAssociatedJoinable/1447135194=([org.hibernate.type.AssociationType, org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.persister.entity.Joinable), joinable/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.persister.entity.Joinable), var2917_getRHSColumnNames/2044831373=([org.hibernate.type.AssociationType, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String[]), rhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3077_getOnCondition/487347584=([org.hibernate.type.AssociationType, java.lang.String, org.hibernate.engine.spi.SessionFactoryImplementor, java.util.Map], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2055_isBlank/1295660402=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), on/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), hasRestriction/487596375=([org.hibernate.loader.OuterJoinableAssociation], boolean), enabledFilters/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.util.Map)}
; {var2157=org.hibernate.loader.OuterJoinableAssociation, var2615=r0, var1938=org.hibernate.loader.PropertyPath, var3420=r1, var3077=org.hibernate.type.AssociationType, var918=r2, var2507=r3, var988=null_type, var2095=r4, var1597=r5, var3516=org.hibernate.sql.JoinType, var442=r6, var2132=r13, var77=z1, var3490=org.hibernate.engine.spi.SessionFactoryImplementor, var2007=r7, var315=java.util.Map, var1820=r11, var424=java.lang.Object, var3436=org.hibernate.persister.entity.Joinable, var200=$r8, var2917=org.hibernate.engine.internal.JoinHelper, var2803=$r9, var2098=$r10, var2792=$r12, var1471=$r18, var2055=org.hibernate.internal.util.StringHelper, var571=$z0, var3588=$r14, var1707=$r15, var2717=$r16, var2418=$r17, var1533=$r21, var2017=$r19, var2843=$r20}
; {org.hibernate.loader.OuterJoinableAssociation=var2157, r0=var2615, org.hibernate.loader.PropertyPath=var1938, r1=var3420, org.hibernate.type.AssociationType=var3077, r2=var918, r3=var2507, null_type=var988, r4=var2095, r5=var1597, org.hibernate.sql.JoinType=var3516, r6=var442, r13=var2132, z1=var77, org.hibernate.engine.spi.SessionFactoryImplementor=var3490, r7=var2007, java.util.Map=var315, r11=var1820, java.lang.Object=var424, org.hibernate.persister.entity.Joinable=var3436, $r8=var200, org.hibernate.engine.internal.JoinHelper=var2917, $r9=var2803, $r10=var2098, $r12=var2792, $r18=var1471, org.hibernate.internal.util.StringHelper=var2055, $z0=var571, $r14=var3588, $r15=var1707, $r16=var2717, $r17=var2418, $r21=var1533, $r19=var2017, $r20=var2843}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.loader.OuterJoinableAssociation;	r1 := @parameter0: org.hibernate.loader.PropertyPath;	r2 := @parameter1: org.hibernate.type.AssociationType;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	r5 := @parameter4: java.lang.String;	r6 := @parameter5: org.hibernate.sql.JoinType;	r13 := @parameter6: java.lang.String;	z1 := @parameter7: boolean;	r7 := @parameter8: org.hibernate.engine.spi.SessionFactoryImplementor;	r11 := @parameter9: java.util.Map;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.loader.PropertyPath propertyPath> = r1;	r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.type.AssociationType joinableType> = r2;	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String lhsAlias> = r3;	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] lhsColumns> = r4;	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> = r5;	r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.sql.JoinType joinType> = r6;	$r8 = interfaceinvoke r2.<org.hibernate.type.AssociationType: org.hibernate.persister.entity.Joinable getAssociatedJoinable(org.hibernate.engine.spi.SessionFactoryImplementor)>(r7);	r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> = $r8;	$r9 = staticinvoke <org.hibernate.engine.internal.JoinHelper: java.lang.String[] getRHSColumnNames(org.hibernate.type.AssociationType,org.hibernate.engine.spi.SessionFactoryImplementor)>(r2, r7);	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns> = $r9;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = interfaceinvoke r2.<org.hibernate.type.AssociationType: java.lang.String getOnCondition(java.lang.String,org.hibernate.engine.spi.SessionFactoryImplementor,java.util.Map)>(r5, r7, r11);	$r18 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isBlank(java.lang.String)>(r13);	if $z0 == 0 goto $r14 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ( ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> = $r20;	r0.<org.hibernate.loader.OuterJoinableAssociation: boolean hasRestriction> = z1;	r0.<org.hibernate.loader.OuterJoinableAssociation: java.util.Map enabledFilters> = r11;	return
;block_num 3