(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2381 0)
(declare-sort var3967 0)
(declare-sort var193 0)
(declare-sort var1611 0)
(declare-sort var3757 0)
(declare-sort var329 0)
(declare-sort var3859 0)
(declare-sort var2324 0)
(declare-sort var2338 0)
(declare-sort var1509 0)
(declare-sort var2931 0)
(declare-sort var3677 0)
(declare-sort var1480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-243918656 (var329 var3967 var1611 var3757) void)
(declare-fun cast-from-var2381-to-var329 (var2381) var329)
(declare-fun var3859-init () var3859)
(declare-fun <init>/-2121252426 (var3859) void)
(declare-fun lockOptions/-1268760295 (var2381) var3859)
(declare-fun setLockMode/634183051 (var3859 var193) var3859)
(declare-fun getAlias/-1544776148 (var329) String)
(declare-fun whereString/500907501 (var2324 String (Array Int String) Int) String)
(declare-fun cast-from-var2381-to-var2324 (var2381) var2324)
(declare-fun var2931_filterFragment/1785996213 (var2931 String var2338) String)
(declare-fun cast-from-var3967-to-var2931 (var3967) var2931)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3677-init () var3677)
(declare-fun <init>/-1720300714 (var3677 var1611) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun initAll/-707196098 (var329 String String var3859 var1480) void)
(declare-fun cast-from-var3677-to-var1480 (var3677) var1480)
(declare-fun resolve/-1457745781 (var3677) (Array Int (Array Int Int)))
(declare-fun compositeKeyManyToOneTargetIndices/-1268760295 (var2381) (Array Int (Array Int Int)))
(declare-const null-var2381 var2381)
(declare-const null-var3967 var3967)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const null-var193 var193)
(declare-const null-var1611 var1611)
(declare-const null-var3757 var3757)
(declare-const var1509-EMPTY_MAP var2338)
(declare-const var2965 var2381) ; Statement: r0 := @this: org.hibernate.loader.entity.EntityJoinWalker 
(assert (not (= var2965 null-var2381)))
(declare-const var1147 var3967) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.OuterJoinLoadable 
(assert (not (= var1147 null-var3967)))
(declare-const var605 (Array Int String)) ; Statement: r7 := @parameter1: java.lang.String[] 
(assert (not (= var605 null-__Array__Int__String__)))
(declare-const var2517 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2517 null-Int)))
(declare-const var3584 var193) ; Statement: r5 := @parameter3: org.hibernate.LockMode 
(assert (not (= var3584 null-var193)))
(declare-const var3243 var1611) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3243 null-var1611)))
(declare-const var114 var3757) ; Statement: r3 := @parameter5: org.hibernate.engine.spi.LoadQueryInfluencers 
(assert (not (= var114 null-var3757)))
(assert true)
;(assert (<init>/-243918656 (cast-from-var2381-to-var329 var2965) var1147 var3243 var114)) ; Statement: specialinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.engine.spi.LoadQueryInfluencers)>(r1, r2, r3) 

(declare-const var2965!1 var2381)
(declare-const var1147!1 var3967)
(declare-const var3243!1 var1611)
(declare-const var114!1 var3757)
(define-const var198 var3859 var3859-init) ; Statement: $r4 = new org.hibernate.LockOptions 
(assert true)
;(assert (<init>/-2121252426 var198)) ; Statement: specialinvoke $r4.<org.hibernate.LockOptions: void <init>()>() 

(declare-const var198!1 var3859)
(declare-const var2965!2 var2381)
(assert (not (= var2965!2 null-var2381)))
(assert (= (lockOptions/-1268760295 var2965!2) var198!1)) ; Statement: r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> = $r4 
(define-const var932 var3859 (lockOptions/-1268760295 var2965!2)) ; Statement: $r6 = r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> 
(assert true)
;(assert (setLockMode/634183051 var932 var3584)) ; Statement: virtualinvoke $r6.<org.hibernate.LockOptions: org.hibernate.LockOptions setLockMode(org.hibernate.LockMode)>(r5) 

