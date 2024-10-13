(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3941 0)
(declare-sort var215 0)
(declare-sort var1520 0)
(declare-sort var3878 0)
(declare-sort var2917 0)
(declare-sort var2087 0)
(declare-sort var2762 0)
(declare-sort var490 0)
(declare-sort var2356 0)
(declare-sort var1257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var215_getRightHandSide/1935456543 (var215) var3878)
(declare-fun cast-from-var3878-to-var2917 (var3878) var2917)
(declare-fun var3878_getJoins/-1164960030 (var3878) var2762)
(declare-fun cast-from-var2917-to-var3878 (var2917) var3878)
(declare-fun var2762_iterator/-693406491 (var2762) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2917_getCollectionPersister/1982826022 (var2917) var490)
(declare-fun var490_isOneToMany/1563333511 (var490) Bool)
(declare-fun var2356-init () var2356)
(declare-fun arr-var1257-init () (Array Int var1257))
(declare-fun var3878_getUid/-1971155046 (var3878) String)
(declare-fun cast-from-String-to-var1257 (String) var1257)
(declare-fun cast-from-var490-to-var1257 (var490) var1257)
(declare-fun String_format/1339386452 (String (Array Int var1257)) String)
(declare-fun <init>/-1092629202 (var2356 String) void)
(declare-const null-var3941 var3941)
(declare-const null-var215 var215)
(declare-const null-var1520 var1520)
(declare-const null-var2087 var2087)
(declare-const null-__Array__Int__var1257__ (Array Int var1257))
(declare-const var970 var3941) ; Statement: r6 := @this: org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor 
(assert (not (= var970 null-var3941)))
(declare-const var2604 var215) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.Join 
(assert (not (= var2604 null-var215)))
(declare-const var3961 var1520) ; Statement: r13 := @parameter1: org.hibernate.sql.JoinFragment 
(assert (not (= var3961 null-var1520)))
(define-const var3046 var3878 (var215_getRightHandSide/1935456543 var2604)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.Join: org.hibernate.loader.plan.spi.QuerySpace getRightHandSide()>() 
(define-const var2856 var2917 (cast-from-var3878-to-var2917 var3046)) ; Statement: r2 = (org.hibernate.loader.plan.spi.CollectionQuerySpace) $r1 
(define-const var1530 var2087 null-var2087) ; Statement: r55 = null 
(define-const var3936 var2087 null-var2087) ; Statement: r56 = null 
(define-const var2985 var2762 (var3878_getJoins/-1164960030 (cast-from-var2917-to-var3878 var2856))) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: java.lang.Iterable getJoins()>() 
(define-const var3831 Iterator (var2762_iterator/-693406491 var2985)) ; Statement: r4 = interfaceinvoke $r3.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2819 Bool (Iterator_hasNext/-1669924200 var3831)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(assert (= (ite var2819 1 0) 0)) ; Cond: $z0 == 0 
(define-const var20 var490 (var2917_getCollectionPersister/1982826022 var2856)) ; Statement: $r5 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var2697 Bool (var490_isOneToMany/1563333511 var20)) ; Statement: $z1 = interfaceinvoke $r5.<org.hibernate.persister.collection.CollectionPersister: boolean isOneToMany()>() 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var2697 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: if r55 != null goto $r7 = r6.<org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor: org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl aliasResolutionContext> 
(assert (not (not (= var1530 null-var2087)))) ; Negate: Cond: r55 != null  
(define-const var786 var2356 var2356-init) ; Statement: $r28 = new java.lang.IllegalStateException 
(define-const var1042 (Array Int var1257) arr-var1257-init) ; Statement: $r29 = newarray (java.lang.Object)[2] 
(define-const var2167 String (var3878_getUid/-1971155046 (cast-from-var2917-to-var3878 var2856))) ; Statement: $r30 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: java.lang.String getUid()>() 
(declare-const var1042!1 (Array Int var1257))
(assert (not (= var1042!1 null-__Array__Int__var1257__)))
(assert (= (select var1042!1 0) (cast-from-String-to-var1257 var2167))) ; Statement: $r29[0] = $r30 
(define-const var3692 var490 (var2917_getCollectionPersister/1982826022 var2856)) ; Statement: $r31 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(declare-const var1042!2 (Array Int var1257))
(assert (not (= var1042!2 null-__Array__Int__var1257__)))
(assert (= (select var1042!2 1) (cast-from-var490-to-var1257 var3692))) ; Statement: $r29[1] = $r31 
(define-const var2019 String (String_format/1339386452 "Could not locate collection element join within collection join [%s : %s]" var1042!2)) ; Statement: $r32 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not locate collection element join within collection join [%s : %s]", $r29) 
(assert true)
;(assert (<init>/-1092629202 var786 var2019)) ; Statement: specialinvoke $r28.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r32) 

