(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1095 0)
(declare-sort var1514 0)
(declare-sort var3174 0)
(declare-sort var3159 0)
(declare-sort var481 0)
(declare-sort var2305 0)
(declare-sort var3760 0)
(declare-sort var1106 0)
(declare-sort var1677 0)
(declare-sort var2483 0)
(declare-sort var1203 0)
(declare-sort var3812 0)
(declare-sort var2083 0)
(declare-sort var1033 0)
(declare-sort var1518 0)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun updateResultCheckStyles/824079012 (var1095) (Array Int var2305))
(declare-fun var1106_appropriateExpectation/837025443 (var2305) var3760)
(declare-fun var481_getConfiguredJdbcBatchSize/-23385146 (var481) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun var3760_canBeBatched/1720590894 (var3760) Bool)
(declare-fun isUpdateCallable/54981605 (var1095 Int) Bool)
(declare-fun var1677_isTraceEnabled/-699489552 (var1677) Bool)
(declare-fun getFactory/36801881 (var1095) var1203)
(declare-fun var1203_getSQLExceptionHelper/176842062 (var1203) var3812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2083_infoString/-1303038331 (var1033 var3174 var1203) String)
(declare-fun cast-from-var1095-to-var1033 (var1095) var1033)
(declare-fun cast-from-var1514-to-var3174 (var1514) var3174)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/1666256987 (var3812 var2483 String String) var1518)
(declare-fun cast-from-var1518-to-var2636 (var1518) var2636)
(declare-const null-var1095 var1095)
(declare-const null-var1514 var1514)
(declare-const null-__Array__Int__var3174__ (Array Int var3174))
(declare-const null-var3174 var3174)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var481 var481)
(declare-const var1095-LOG var1677)
(declare-const null-var2483 var2483)
(declare-const var2975 var1095) ; Statement: r0 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2975 null-var1095)))
(declare-const var1647 var1514) ; Statement: r9 := @parameter0: java.io.Serializable 
(assert (not (= var1647 null-var1514)))
(declare-const var1185 (Array Int var3174)) ; Statement: r10 := @parameter1: java.lang.Object[] 
(assert (not (= var1185 null-__Array__Int__var3174__)))
(declare-const var3645 (Array Int var3174)) ; Statement: r25 := @parameter2: java.lang.Object[] 
(assert (not (= var3645 null-__Array__Int__var3174__)))
(declare-const var3458 var3174) ; Statement: r11 := @parameter3: java.lang.Object 
(assert (not (= var3458 null-var3174)))
(declare-const var1392 (Array Int Bool)) ; Statement: r12 := @parameter4: boolean[] 
(assert (not (= var1392 null-__Array__Int__Bool__)))
(declare-const var3341 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var3341 null-Int)))
(declare-const var214 var3174) ; Statement: r38 := @parameter6: java.lang.Object 
(assert (not (= var214 null-var3174)))
(declare-const var3 var3174) ; Statement: r71 := @parameter7: java.lang.Object 
(assert (not (= var3 null-var3174)))
(declare-const var1637 String) ; Statement: r7 := @parameter8: java.lang.String 
(assert (not (= var1637 null-String)))
(declare-const var487 var481) ; Statement: r4 := @parameter9: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var487 null-var481)))
(define-const var724 (Array Int var2305) (updateResultCheckStyles/824079012 var2975)) ; Statement: $r1 = r0.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle[] updateResultCheckStyles> 
(define-const var3690 var2305 (select var724 var3341)) ; Statement: $r2 = $r1[i0] 
(define-const var427 var3760 (var1106_appropriateExpectation/837025443 var3690)) ; Statement: r3 = staticinvoke <org.hibernate.jdbc.Expectations: org.hibernate.jdbc.Expectation appropriateExpectation(org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle)>($r2) 
(define-const var2564 Int (var481_getConfiguredJdbcBatchSize/-23385146 var487)) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.engine.spi.SharedSessionContractImplementor: java.lang.Integer getConfiguredJdbcBatchSize()>() 
(assert true)
(define-const var1288 Int (intValue/-1815674922 var2564)) ; Statement: i1 = virtualinvoke $r5.<java.lang.Integer: int intValue()>() 
(define-const var237 Bool (var3760_canBeBatched/1720590894 var427)) ; Statement: $z0 = interfaceinvoke r3.<org.hibernate.jdbc.Expectation: boolean canBeBatched()>() 
 ; Statement: if $z0 == 0 goto $z22 = 0 
