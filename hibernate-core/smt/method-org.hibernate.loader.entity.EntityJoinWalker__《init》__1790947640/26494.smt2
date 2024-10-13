(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1800 0)
(declare-sort var400 0)
(declare-sort var78 0)
(declare-sort var3489 0)
(declare-sort var324 0)
(declare-sort var456 0)
(declare-sort var2347 0)
(declare-sort var745 0)
(declare-sort var172 0)
(declare-sort var2115 0)
(declare-sort var827 0)
(declare-sort var3014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-243918656 (var456 var400 var3489 var324) void)
(declare-fun cast-from-var1800-to-var456 (var1800) var456)
(declare-fun var78-init () var78)
(declare-fun <init>/-2121252426 (var78) void)
(declare-fun lockOptions/-1268760295 (var1800) var78)
(declare-fun var78_copy/1649826650 (var78 var78) var78)
(declare-fun getAlias/-1544776148 (var456) String)
(declare-fun whereString/1342922763 (var2347 String (Array Int String) (Array Int Bool) Int) String)
(declare-fun cast-from-var1800-to-var2347 (var1800) var2347)
(declare-fun var2115_filterFragment/1785996213 (var2115 String var745) String)
(declare-fun cast-from-var400-to-var2115 (var400) var2115)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var827-init () var827)
(declare-fun <init>/-1720300714 (var827 var3489) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun initAll/-707196098 (var456 String String var78 var3014) void)
(declare-fun cast-from-var827-to-var3014 (var827) var3014)
(declare-fun resolve/-1457745781 (var827) (Array Int (Array Int Int)))
(declare-fun compositeKeyManyToOneTargetIndices/-1268760295 (var1800) (Array Int (Array Int Int)))
(declare-const null-var1800 var1800)
(declare-const null-var400 var400)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const null-var78 var78)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-var3489 var3489)
(declare-const null-var324 var324)
(declare-const var172-EMPTY_MAP var745)
(declare-const var2434 var1800) ; Statement: r0 := @this: org.hibernate.loader.entity.EntityJoinWalker 
(assert (not (= var2434 null-var1800)))
(declare-const var2388 var400) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.OuterJoinLoadable 
(assert (not (= var2388 null-var400)))
(declare-const var1838 (Array Int String)) ; Statement: r7 := @parameter1: java.lang.String[] 
(assert (not (= var1838 null-__Array__Int__String__)))
(declare-const var1492 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1492 null-Int)))
(declare-const var598 var78) ; Statement: r5 := @parameter3: org.hibernate.LockOptions 
(assert (not (= var598 null-var78)))
(declare-const var2789 (Array Int Bool)) ; Statement: r8 := @parameter4: boolean[] 
(assert (not (= var2789 null-__Array__Int__Bool__)))
(declare-const var2668 var3489) ; Statement: r2 := @parameter5: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2668 null-var3489)))
(declare-const var34 var324) ; Statement: r3 := @parameter6: org.hibernate.engine.spi.LoadQueryInfluencers 
(assert (not (= var34 null-var324)))
(assert true)
;(assert (<init>/-243918656 (cast-from-var1800-to-var456 var2434) var2388 var2668 var34)) ; Statement: specialinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.engine.spi.LoadQueryInfluencers)>(r1, r2, r3) 

(declare-const var2434!1 var1800)
(declare-const var2388!1 var400)
(declare-const var2668!1 var3489)
(declare-const var34!1 var324)
(define-const var3013 var78 var78-init) ; Statement: $r4 = new org.hibernate.LockOptions 
(assert true)
;(assert (<init>/-2121252426 var3013)) ; Statement: specialinvoke $r4.<org.hibernate.LockOptions: void <init>()>() 

(declare-const var3013!1 var78)
(declare-const var2434!2 var1800)
(assert (not (= var2434!2 null-var1800)))
(assert (= (lockOptions/-1268760295 var2434!2) var3013!1)) ; Statement: r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> = $r4 
(define-const var3794 var78 (lockOptions/-1268760295 var2434!2)) ; Statement: $r6 = r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> 
;(assert (var78_copy/1649826650 var598 var3794)) ; Statement: staticinvoke <org.hibernate.LockOptions: org.hibernate.LockOptions copy(org.hibernate.LockOptions,org.hibernate.LockOptions)>(r5, $r6) 

