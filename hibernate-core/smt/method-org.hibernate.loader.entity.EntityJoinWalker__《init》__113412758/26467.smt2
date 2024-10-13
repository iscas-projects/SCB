(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2002 0)
(declare-sort var1812 0)
(declare-sort var3676 0)
(declare-sort var1834 0)
(declare-sort var591 0)
(declare-sort var1785 0)
(declare-sort var2904 0)
(declare-sort var3600 0)
(declare-sort var827 0)
(declare-sort var2997 0)
(declare-sort var332 0)
(declare-sort var2148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-243918656 (var1785 var1812 var1834 var591) void)
(declare-fun cast-from-var2002-to-var1785 (var2002) var1785)
(declare-fun var3676-init () var3676)
(declare-fun <init>/-2121252426 (var3676) void)
(declare-fun lockOptions/-1268760295 (var2002) var3676)
(declare-fun var3676_copy/1649826650 (var3676 var3676) var3676)
(declare-fun getAlias/-1544776148 (var1785) String)
(declare-fun whereString/500907501 (var2904 String (Array Int String) Int) String)
(declare-fun cast-from-var2002-to-var2904 (var2002) var2904)
(declare-fun var2997_filterFragment/1785996213 (var2997 String var3600) String)
(declare-fun cast-from-var1812-to-var2997 (var1812) var2997)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var332-init () var332)
(declare-fun <init>/-1720300714 (var332 var1834) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun initAll/-707196098 (var1785 String String var3676 var2148) void)
(declare-fun cast-from-var332-to-var2148 (var332) var2148)
(declare-fun resolve/-1457745781 (var332) (Array Int (Array Int Int)))
(declare-fun compositeKeyManyToOneTargetIndices/-1268760295 (var2002) (Array Int (Array Int Int)))
(declare-const null-var2002 var2002)
(declare-const null-var1812 var1812)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const null-var3676 var3676)
(declare-const null-var1834 var1834)
(declare-const null-var591 var591)
(declare-const var827-EMPTY_MAP var3600)
(declare-const var682 var2002) ; Statement: r0 := @this: org.hibernate.loader.entity.EntityJoinWalker 
(assert (not (= var682 null-var2002)))
(declare-const var451 var1812) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.OuterJoinLoadable 
(assert (not (= var451 null-var1812)))
(declare-const var2186 (Array Int String)) ; Statement: r7 := @parameter1: java.lang.String[] 
(assert (not (= var2186 null-__Array__Int__String__)))
(declare-const var2281 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2281 null-Int)))
(declare-const var3436 var3676) ; Statement: r5 := @parameter3: org.hibernate.LockOptions 
(assert (not (= var3436 null-var3676)))
(declare-const var3829 var1834) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3829 null-var1834)))
(declare-const var3536 var591) ; Statement: r3 := @parameter5: org.hibernate.engine.spi.LoadQueryInfluencers 
(assert (not (= var3536 null-var591)))
(assert true)
;(assert (<init>/-243918656 (cast-from-var2002-to-var1785 var682) var451 var3829 var3536)) ; Statement: specialinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.engine.spi.LoadQueryInfluencers)>(r1, r2, r3) 

(declare-const var682!1 var2002)
(declare-const var451!1 var1812)
(declare-const var3829!1 var1834)
(declare-const var3536!1 var591)
(define-const var2171 var3676 var3676-init) ; Statement: $r4 = new org.hibernate.LockOptions 
(assert true)
;(assert (<init>/-2121252426 var2171)) ; Statement: specialinvoke $r4.<org.hibernate.LockOptions: void <init>()>() 

(declare-const var2171!1 var3676)
(declare-const var682!2 var2002)
(assert (not (= var682!2 null-var2002)))
(assert (= (lockOptions/-1268760295 var682!2) var2171!1)) ; Statement: r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> = $r4 
(define-const var2707 var3676 (lockOptions/-1268760295 var682!2)) ; Statement: $r6 = r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> 
;(assert (var3676_copy/1649826650 var3436 var2707)) ; Statement: staticinvoke <org.hibernate.LockOptions: org.hibernate.LockOptions copy(org.hibernate.LockOptions,org.hibernate.LockOptions)>(r5, $r6) 

