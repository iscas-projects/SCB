(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2663 0)
(declare-sort var3522 0)
(declare-sort var552 0)
(declare-sort var1273 0)
(declare-sort var1989 0)
(declare-sort var1225 0)
(declare-sort var369 0)
(declare-sort var1954 0)
(declare-sort var613 0)
(declare-sort var39 0)
(declare-sort var3213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1954) void)
(declare-fun cast-from-var2663-to-var1954 (var2663) var1954)
(declare-fun propertyPath/487596375 (var2663) var3522)
(declare-fun joinableType/487596375 (var2663) var552)
(declare-fun lhsAlias/487596375 (var2663) String)
(declare-fun lhsColumns/487596375 (var2663) (Array Int String))
(declare-fun rhsAlias/487596375 (var2663) String)
(declare-fun joinType/487596375 (var2663) var1989)
(declare-fun var552_getAssociatedJoinable/1447135194 (var552 var1225) var613)
(declare-fun joinable/487596375 (var2663) var613)
(declare-fun var39_getRHSColumnNames/2044831373 (var552 var1225) (Array Int String))
(declare-fun rhsColumns/487596375 (var2663) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var552_getOnCondition/487347584 (var552 String var1225 var369) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3213_isBlank/1295660402 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun on/487596375 (var2663) String)
(declare-fun hasRestriction/487596375 (var2663) Bool)
(declare-fun enabledFilters/487596375 (var2663) var369)
(declare-const null-var2663 var2663)
(declare-const null-var3522 var3522)
(declare-const null-var552 var552)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1989 var1989)
(declare-const null-Bool Bool)
(declare-const null-var1225 var1225)
(declare-const null-var369 var369)
(declare-const var2991 var2663) ; Statement: r0 := @this: org.hibernate.loader.OuterJoinableAssociation 
(assert (not (= var2991 null-var2663)))
(declare-const var2510 var3522) ; Statement: r1 := @parameter0: org.hibernate.loader.PropertyPath 
(assert (not (= var2510 null-var3522)))
(declare-const var1984 var552) ; Statement: r2 := @parameter1: org.hibernate.type.AssociationType 
(assert (not (= var1984 null-var552)))
(declare-const var1822 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1822 null-String)))
(declare-const var425 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var425 null-__Array__Int__String__)))
(declare-const var1107 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var1107 null-String)))
(declare-const var261 var1989) ; Statement: r6 := @parameter5: org.hibernate.sql.JoinType 
(assert (not (= var261 null-var1989)))
(declare-const var2446 String) ; Statement: r13 := @parameter6: java.lang.String 
(assert (not (= var2446 null-String)))
(declare-const var3848 Bool) ; Statement: z1 := @parameter7: boolean 
(assert (not (= var3848 null-Bool)))
(declare-const var1976 var1225) ; Statement: r7 := @parameter8: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var1976 null-var1225)))
(declare-const var1207 var369) ; Statement: r11 := @parameter9: java.util.Map 
(assert (not (= var1207 null-var369)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2663-to-var1954 var2991))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2991!1 var2663)
(declare-const var2991!2 var2663)
(assert (not (= var2991!2 null-var2663)))
(assert (= (propertyPath/487596375 var2991!2) var2510)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.loader.PropertyPath propertyPath> = r1 
(declare-const var2991!3 var2663)
(assert (not (= var2991!3 null-var2663)))
(assert (= (joinableType/487596375 var2991!3) var1984)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.type.AssociationType joinableType> = r2 
(declare-const var2991!4 var2663)
(assert (not (= var2991!4 null-var2663)))
(assert (= (lhsAlias/487596375 var2991!4) var1822)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String lhsAlias> = r3 
(declare-const var2991!5 var2663)
(assert (not (= var2991!5 null-var2663)))
(assert (= (lhsColumns/487596375 var2991!5) var425)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] lhsColumns> = r4 
(declare-const var2991!6 var2663)
(assert (not (= var2991!6 null-var2663)))
(assert (= (rhsAlias/487596375 var2991!6) var1107)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> = r5 
(declare-const var2991!7 var2663)
(assert (not (= var2991!7 null-var2663)))
(assert (= (joinType/487596375 var2991!7) var261)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.sql.JoinType joinType> = r6 
(define-const var681 var613 (var552_getAssociatedJoinable/1447135194 var1984 var1976)) ; Statement: $r8 = interfaceinvoke r2.<org.hibernate.type.AssociationType: org.hibernate.persister.entity.Joinable getAssociatedJoinable(org.hibernate.engine.spi.SessionFactoryImplementor)>(r7) 
(declare-const var2991!8 var2663)
(assert (not (= var2991!8 null-var2663)))
(assert (= (joinable/487596375 var2991!8) var681)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> = $r8 
(define-const var2855 (Array Int String) (var39_getRHSColumnNames/2044831373 var1984 var1976)) ; Statement: $r9 = staticinvoke <org.hibernate.engine.internal.JoinHelper: java.lang.String[] getRHSColumnNames(org.hibernate.type.AssociationType,org.hibernate.engine.spi.SessionFactoryImplementor)>(r2, r7) 
(declare-const var2991!9 var2663)
(assert (not (= var2991!9 null-var2663)))
(assert (= (rhsColumns/487596375 var2991!9) var2855)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns> = $r9 
(define-const var55 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var55)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var55!1 String)
(assert (= var55!1 ""))
(define-const var1193 String (var552_getOnCondition/487347584 var1984 var1107 var1976 var1207)) ; Statement: $r12 = interfaceinvoke r2.<org.hibernate.type.AssociationType: java.lang.String getOnCondition(java.lang.String,org.hibernate.engine.spi.SessionFactoryImplementor,java.util.Map)>(r5, r7, r11) 
(assert true)
(define-const var2539 String (append/672562846 var55!1 var1193)) ; Statement: $r18 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var55!2 String)
(assert (= var55!2 (str.++ var55!1 var1193)))
(define-const var3292 Bool (var3213_isBlank/1295660402 var2446)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isBlank(java.lang.String)>(r13) 
 ; Statement: if $z0 == 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (= (ite var3292 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2664 String "") ; Statement: $r21 = "" 
 ; Statement: goto [?= $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var610 String (append/672562846 var2539 var2664)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2539!1 String)
(assert (= var2539!1 (str.++ var2539 var2664)))
(assert true)
(define-const var2477 String (toString/-2075883882 var610)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2991!10 var2663)
(assert (not (= var2991!10 null-var2663)))
(assert (= (on/487596375 var2991!10) var2477)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> = $r20 
(declare-const var2991!11 var2663)
(assert (not (= var2991!11 null-var2663)))
(assert (= (hasRestriction/487596375 var2991!11) var3848)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: boolean hasRestriction> = z1 
(declare-const var2991!12 var2663)
(assert (not (= var2991!12 null-var2663)))
(assert (= (enabledFilters/487596375 var2991!12) var1207)) ; Statement: r0.<org.hibernate.loader.OuterJoinableAssociation: java.util.Map enabledFilters> = r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2663-to-var1954=([org.hibernate.loader.OuterJoinableAssociation], java.lang.Object), propertyPath/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.loader.PropertyPath), joinableType/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.type.AssociationType), lhsAlias/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), lhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), rhsAlias/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), joinType/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.sql.JoinType), var552_getAssociatedJoinable/1447135194=([org.hibernate.type.AssociationType, org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.persister.entity.Joinable), joinable/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.persister.entity.Joinable), var39_getRHSColumnNames/2044831373=([org.hibernate.type.AssociationType, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String[]), rhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var552_getOnCondition/487347584=([org.hibernate.type.AssociationType, java.lang.String, org.hibernate.engine.spi.SessionFactoryImplementor, java.util.Map], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3213_isBlank/1295660402=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), on/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), hasRestriction/487596375=([org.hibernate.loader.OuterJoinableAssociation], boolean), enabledFilters/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.util.Map)}
; {var2663=org.hibernate.loader.OuterJoinableAssociation, var2991=r0, var3522=org.hibernate.loader.PropertyPath, var2510=r1, var552=org.hibernate.type.AssociationType, var1984=r2, var1822=r3, var1273=null_type, var425=r4, var1107=r5, var1989=org.hibernate.sql.JoinType, var261=r6, var2446=r13, var3848=z1, var1225=org.hibernate.engine.spi.SessionFactoryImplementor, var1976=r7, var369=java.util.Map, var1207=r11, var1954=java.lang.Object, var613=org.hibernate.persister.entity.Joinable, var681=$r8, var39=org.hibernate.engine.internal.JoinHelper, var2855=$r9, var55=$r10, var1193=$r12, var2539=$r18, var3213=org.hibernate.internal.util.StringHelper, var3292=$z0, var2664=$r21, var610=$r19, var2477=$r20}
; {org.hibernate.loader.OuterJoinableAssociation=var2663, r0=var2991, org.hibernate.loader.PropertyPath=var3522, r1=var2510, org.hibernate.type.AssociationType=var552, r2=var1984, r3=var1822, null_type=var1273, r4=var425, r5=var1107, org.hibernate.sql.JoinType=var1989, r6=var261, r13=var2446, z1=var3848, org.hibernate.engine.spi.SessionFactoryImplementor=var1225, r7=var1976, java.util.Map=var369, r11=var1207, java.lang.Object=var1954, org.hibernate.persister.entity.Joinable=var613, $r8=var681, org.hibernate.engine.internal.JoinHelper=var39, $r9=var2855, $r10=var55, $r12=var1193, $r18=var2539, org.hibernate.internal.util.StringHelper=var3213, $z0=var3292, $r21=var2664, $r19=var610, $r20=var2477}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.OuterJoinableAssociation;	r1 := @parameter0: org.hibernate.loader.PropertyPath;	r2 := @parameter1: org.hibernate.type.AssociationType;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	r5 := @parameter4: java.lang.String;	r6 := @parameter5: org.hibernate.sql.JoinType;	r13 := @parameter6: java.lang.String;	z1 := @parameter7: boolean;	r7 := @parameter8: org.hibernate.engine.spi.SessionFactoryImplementor;	r11 := @parameter9: java.util.Map;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.loader.PropertyPath propertyPath> = r1;	r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.type.AssociationType joinableType> = r2;	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String lhsAlias> = r3;	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] lhsColumns> = r4;	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> = r5;	r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.sql.JoinType joinType> = r6;	$r8 = interfaceinvoke r2.<org.hibernate.type.AssociationType: org.hibernate.persister.entity.Joinable getAssociatedJoinable(org.hibernate.engine.spi.SessionFactoryImplementor)>(r7);	r0.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> = $r8;	$r9 = staticinvoke <org.hibernate.engine.internal.JoinHelper: java.lang.String[] getRHSColumnNames(org.hibernate.type.AssociationType,org.hibernate.engine.spi.SessionFactoryImplementor)>(r2, r7);	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns> = $r9;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = interfaceinvoke r2.<org.hibernate.type.AssociationType: java.lang.String getOnCondition(java.lang.String,org.hibernate.engine.spi.SessionFactoryImplementor,java.util.Map)>(r5, r7, r11);	$r18 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isBlank(java.lang.String)>(r13);	if $z0 == 0 goto $r14 = new java.lang.StringBuilder;	$r21 = "";	goto [?= $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> = $r20;	r0.<org.hibernate.loader.OuterJoinableAssociation: boolean hasRestriction> = z1;	r0.<org.hibernate.loader.OuterJoinableAssociation: java.util.Map enabledFilters> = r11;	return
;block_num 3