(declare-const var598!1 var78)
(declare-const var3794!1 var78)
(assert true)
(define-const var2598 String (getAlias/-1544776148 (cast-from-var1800-to-var456 var2434!2))) ; Statement: $r9 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>() 
(assert true)
(define-const var3755 String (whereString/1342922763 (cast-from-var1800-to-var2347 var2434!2) var2598 var1838 var2789 var1492)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],boolean[],int)>($r9, r7, r8, i0) 
(assert true)
(define-const var526 String (getAlias/-1544776148 (cast-from-var1800-to-var456 var2434!2))) ; Statement: $r11 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>() 
(define-const var826 var745 var172-EMPTY_MAP) ; Statement: $r10 = <java.util.Collections: java.util.Map EMPTY_MAP> 
(define-const var3950 String (var2115_filterFragment/1785996213 (cast-from-var400-to-var2115 var2388!1) var526 var826)) ; Statement: $r12 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r11, $r10) 
(assert true)
(define-const var1430 String (append/672562846 var3755 var3950)) ; Statement: r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3755!1 String)
(assert (= var3755!1 (str.++ var3755 var3950)))
(define-const var1521 var827 var827-init) ; Statement: $r15 = new org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl 
(assert true)
;(assert (<init>/-1720300714 var1521 var2668!1)) ; Statement: specialinvoke $r15.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r2) 

(declare-const var1521!1 var827)
(declare-const var2668!2 var3489)
(assert true)
(define-const var482 String (toString/-2075883882 var1430)) ; Statement: $r16 = virtualinvoke r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (initAll/-707196098 (cast-from-var1800-to-var456 var2434!2) var482 "" var598!1 (cast-from-var827-to-var3014 var1521!1))) ; Statement: virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: void initAll(java.lang.String,java.lang.String,org.hibernate.LockOptions,org.hibernate.loader.JoinWalker$AssociationInitCallback)>($r16, "", r5, $r15) 