(declare-const var3436!1 var3676)
(declare-const var2707!1 var3676)
(assert true)
(define-const var3855 String (getAlias/-1544776148 (cast-from-var2002-to-var1785 var682!2))) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>() 
(assert true)
(define-const var306 String (whereString/500907501 (cast-from-var2002-to-var2904 var682!2) var3855 var2186 var2281)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],int)>($r8, r7, i0) 
(assert true)
(define-const var1689 String (getAlias/-1544776148 (cast-from-var2002-to-var1785 var682!2))) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>() 
(define-const var1336 var3600 var827-EMPTY_MAP) ; Statement: $r9 = <java.util.Collections: java.util.Map EMPTY_MAP> 
(define-const var1393 String (var2997_filterFragment/1785996213 (cast-from-var1812-to-var2997 var451!1) var1689 var1336)) ; Statement: $r11 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r10, $r9) 
(assert true)
(define-const var3925 String (append/672562846 var306 var1393)) ; Statement: r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var306!1 String)
(assert (= var306!1 (str.++ var306 var1393)))
(define-const var1034 var332 var332-init) ; Statement: $r14 = new org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl 
(assert true)
;(assert (<init>/-1720300714 var1034 var3829!1)) ; Statement: specialinvoke $r14.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r2) 

(declare-const var1034!1 var332)
(declare-const var3829!2 var1834)
(assert true)
(define-const var907 String (toString/-2075883882 var3925)) ; Statement: $r15 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (initAll/-707196098 (cast-from-var2002-to-var1785 var682!2) var907 "" var3436!1 (cast-from-var332-to-var2148 var1034!1))) ; Statement: virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: void initAll(java.lang.String,java.lang.String,org.hibernate.LockOptions,org.hibernate.loader.JoinWalker$AssociationInitCallback)>($r15, "", r5, $r14) 

