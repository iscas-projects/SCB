(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3672 0)
(declare-sort var2395 0)
(declare-sort var1613 0)
(declare-sort var3580 0)
(declare-sort var2984 0)
(declare-sort var3482 0)
(declare-sort var3089 0)
(declare-sort var2814 0)
(declare-sort var2903 0)
(declare-sort var505 0)
(declare-sort var186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1613-init () var1613)
(declare-fun getFactory/36801881 (var3672) var3580)
(declare-fun var3580_getDialect/549556505 (var3580) var2984)
(declare-fun <init>/-604569825 (var1613 var2984) void)
(declare-fun var3089_getSessionFactoryOptions/-1909602825 (var3089) var3482)
(declare-fun cast-from-var3580-to-var3089 (var3580) var3089)
(declare-fun var3482_isCommentsEnabled/348952998 (var3482) Bool)
(declare-fun getRootAlias/-884767280 (var3672) String)
(declare-fun getIdentifierColumnNames/-1043261065 (var3672) (Array Int String))
(declare-fun var2814_qualify/-195745679 (String (Array Int String)) (Array Int String))
(declare-fun var505_bootstrap$/-1352703693 (var3672 var2395) var2903)
(declare-fun concretePropertySelectFragment/-262485516 (var3672 String var2903) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fromTableFragment/-838615174 (var186 String) String)
(declare-fun cast-from-var3672-to-var186 (var3672) var186)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fromJoinFragment/-1778024351 (var3672 String Bool Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun whereJoinFragment/-433422514 (var3672 String Bool Bool) String)
(declare-fun setSelectClause/398150799 (var1613 String) var1613)
(declare-fun setFromClause/1818208161 (var1613 String) var1613)
(declare-fun setOuterJoins/840368943 (var1613 String String) var1613)
(declare-fun setWhereClause/1091603732 (var1613 String) var1613)
(declare-fun toStatementString/-1084413137 (var1613) String)
(declare-const null-var3672 var3672)
(declare-const null-var2395 var2395)
(declare-const var2824 var3672) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2824 null-var3672)))
(declare-const var2938 var2395) ; Statement: r8 := @parameter0: org.hibernate.tuple.GenerationTiming 
(assert (not (= var2938 null-var2395)))
(define-const var2590 var1613 var1613-init) ; Statement: $r0 = new org.hibernate.sql.Select 
(assert true)
(define-const var3320 var3580 (getFactory/36801881 var2824)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3062 var2984 (var3580_getDialect/549556505 var3320)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
;(assert (<init>/-604569825 var2590 var3062)) ; Statement: specialinvoke $r0.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r3) 