(declare-const var2434!3 var1800)
(declare-const var482!1 String)
(declare-const var3119 String)
(declare-const var598!2 var78)
(declare-const var1521!2 var827)
(assert true)
(define-const var3330 (Array Int (Array Int Int)) (resolve/-1457745781 var1521!2)) ; Statement: $r17 = virtualinvoke $r15.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: int[][] resolve()>() 
(declare-const var2434!4 var1800)
(assert (not (= var2434!4 null-var1800)))
(assert (= (compositeKeyManyToOneTargetIndices/-1268760295 var2434!4) var3330)) ; Statement: r0.<org.hibernate.loader.entity.EntityJoinWalker: int[][] compositeKeyManyToOneTargetIndices> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-243918656=([org.hibernate.loader.AbstractEntityJoinWalker, org.hibernate.persister.entity.OuterJoinLoadable, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.engine.spi.LoadQueryInfluencers], void), cast-from-var1800-to-var456=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.loader.AbstractEntityJoinWalker), var78-init=([], org.hibernate.LockOptions), <init>/-2121252426=([org.hibernate.LockOptions], void), lockOptions/-1268760295=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.LockOptions), var78_copy/1649826650=([org.hibernate.LockOptions, org.hibernate.LockOptions], org.hibernate.LockOptions), getAlias/-1544776148=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), whereString/1342922763=([org.hibernate.loader.JoinWalker, java.lang.String, java.lang.String[], boolean[], int], java.lang.StringBuilder), cast-from-var1800-to-var2347=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.loader.JoinWalker), var2115_filterFragment/1785996213=([org.hibernate.persister.entity.Joinable, java.lang.String, java.util.Map], java.lang.String), cast-from-var400-to-var2115=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Joinable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var827-init=([], org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl), <init>/-1720300714=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl, org.hibernate.engine.spi.SessionFactoryImplementor], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), initAll/-707196098=([org.hibernate.loader.AbstractEntityJoinWalker, java.lang.String, java.lang.String, org.hibernate.LockOptions, org.hibernate.loader.JoinWalker$AssociationInitCallback], void), cast-from-var827-to-var3014=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], org.hibernate.loader.JoinWalker$AssociationInitCallback), resolve/-1457745781=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], int[][]), compositeKeyManyToOneTargetIndices/-1268760295=([org.hibernate.loader.entity.EntityJoinWalker], int[][])}
; {var1800=org.hibernate.loader.entity.EntityJoinWalker, var2434=r0, var400=org.hibernate.persister.entity.OuterJoinLoadable, var2388=r1, var1838=r7, var1492=i0, var78=org.hibernate.LockOptions, var598=r5, var2789=r8, var3489=org.hibernate.engine.spi.SessionFactoryImplementor, var2668=r2, var324=org.hibernate.engine.spi.LoadQueryInfluencers, var34=r3, var456=org.hibernate.loader.AbstractEntityJoinWalker, var3013=$r4, var3794=$r6, var2598=$r9, var2347=org.hibernate.loader.JoinWalker, var3755=$r13, var526=$r11, var745=java.util.Map, var172=java.util.Collections, var826=$r10, var2115=org.hibernate.persister.entity.Joinable, var3950=$r12, var1430=r14, var827=org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl, var1521=$r15, var482=$r16, var3014=org.hibernate.loader.JoinWalker$AssociationInitCallback, var3119="", var3330=$r17}
; {org.hibernate.loader.entity.EntityJoinWalker=var1800, r0=var2434, org.hibernate.persister.entity.OuterJoinLoadable=var400, r1=var2388, r7=var1838, i0=var1492, org.hibernate.LockOptions=var78, r5=var598, r8=var2789, org.hibernate.engine.spi.SessionFactoryImplementor=var3489, r2=var2668, org.hibernate.engine.spi.LoadQueryInfluencers=var324, r3=var34, org.hibernate.loader.AbstractEntityJoinWalker=var456, $r4=var3013, $r6=var3794, $r9=var2598, org.hibernate.loader.JoinWalker=var2347, $r13=var3755, $r11=var526, java.util.Map=var745, java.util.Collections=var172, $r10=var826, org.hibernate.persister.entity.Joinable=var2115, $r12=var3950, r14=var1430, org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl=var827, $r15=var1521, $r16=var482, org.hibernate.loader.JoinWalker$AssociationInitCallback=var3014, ""=var3119, $r17=var3330}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.entity.EntityJoinWalker;	r1 := @parameter0: org.hibernate.persister.entity.OuterJoinLoadable;	r7 := @parameter1: java.lang.String[];	i0 := @parameter2: int;	r5 := @parameter3: org.hibernate.LockOptions;	r8 := @parameter4: boolean[];	r2 := @parameter5: org.hibernate.engine.spi.SessionFactoryImplementor;	r3 := @parameter6: org.hibernate.engine.spi.LoadQueryInfluencers;	specialinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.engine.spi.LoadQueryInfluencers)>(r1, r2, r3);	$r4 = new org.hibernate.LockOptions;	specialinvoke $r4.<org.hibernate.LockOptions: void <init>()>();	r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> = $r4;	$r6 = r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions>;	staticinvoke <org.hibernate.LockOptions: org.hibernate.LockOptions copy(org.hibernate.LockOptions,org.hibernate.LockOptions)>(r5, $r6);	$r9 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>();	$r13 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],boolean[],int)>($r9, r7, r8, i0);	$r11 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>();	$r10 = <java.util.Collections: java.util.Map EMPTY_MAP>;	$r12 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r11, $r10);	r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = new org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl;	specialinvoke $r15.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r2);	$r16 = virtualinvoke r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: void initAll(java.lang.String,java.lang.String,org.hibernate.LockOptions,org.hibernate.loader.JoinWalker$AssociationInitCallback)>($r16, "", r5, $r15);	$r17 = virtualinvoke $r15.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: int[][] resolve()>();	r0.<org.hibernate.loader.entity.EntityJoinWalker: int[][] compositeKeyManyToOneTargetIndices> = $r17;	return
;block_num 1