(assert (= (ite var237 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2795 Bool (ite (= 1 0) true false)) ; Statement: $z22 = 0 
(define-const var1042 Bool (ite (= 1 0) true false)) ; Statement: $z21 = 0 
(assert true) ; Non Conditional
(define-const var2299 Bool var1042) ; Statement: z1 = $z21 
 ; Statement: if $z22 == 0 goto $z14 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: boolean isUpdateCallable(int)>(i0) 
(assert (= (ite var2795 1 0) 0)) ; Cond: $z22 == 0 
(assert true)
(define-const var1720 Bool (isUpdateCallable/54981605 var2975 var3341)) ; Statement: $z14 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: boolean isUpdateCallable(int)>(i0) 
 ; Statement: if i0 != 0 goto $z20 = 0 
(assert (not (= var3341 0))) ; Cond: i0 != 0 
(define-const var3138 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(define-const var781 Bool (ite (= 1 0) true false)) ; Statement: $z19 = 0 
(assert true) ; Non Conditional
(define-const var1 Bool var781) ; Statement: z2 = $z19 
(define-const var623 var1677 var1095-LOG) ; Statement: $r72 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3517 Bool (var1677_isTraceEnabled/-699489552 var623)) ; Statement: $z16 = interfaceinvoke $r72.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>() 
 ; Statement: if $z16 == 0 goto (branch) 
(assert (= (ite var3517 1 0) 0)) ; Cond: $z16 == 0 
 ; Statement: if z1 == 0 goto $r6 = interfaceinvoke r4.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcCoordinator getJdbcCoordinator()>() 
(assert (not (= (ite var2299 1 0) 0))) ; Negate: Cond: z1 == 0  
(declare-const var1529 var2483) ; Statement: $r55 := @caughtexception 
(assert (not (= var1529 null-var2483)))
(assert true)
(define-const var3156 var1203 (getFactory/36801881 var2975)) ; Statement: $r56 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3358 var3812 (var1203_getSQLExceptionHelper/176842062 var3156)) ; Statement: $r63 = interfaceinvoke $r56.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>() 
(define-const var2782 String String-init) ; Statement: $r79 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2782)) ; Statement: specialinvoke $r79.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2782!1 String)
(assert (= var2782!1 ""))
(assert true)
(define-const var2254 String (append/672562846 var2782!1 "could not update: ")) ; Statement: $r60 = virtualinvoke $r79.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not update: ") 
(declare-const var2782!2 String)
(assert (= var2782!2 (str.++ var2782!1 "could not update: ")))
(assert true)
(define-const var1845 var1203 (getFactory/36801881 var2975)) ; Statement: $r58 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2566 String (var2083_infoString/-1303038331 (cast-from-var1095-to-var1033 var2975) (cast-from-var1514-to-var3174 var1647) var1845)) ; Statement: $r59 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r0, r9, $r58) 
(assert true)
(define-const var3395 String (append/672562846 var2254 var2566)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r59) 
(declare-const var2254!1 String)
(assert (= var2254!1 (str.++ var2254 var2566)))
(assert true)
(define-const var655 String (toString/-2075883882 var3395)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var412 var1518 (convert/1666256987 var3358 var1529 var655 var1637)) ; Statement: $r64 = virtualinvoke $r63.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r55, $r62, r7) 
(define-const var126 var2636 (cast-from-var1518-to-var2636 var412)) ; Statement: $r80 = (java.lang.Throwable) $r64 
 ; Statement: throw $r80 