(declare-const var2590!1 var1613)
(declare-const var3062!1 var2984)
(assert true)
(define-const var3924 var3580 (getFactory/36801881 var2824)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2704 var3482 (var3089_getSessionFactoryOptions/-1909602825 (cast-from-var3580-to-var3089 var3924))) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var2354 Bool (var3482_isCommentsEnabled/348952998 var2704)) ; Statement: $z0 = interfaceinvoke $r5.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r7 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>() 
(assert (= (ite var2354 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2727 String (getRootAlias/-884767280 var2824)) ; Statement: $r7 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>() 
(assert true)
(define-const var1856 (Array Int String) (getIdentifierColumnNames/-1043261065 var2824)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var469 (Array Int String) (var2814_qualify/-195745679 var2727 var1856)) ; Statement: $r35 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] qualify(java.lang.String,java.lang.String[])>($r7, $r6) 
(assert true)
(define-const var3871 String (getRootAlias/-884767280 var2824)) ; Statement: $r10 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>() 
(define-const var2239 var2903 (var505_bootstrap$/-1352703693 var2824 var2938)) ; Statement: $r9 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister$lambda_generateGeneratedValuesSelectString_2__269: org.hibernate.persister.entity.AbstractEntityPersister$InclusionChecker bootstrap$(org.hibernate.persister.entity.AbstractEntityPersister,org.hibernate.tuple.GenerationTiming)>(r1, r8) 
(assert true)
(define-const var939 String (concretePropertySelectFragment/-262485516 var2824 var3871 var2239)) ; Statement: $r36 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String concretePropertySelectFragment(java.lang.String,org.hibernate.persister.entity.AbstractEntityPersister$InclusionChecker)>($r10, $r9) 
(assert (not (and true (and (>= 2 0) (>= (str.len var939) 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1613-init=([], org.hibernate.sql.Select), getFactory/36801881=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var3580_getDialect/549556505=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.dialect.Dialect), <init>/-604569825=([org.hibernate.sql.Select, org.hibernate.dialect.Dialect], void), var3089_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var3580-to-var3089=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var3482_isCommentsEnabled/348952998=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), getRootAlias/-884767280=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), getIdentifierColumnNames/-1043261065=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String[]), var2814_qualify/-195745679=([java.lang.String, java.lang.String[]], java.lang.String[]), var505_bootstrap$/-1352703693=([org.hibernate.persister.entity.AbstractEntityPersister, org.hibernate.tuple.GenerationTiming], org.hibernate.persister.entity.AbstractEntityPersister$InclusionChecker), concretePropertySelectFragment/-262485516=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, org.hibernate.persister.entity.AbstractEntityPersister$InclusionChecker], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fromTableFragment/-838615174=([org.hibernate.persister.entity.OuterJoinLoadable, java.lang.String], java.lang.String), cast-from-var3672-to-var186=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.OuterJoinLoadable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fromJoinFragment/-1778024351=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, boolean, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), whereJoinFragment/-433422514=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, boolean, boolean], java.lang.String), setSelectClause/398150799=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setFromClause/1818208161=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setOuterJoins/840368943=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), setWhereClause/1091603732=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), toStatementString/-1084413137=([org.hibernate.sql.Select], java.lang.String)}
; {var3672=org.hibernate.persister.entity.AbstractEntityPersister, var2824=r1, var2395=org.hibernate.tuple.GenerationTiming, var2938=r8, var1613=org.hibernate.sql.Select, var2590=$r0, var3580=org.hibernate.engine.spi.SessionFactoryImplementor, var3320=$r2, var2984=org.hibernate.dialect.Dialect, var3062=$r3, var3924=$r4, var3482=org.hibernate.boot.spi.SessionFactoryOptions, var3089=org.hibernate.SessionFactory, var2704=$r5, var2354=$z0, var2727=$r7, var1856=$r6, var2814=org.hibernate.internal.util.StringHelper, var469=$r35, var3871=$r10, var2903=org.hibernate.persister.entity.AbstractEntityPersister$InclusionChecker, var505=org.hibernate.persister.entity.AbstractEntityPersister$lambda_generateGeneratedValuesSelectString_2__269, var2239=$r9, var939=$r36, var83=$r37, var3631=$r11, var777=$r12, var186=org.hibernate.persister.entity.OuterJoinLoadable, var3662=$r13, var3573=$r16, var3675=$r14, var2679=$r15, var2005=$r17, var2686=$r38, var2682=$r18, var2561=$r19, var480=$r20, var1181=$r23, var3913=$r21, var2243=$r22, var3283=$r24, var3385=$r39, var1324=$r25, var1907=$r26, var1958=$r27, var1543=$r28, var2820=$r29}
; {org.hibernate.persister.entity.AbstractEntityPersister=var3672, r1=var2824, org.hibernate.tuple.GenerationTiming=var2395, r8=var2938, org.hibernate.sql.Select=var1613, $r0=var2590, org.hibernate.engine.spi.SessionFactoryImplementor=var3580, $r2=var3320, org.hibernate.dialect.Dialect=var2984, $r3=var3062, $r4=var3924, org.hibernate.boot.spi.SessionFactoryOptions=var3482, org.hibernate.SessionFactory=var3089, $r5=var2704, $z0=var2354, $r7=var2727, $r6=var1856, org.hibernate.internal.util.StringHelper=var2814, $r35=var469, $r10=var3871, org.hibernate.persister.entity.AbstractEntityPersister$InclusionChecker=var2903, org.hibernate.persister.entity.AbstractEntityPersister$lambda_generateGeneratedValuesSelectString_2__269=var505, $r9=var2239, $r36=var939, $r37=var83, $r11=var3631, $r12=var777, org.hibernate.persister.entity.OuterJoinLoadable=var186, $r13=var3662, $r16=var3573, $r14=var3675, $r15=var2679, $r17=var2005, $r38=var2686, $r18=var2682, $r19=var2561, $r20=var480, $r23=var1181, $r21=var3913, $r22=var2243, $r24=var3283, $r39=var3385, $r25=var1324, $r26=var1907, $r27=var1958, $r28=var1543, $r29=var2820}
;seq <java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r8 := @parameter0: org.hibernate.tuple.GenerationTiming;	$r0 = new org.hibernate.sql.Select;	$r2 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>();	specialinvoke $r0.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r3);	$r4 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r5.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>();	if $z0 == 0 goto $r7 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	$r7 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	$r6 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierColumnNames()>();	$r35 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] qualify(java.lang.String,java.lang.String[])>($r7, $r6);	$r10 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	$r9 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister$lambda_generateGeneratedValuesSelectString_2__269: org.hibernate.persister.entity.AbstractEntityPersister$InclusionChecker bootstrap$(org.hibernate.persister.entity.AbstractEntityPersister,org.hibernate.tuple.GenerationTiming)>(r1, r8);	$r36 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String concretePropertySelectFragment(java.lang.String,org.hibernate.persister.entity.AbstractEntityPersister$InclusionChecker)>($r10, $r9);	$r37 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>(2);	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	$r13 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String fromTableFragment(java.lang.String)>($r12);	$r16 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r14 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	$r15 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r14, 1, 0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r38 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("=? and ", $r35);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?");	$r21 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	$r22 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r21, 1, 0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r39 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r37);	$r26 = virtualinvoke $r25.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r38);	$r27 = virtualinvoke $r26.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>("", "");	$r28 = virtualinvoke $r27.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r39);	$r29 = virtualinvoke $r28.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	return $r29
;block_num 2