(declare-const var932!1 var3859)
(declare-const var3584!1 var193)
(assert true)
(define-const var1555 String (getAlias/-1544776148 (cast-from-var2381-to-var329 var2965!2))) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>() 
(assert true)
(define-const var2597 String (whereString/500907501 (cast-from-var2381-to-var2324 var2965!2) var1555 var605 var2517)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],int)>($r8, r7, i0) 
(assert true)
(define-const var604 String (getAlias/-1544776148 (cast-from-var2381-to-var329 var2965!2))) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>() 
(define-const var1313 var2338 var1509-EMPTY_MAP) ; Statement: $r9 = <java.util.Collections: java.util.Map EMPTY_MAP> 
(define-const var3552 String (var2931_filterFragment/1785996213 (cast-from-var3967-to-var2931 var1147!1) var604 var1313)) ; Statement: $r11 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r10, $r9) 
(assert true)
(define-const var1991 String (append/672562846 var2597 var3552)) ; Statement: r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2597!1 String)
(assert (= var2597!1 (str.++ var2597 var3552)))
(define-const var1569 var3677 var3677-init) ; Statement: $r14 = new org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl 
(assert true)
;(assert (<init>/-1720300714 var1569 var3243!1)) ; Statement: specialinvoke $r14.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r2) 

(declare-const var1569!1 var3677)
(declare-const var3243!2 var1611)
(assert true)
(define-const var2275 String (toString/-2075883882 var1991)) ; Statement: $r16 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var894 var3859 (lockOptions/-1268760295 var2965!2)) ; Statement: $r15 = r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> 
(assert true)
;(assert (initAll/-707196098 (cast-from-var2381-to-var329 var2965!2) var2275 "" var894 (cast-from-var3677-to-var1480 var1569!1))) ; Statement: virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: void initAll(java.lang.String,java.lang.String,org.hibernate.LockOptions,org.hibernate.loader.JoinWalker$AssociationInitCallback)>($r16, "", $r15, $r14) 