(check-sat)
(get-model)
(get-unsat-core)
; {updateResultCheckStyles/824079012=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle[]), var1106_appropriateExpectation/837025443=([org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle], org.hibernate.jdbc.Expectation), var481_getConfiguredJdbcBatchSize/-23385146=([org.hibernate.engine.spi.SharedSessionContractImplementor], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), var3760_canBeBatched/1720590894=([org.hibernate.jdbc.Expectation], boolean), isUpdateCallable/54981605=([org.hibernate.persister.entity.AbstractEntityPersister, int], boolean), var1677_isTraceEnabled/-699489552=([org.hibernate.internal.CoreMessageLogger], boolean), getFactory/36801881=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var1203_getSQLExceptionHelper/176842062=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2083_infoString/-1303038331=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var1095-to-var1033=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.EntityPersister), cast-from-var1514-to-var3174=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var1518-to-var2636=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1095=org.hibernate.persister.entity.AbstractEntityPersister, var2975=r0, var1514=java.io.Serializable, var1647=r9, var3174=java.lang.Object, var1185=r10, var3645=r25, var3458=r11, var1392=r12, var3341=i0, var214=r38, var3=r71, var1637=r7, var3159=null_type, var481=org.hibernate.engine.spi.SharedSessionContractImplementor, var487=r4, var2305=org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle, var724=$r1, var3690=$r2, var3760=org.hibernate.jdbc.Expectation, var1106=org.hibernate.jdbc.Expectations, var427=r3, var2564=$r5, var1288=i1, var237=$z0, var2795=$z22, var1042=$z21, var2299=z1, var1720=$z14, var3138=$z20, var781=$z19, var1=z2, var1677=org.hibernate.internal.CoreMessageLogger, var623=$r72, var3517=$z16, var2483=java.sql.SQLException, var1529=$r55, var1203=org.hibernate.engine.spi.SessionFactoryImplementor, var3156=$r56, var3812=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var3358=$r63, var2782=$r79, var2254=$r60, var1845=$r58, var2083=org.hibernate.pretty.MessageHelper, var1033=org.hibernate.persister.entity.EntityPersister, var2566=$r59, var3395=$r61, var655=$r62, var1518=org.hibernate.JDBCException, var412=$r64, var2636=java.lang.Throwable, var126=$r80}
; {org.hibernate.persister.entity.AbstractEntityPersister=var1095, r0=var2975, java.io.Serializable=var1514, r9=var1647, java.lang.Object=var3174, r10=var1185, r25=var3645, r11=var3458, r12=var1392, i0=var3341, r38=var214, r71=var3, r7=var1637, null_type=var3159, org.hibernate.engine.spi.SharedSessionContractImplementor=var481, r4=var487, org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle=var2305, $r1=var724, $r2=var3690, org.hibernate.jdbc.Expectation=var3760, org.hibernate.jdbc.Expectations=var1106, r3=var427, $r5=var2564, i1=var1288, $z0=var237, $z22=var2795, $z21=var1042, z1=var2299, $z14=var1720, $z20=var3138, $z19=var781, z2=var1, org.hibernate.internal.CoreMessageLogger=var1677, $r72=var623, $z16=var3517, java.sql.SQLException=var2483, $r55=var1529, org.hibernate.engine.spi.SessionFactoryImplementor=var1203, $r56=var3156, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var3812, $r63=var3358, $r79=var2782, $r60=var2254, $r58=var1845, org.hibernate.pretty.MessageHelper=var2083, org.hibernate.persister.entity.EntityPersister=var1033, $r59=var2566, $r61=var3395, $r62=var655, org.hibernate.JDBCException=var1518, $r64=var412, java.lang.Throwable=var2636, $r80=var126}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r9 := @parameter0: java.io.Serializable;	r10 := @parameter1: java.lang.Object[];	r25 := @parameter2: java.lang.Object[];	r11 := @parameter3: java.lang.Object;	r12 := @parameter4: boolean[];	i0 := @parameter5: int;	r38 := @parameter6: java.lang.Object;	r71 := @parameter7: java.lang.Object;	r7 := @parameter8: java.lang.String;	r4 := @parameter9: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle[] updateResultCheckStyles>;	$r2 = $r1[i0];	r3 = staticinvoke <org.hibernate.jdbc.Expectations: org.hibernate.jdbc.Expectation appropriateExpectation(org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle)>($r2);	$r5 = interfaceinvoke r4.<org.hibernate.engine.spi.SharedSessionContractImplementor: java.lang.Integer getConfiguredJdbcBatchSize()>();	i1 = virtualinvoke $r5.<java.lang.Integer: int intValue()>();	$z0 = interfaceinvoke r3.<org.hibernate.jdbc.Expectation: boolean canBeBatched()>();	if $z0 == 0 goto $z22 = 0;	$z22 = 0;	$z21 = 0;	z1 = $z21;	if $z22 == 0 goto $z14 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: boolean isUpdateCallable(int)>(i0);	$z14 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: boolean isUpdateCallable(int)>(i0);	if i0 != 0 goto $z20 = 0;	$z20 = 0;	$z19 = 0;	z2 = $z19;	$r72 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG>;	$z16 = interfaceinvoke $r72.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>();	if $z16 == 0 goto (branch);	if z1 == 0 goto $r6 = interfaceinvoke r4.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcCoordinator getJdbcCoordinator()>();	$r55 := @caughtexception;	$r56 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r63 = interfaceinvoke $r56.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>();	$r79 = new java.lang.StringBuilder;	specialinvoke $r79.<java.lang.StringBuilder: void <init>()>();	$r60 = virtualinvoke $r79.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not update: ");	$r58 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r59 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r0, r9, $r58);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r59);	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>();	$r64 = virtualinvoke $r63.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r55, $r62, r7);	$r80 = (java.lang.Throwable) $r64;	throw $r80
;block_num 8