(declare-const var682!3 var2002)
(declare-const var907!1 String)
(declare-const var2438 String)
(declare-const var3436!2 var3676)
(declare-const var1034!2 var332)
(assert true)
(define-const var958 (Array Int (Array Int Int)) (resolve/-1457745781 var1034!2)) ; Statement: $r16 = virtualinvoke $r14.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: int[][] resolve()>() 
(declare-const var682!4 var2002)
(assert (not (= var682!4 null-var2002)))
(assert (= (compositeKeyManyToOneTargetIndices/-1268760295 var682!4) var958)) ; Statement: r0.<org.hibernate.loader.entity.EntityJoinWalker: int[][] compositeKeyManyToOneTargetIndices> = $r16 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-243918656=([org.hibernate.loader.AbstractEntityJoinWalker, org.hibernate.persister.entity.OuterJoinLoadable, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.engine.spi.LoadQueryInfluencers], void), cast-from-var2002-to-var1785=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.loader.AbstractEntityJoinWalker), var3676-init=([], org.hibernate.LockOptions), <init>/-2121252426=([org.hibernate.LockOptions], void), lockOptions/-1268760295=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.LockOptions), var3676_copy/1649826650=([org.hibernate.LockOptions, org.hibernate.LockOptions], org.hibernate.LockOptions), getAlias/-1544776148=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), whereString/500907501=([org.hibernate.loader.JoinWalker, java.lang.String, java.lang.String[], int], java.lang.StringBuilder), cast-from-var2002-to-var2904=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.loader.JoinWalker), var2997_filterFragment/1785996213=([org.hibernate.persister.entity.Joinable, java.lang.String, java.util.Map], java.lang.String), cast-from-var1812-to-var2997=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Joinable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var332-init=([], org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl), <init>/-1720300714=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl, org.hibernate.engine.spi.SessionFactoryImplementor], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), initAll/-707196098=([org.hibernate.loader.AbstractEntityJoinWalker, java.lang.String, java.lang.String, org.hibernate.LockOptions, org.hibernate.loader.JoinWalker$AssociationInitCallback], void), cast-from-var332-to-var2148=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], org.hibernate.loader.JoinWalker$AssociationInitCallback), resolve/-1457745781=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], int[][]), compositeKeyManyToOneTargetIndices/-1268760295=([org.hibernate.loader.entity.EntityJoinWalker], int[][])}
; {var2002=org.hibernate.loader.entity.EntityJoinWalker, var682=r0, var1812=org.hibernate.persister.entity.OuterJoinLoadable, var451=r1, var2186=r7, var2281=i0, var3676=org.hibernate.LockOptions, var3436=r5, var1834=org.hibernate.engine.spi.SessionFactoryImplementor, var3829=r2, var591=org.hibernate.engine.spi.LoadQueryInfluencers, var3536=r3, var1785=org.hibernate.loader.AbstractEntityJoinWalker, var2171=$r4, var2707=$r6, var3855=$r8, var2904=org.hibernate.loader.JoinWalker, var306=$r12, var1689=$r10, var3600=java.util.Map, var827=java.util.Collections, var1336=$r9, var2997=org.hibernate.persister.entity.Joinable, var1393=$r11, var3925=r13, var332=org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl, var1034=$r14, var907=$r15, var2148=org.hibernate.loader.JoinWalker$AssociationInitCallback, var2438="", var958=$r16}
; {org.hibernate.loader.entity.EntityJoinWalker=var2002, r0=var682, org.hibernate.persister.entity.OuterJoinLoadable=var1812, r1=var451, r7=var2186, i0=var2281, org.hibernate.LockOptions=var3676, r5=var3436, org.hibernate.engine.spi.SessionFactoryImplementor=var1834, r2=var3829, org.hibernate.engine.spi.LoadQueryInfluencers=var591, r3=var3536, org.hibernate.loader.AbstractEntityJoinWalker=var1785, $r4=var2171, $r6=var2707, $r8=var3855, org.hibernate.loader.JoinWalker=var2904, $r12=var306, $r10=var1689, java.util.Map=var3600, java.util.Collections=var827, $r9=var1336, org.hibernate.persister.entity.Joinable=var2997, $r11=var1393, r13=var3925, org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl=var332, $r14=var1034, $r15=var907, org.hibernate.loader.JoinWalker$AssociationInitCallback=var2148, ""=var2438, $r16=var958}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.entity.EntityJoinWalker;	r1 := @parameter0: org.hibernate.persister.entity.OuterJoinLoadable;	r7 := @parameter1: java.lang.String[];	i0 := @parameter2: int;	r5 := @parameter3: org.hibernate.LockOptions;	r2 := @parameter4: org.hibernate.engine.spi.SessionFactoryImplementor;	r3 := @parameter5: org.hibernate.engine.spi.LoadQueryInfluencers;	specialinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.engine.spi.LoadQueryInfluencers)>(r1, r2, r3);	$r4 = new org.hibernate.LockOptions;	specialinvoke $r4.<org.hibernate.LockOptions: void <init>()>();	r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions> = $r4;	$r6 = r0.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.LockOptions lockOptions>;	staticinvoke <org.hibernate.LockOptions: org.hibernate.LockOptions copy(org.hibernate.LockOptions,org.hibernate.LockOptions)>(r5, $r6);	$r8 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>();	$r12 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],int)>($r8, r7, i0);	$r10 = virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.String getAlias()>();	$r9 = <java.util.Collections: java.util.Map EMPTY_MAP>;	$r11 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r10, $r9);	r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = new org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl;	specialinvoke $r14.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r2);	$r15 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: void initAll(java.lang.String,java.lang.String,org.hibernate.LockOptions,org.hibernate.loader.JoinWalker$AssociationInitCallback)>($r15, "", r5, $r14);	$r16 = virtualinvoke $r14.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: int[][] resolve()>();	r0.<org.hibernate.loader.entity.EntityJoinWalker: int[][] compositeKeyManyToOneTargetIndices> = $r16;	return
;block_num 1