(declare-const var786!1 var2356)
(declare-const var2019!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var215_getRightHandSide/1935456543=([org.hibernate.loader.plan.spi.Join], org.hibernate.loader.plan.spi.QuerySpace), cast-from-var3878-to-var2917=([org.hibernate.loader.plan.spi.QuerySpace], org.hibernate.loader.plan.spi.CollectionQuerySpace), var3878_getJoins/-1164960030=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.Iterable), cast-from-var2917-to-var3878=([org.hibernate.loader.plan.spi.CollectionQuerySpace], org.hibernate.loader.plan.spi.QuerySpace), var2762_iterator/-693406491=([java.lang.Iterable], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2917_getCollectionPersister/1982826022=([org.hibernate.loader.plan.spi.CollectionQuerySpace], org.hibernate.persister.collection.CollectionPersister), var490_isOneToMany/1563333511=([org.hibernate.persister.collection.CollectionPersister], boolean), var2356-init=([], java.lang.IllegalStateException), arr-var1257-init=([], java.lang.Object[]), var3878_getUid/-1971155046=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), cast-from-String-to-var1257=([java.lang.String], java.lang.Object), cast-from-var490-to-var1257=([org.hibernate.persister.collection.CollectionPersister], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3941=org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor, var970=r6, var215=org.hibernate.loader.plan.spi.Join, var2604=r0, var1520=org.hibernate.sql.JoinFragment, var3961=r13, var3878=org.hibernate.loader.plan.spi.QuerySpace, var3046=$r1, var2917=org.hibernate.loader.plan.spi.CollectionQuerySpace, var2856=r2, var2087=org.hibernate.loader.plan.spi.JoinDefinedByMetadata, var1530=r55, var3936=r56, var2762=java.lang.Iterable, var2985=$r3, var3831=r4, var2819=$z0, var490=org.hibernate.persister.collection.CollectionPersister, var20=$r5, var2697=$z1, var2356=java.lang.IllegalStateException, var786=$r28, var1257=java.lang.Object, var1042=$r29, var2167=$r30, var3692=$r31, var2019=$r32}
; {org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor=var3941, r6=var970, org.hibernate.loader.plan.spi.Join=var215, r0=var2604, org.hibernate.sql.JoinFragment=var1520, r13=var3961, org.hibernate.loader.plan.spi.QuerySpace=var3878, $r1=var3046, org.hibernate.loader.plan.spi.CollectionQuerySpace=var2917, r2=var2856, org.hibernate.loader.plan.spi.JoinDefinedByMetadata=var2087, r55=var1530, r56=var3936, java.lang.Iterable=var2762, $r3=var2985, r4=var3831, $z0=var2819, org.hibernate.persister.collection.CollectionPersister=var490, $r5=var20, $z1=var2697, java.lang.IllegalStateException=var2356, $r28=var786, java.lang.Object=var1257, $r29=var1042, $r30=var2167, $r31=var3692, $r32=var2019}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor;	r0 := @parameter0: org.hibernate.loader.plan.spi.Join;	r13 := @parameter1: org.hibernate.sql.JoinFragment;	$r1 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.Join: org.hibernate.loader.plan.spi.QuerySpace getRightHandSide()>();	r2 = (org.hibernate.loader.plan.spi.CollectionQuerySpace) $r1;	r55 = null;	r56 = null;	$r3 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: java.lang.Iterable getJoins()>();	r4 = interfaceinvoke $r3.<java.lang.Iterable: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r5 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$z1 = interfaceinvoke $r5.<org.hibernate.persister.collection.CollectionPersister: boolean isOneToMany()>();	if $z1 != 0 goto (branch);	if r55 != null goto $r7 = r6.<org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor: org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl aliasResolutionContext>;	$r28 = new java.lang.IllegalStateException;	$r29 = newarray (java.lang.Object)[2];	$r30 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: java.lang.String getUid()>();	$r29[0] = $r30;	$r31 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.CollectionQuerySpace: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r29[1] = $r31;	$r32 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not locate collection element join within collection join [%s : %s]", $r29);	specialinvoke $r28.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r32);	throw $r28
;block_num 5