(declare-const var2965!3 var2381)
(declare-const var2275!1 String)
(declare-const var2980 String)
(declare-const var894!1 var3859)
(declare-const var1569!2 var3677)
(assert true)
(define-const var1455 (Array Int (Array Int Int)) (resolve/-1457745781 var1569!2)) ; Statement: $r17 = virtualinvoke $r14.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: int[][] resolve()>() 
(declare-const var2965!4 var2381)
(assert (not (= var2965!4 null-var2381)))
(assert (= (compositeKeyManyToOneTargetIndices/-1268760295 var2965!4) var1455)) ; Statement: r0.<org.hibernate.loader.entity.EntityJoinWalker: int[][] compositeKeyManyToOneTargetIndices> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-243918656=([org.hibernate.loader.AbstractEntityJoinWalker, org.hibernate.persister.entity.OuterJoinLoadable, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.engine.spi.LoadQueryInfluencers], void), cast-from-var2381-to-var329=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.loader.AbstractEntityJoinWalker), var3859-init=([], org.hibernate.LockOptions), <init>/-2121252426=([org.hibernate.LockOptions], void), lockOptions/-1268760295=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.LockOptions), setLockMode/634183051=([org.hibernate.LockOptions, org.hibernate.LockMode], org.hibernate.LockOptions), getAlias/-1544776148=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), whereString/500907501=([org.hibernate.loader.JoinWalker, java.lang.String, java.lang.String[], int], java.lang.StringBuilder), cast-from-var2381-to-var2324=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.loader.JoinWalker), var2931_filterFragment/1785996213=([org.hibernate.persister.entity.Joinable, java.lang.String, java.util.Map], java.lang.String), cast-from-var3967-to-var2931=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Joinable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3677-init=([], org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl), <init>/-1720300714=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl, org.hibernate.engine.spi.SessionFactoryImplementor], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), initAll/-707196098=([org.hibernate.loader.AbstractEntityJoinWalker, java.lang.String, java.lang.String, org.hibernate.LockOptions, org.hibernate.loader.JoinWalker$AssociationInitCallback], void), cast-from-var3677-to-var1480=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], org.hibernate.loader.JoinWalker$AssociationInitCallback), resolve/-1457745781=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], int[][]), compositeKeyManyToOneTargetIndices/-1268760295=([org.hibernate.loader.entity.EntityJoinWalker], int[][])}
; {var2381=org.hibernate.loader.entity.EntityJoinWalker, var2965=r0, var3967=org.hibernate.persister.entity.OuterJoinLoadable, var1147=r1, var605=r7, var2517=i0, var193=org.hibernate.LockMode, var3584=r5, var1611=org.hibernate.engine.spi.SessionFactoryImplementor, var3243=r2, var3757=org.hibernate.engine.spi.LoadQueryInfluencers, var114=r3, var329=org.hibernate.loader.AbstractEntityJoinWalker, var3859=org.hibernate.LockOptions, var198=$r4, var932=$r6, var1555=$r8, var2324=org.hibernate.loader.JoinWalker, var2597=$r12, var604=$r10, var2338=java.util.Map, var1509=java.util.Collections, var1313=$r9, var2931=org.hibernate.persister.entity.Joinable, var3552=$r11, var1991=r13, var3677=org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl, var1569=$r14, var2275=$r16, var894=$r15, var1480=org.hibernate.loader.JoinWalker$AssociationInitCallback, var2980="", var1455=$r17}
; {org.hibernate.loader.entity.EntityJoinWalker=var2381, r0=var2965, org.hibernate.persister.entity.OuterJoinLoadable=var3967, r1=var1147, r7=var605, i0=var2517, org.hibernate.LockMode=var193, r5=var3584, org.hibernate.engine.spi.SessionFactoryImplementor=var1611, r2=var3243, org.hibernate.engine.spi.LoadQueryInfluencers=var3757, r3=var114, org.hibernate.loader.AbstractEntityJoinWalker=var329, org.hibernate.LockOptions=var3859, $r4=var198, $r6=var932, $r8=var1555, org.hibernate.loader.JoinWalker=var2324, $r12=var2597, $r10=var604, java.util.Map=var2338, java.util.Collections=var1509, $r9=var1313, org.hibernate.persister.entity.Joinable=var2931, $r11=var3552, r13=var1991, org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl=var3677, $r14=var1569, $r16=var2275, $r15=var894, org.hibernate.loader.JoinWalker$AssociationInitCallback=var1480, ""=var2980, $r17=var1455}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.entity.EntityJoinWalker;	r1 := @parameter0: org.hibernate.persister.entity.OuterJoinLoadable;	r7 := @parameter1: java.lang.String[];	i0 := @parameter2: int;	r5 := @parameter3: org.hibernate.LockMode;	r2 := @parameter4: org.hibernate.engine.spi.SessionFactoryImplementor;	r3 := @parameter5: org.hibernate.engine.spi.LoadQueryInfluencers;	specialinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.engine.spi.LoadQueryInfluencers)>(r1, r2, r3);	$r4 = new org.hibernate.LockOptions;	specialinvoke $r4.<org.hibernate.LockOptions: void <init>()>();	r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> = $r4;	$r6 = r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions>;	virtualinvoke $r6.<org.hibernate.LockOptions: org.hibernate.LockOptions setLockMode(org.hibernate.LockMode)>(r5);	$r8 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>();	$r12 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],int)>($r8, r7, i0);	$r10 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>();	$r9 = <java.util.Collections: java.util.Map EMPTY_MAP>;	$r11 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r10, $r9);	r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = new org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl;	specialinvoke $r14.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r2);	$r16 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions>;	virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: void initAll(java.lang.String,java.lang.String,org.hibernate.LockOptions,org.hibernate.loader.JoinWalker$AssociationInitCallback)>($r16, "", $r15, $r14);	$r17 = virtualinvoke $r14.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: int[][] resolve()>();	r0.<org.hibernate.loader.entity.EntityJoinWalker: int[][] compositeKeyManyToOneTargetIndices> = $r17;	return
;block_num 1