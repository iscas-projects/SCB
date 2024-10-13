(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1437 0)
(declare-sort var847 0)
(declare-sort var2303 0)
(declare-sort var15 0)
(declare-sort var3822 0)
(declare-sort var3376 0)
(declare-sort var2088 0)
(declare-sort var880 0)
(declare-sort var2058 0)
(declare-sort var1770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2303-init () var2303)
(declare-fun var847_getSession/-1718621050 (var847) var15)
(declare-fun var15_getFactory/1122061256 (var15) var3822)
(declare-fun readObject/466248564 (var1437) var3376)
(declare-fun cast-from-var3376-to-String (var3376) String)
(declare-fun cast-from-var3376-to-var2088 (var3376) var2088)
(declare-fun var880_valueOf/-998857948 (String) var880)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-var3376-to-__Array__Int__var3376__ (var3376) (Array Int var3376))
(declare-fun var2058_valueOf/215802480 (String) var2058)
(declare-fun readBoolean/-419518244 (var1437) Bool)
(declare-fun <init>/-1037951718 (var2303 var3822 String var2088 var880 var880 (Array Int var3376) (Array Int var3376) var3376 var2058 Bool Bool var847) void)
(declare-const null-var1437 var1437)
(declare-const null-var847 var847)
(declare-const null-NullType var1770)
(declare-const var1155 var1437) ; Statement: r3 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var1155 null-var1437)))
(declare-const var1985 var847) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.PersistenceContext 
(assert (not (= var1985 null-var847)))
(define-const var1172 var2303 var2303-init) ; Statement: $r0 = new org.hibernate.engine.internal.ImmutableEntityEntry 
(define-const var3664 var15 (var847_getSession/-1718621050 var1985)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var3433 var3822 (var15_getFactory/1122061256 var3664)) ; Statement: $r21 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var3807 var3376 (readObject/466248564 var1155)) ; Statement: $r4 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var1834 String (cast-from-var3376-to-String var3807)) ; Statement: $r20 = (java.lang.String) $r4 
(assert true)
(define-const var2259 var3376 (readObject/466248564 var1155)) ; Statement: $r5 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var1973 var2088 (cast-from-var3376-to-var2088 var2259)) ; Statement: $r19 = (java.io.Serializable) $r5 
(assert true)
(define-const var2307 var3376 (readObject/466248564 var1155)) ; Statement: $r6 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var585 String (cast-from-var3376-to-String var2307)) ; Statement: $r7 = (java.lang.String) $r6 
(define-const var3009 var880 (var880_valueOf/-998857948 var585)) ; Statement: $r18 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r7) 
(assert true)
(define-const var368 var3376 (readObject/466248564 var1155)) ; Statement: $r8 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var3729 String (cast-from-var3376-to-String var368)) ; Statement: $r9 = (java.lang.String) $r8 
(assert true)
(define-const var3596 Int (length/-134980193 var3729)) ; Statement: $i0 = virtualinvoke $r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9) 
(assert (not (= var3596 0))) ; Cond: $i0 != 0 
(define-const var1905 var880 (var880_valueOf/-998857948 var3729)) ; Statement: $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9) 
(assert true) ; Non Conditional
(assert true)
(define-const var1862 var3376 (readObject/466248564 var1155)) ; Statement: $r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2179 (Array Int var3376) (cast-from-var3376-to-__Array__Int__var3376__ var1862)) ; Statement: $r17 = (java.lang.Object[]) $r10 
(assert true)
(define-const var3995 var3376 (readObject/466248564 var1155)) ; Statement: $r11 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var3907 (Array Int var3376) (cast-from-var3376-to-__Array__Int__var3376__ var3995)) ; Statement: $r16 = (java.lang.Object[]) $r11 
(assert true)
(define-const var1673 var3376 (readObject/466248564 var1155)) ; Statement: $r15 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(assert true)
(define-const var1271 var3376 (readObject/466248564 var1155)) ; Statement: $r12 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2467 String (cast-from-var3376-to-String var1271)) ; Statement: $r13 = (java.lang.String) $r12 
(define-const var3937 var2058 (var2058_valueOf/215802480 var2467)) ; Statement: $r14 = staticinvoke <org.hibernate.LockMode: org.hibernate.LockMode valueOf(java.lang.String)>($r13) 
(assert true)
(define-const var3845 Bool (readBoolean/-419518244 var1155)) ; Statement: $z1 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>() 
(assert true)
(define-const var491 Bool (readBoolean/-419518244 var1155)) ; Statement: $z0 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>() 
(assert true)
;(assert (<init>/-1037951718 var1172 var3433 var1834 var1973 var3009 var1905 var2179 var3907 var1673 var3937 var3845 var491 null-var847)) ; Statement: specialinvoke $r0.<org.hibernate.engine.internal.ImmutableEntityEntry: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,java.lang.String,java.io.Serializable,org.hibernate.engine.spi.Status,org.hibernate.engine.spi.Status,java.lang.Object[],java.lang.Object[],java.lang.Object,org.hibernate.LockMode,boolean,boolean,org.hibernate.engine.spi.PersistenceContext)>($r21, $r20, $r19, $r18, $r22, $r17, $r16, $r15, $r14, $z1, $z0, null) 

(declare-const var1172!1 var2303)
(declare-const var3433!1 var3822)
(declare-const var1834!1 String)
(declare-const var1973!1 var2088)
(declare-const var3009!1 var880)
(declare-const var1905!1 var880)
(declare-const var2179!1 (Array Int var3376))
(declare-const var3907!1 (Array Int var3376))
(declare-const var1673!1 var3376)
(declare-const var3937!1 var2058)
(declare-const var3845!1 Bool)
(declare-const var491!1 Bool)
(declare-const var3852 var1770)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2303-init=([], org.hibernate.engine.internal.ImmutableEntityEntry), var847_getSession/-1718621050=([org.hibernate.engine.spi.PersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var15_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), readObject/466248564=([java.io.ObjectInputStream], java.lang.Object), cast-from-var3376-to-String=([java.lang.Object], java.lang.String), cast-from-var3376-to-var2088=([java.lang.Object], java.io.Serializable), var880_valueOf/-998857948=([java.lang.String], org.hibernate.engine.spi.Status), length/-134980193=([java.lang.String], int), cast-from-var3376-to-__Array__Int__var3376__=([java.lang.Object], java.lang.Object[]), var2058_valueOf/215802480=([java.lang.String], org.hibernate.LockMode), readBoolean/-419518244=([java.io.ObjectInputStream], boolean), <init>/-1037951718=([org.hibernate.engine.internal.ImmutableEntityEntry, org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String, java.io.Serializable, org.hibernate.engine.spi.Status, org.hibernate.engine.spi.Status, java.lang.Object[], java.lang.Object[], java.lang.Object, org.hibernate.LockMode, boolean, boolean, org.hibernate.engine.spi.PersistenceContext], void)}
; {var1437=java.io.ObjectInputStream, var1155=r3, var847=org.hibernate.engine.spi.PersistenceContext, var1985=r1, var2303=org.hibernate.engine.internal.ImmutableEntityEntry, var1172=$r0, var15=org.hibernate.engine.spi.SharedSessionContractImplementor, var3664=$r2, var3822=org.hibernate.engine.spi.SessionFactoryImplementor, var3433=$r21, var3376=java.lang.Object, var3807=$r4, var1834=$r20, var2259=$r5, var2088=java.io.Serializable, var1973=$r19, var2307=$r6, var585=$r7, var880=org.hibernate.engine.spi.Status, var3009=$r18, var368=$r8, var3729=$r9, var3596=$i0, var1905=$r22, var1862=$r10, var2179=$r17, var3995=$r11, var3907=$r16, var1673=$r15, var1271=$r12, var2467=$r13, var2058=org.hibernate.LockMode, var3937=$r14, var3845=$z1, var491=$z0, var3852=null, var1770=null_type}
; {java.io.ObjectInputStream=var1437, r3=var1155, org.hibernate.engine.spi.PersistenceContext=var847, r1=var1985, org.hibernate.engine.internal.ImmutableEntityEntry=var2303, $r0=var1172, org.hibernate.engine.spi.SharedSessionContractImplementor=var15, $r2=var3664, org.hibernate.engine.spi.SessionFactoryImplementor=var3822, $r21=var3433, java.lang.Object=var3376, $r4=var3807, $r20=var1834, $r5=var2259, java.io.Serializable=var2088, $r19=var1973, $r6=var2307, $r7=var585, org.hibernate.engine.spi.Status=var880, $r18=var3009, $r8=var368, $r9=var3729, $i0=var3596, $r22=var1905, $r10=var1862, $r17=var2179, $r11=var3995, $r16=var3907, $r15=var1673, $r12=var1271, $r13=var2467, org.hibernate.LockMode=var2058, $r14=var3937, $z1=var3845, $z0=var491, null=var3852, null_type=var1770}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.io.ObjectInputStream;	r1 := @parameter1: org.hibernate.engine.spi.PersistenceContext;	$r0 = new org.hibernate.engine.internal.ImmutableEntityEntry;	$r2 = interfaceinvoke r1.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r21 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r20 = (java.lang.String) $r4;	$r5 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r19 = (java.io.Serializable) $r5;	$r6 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r7 = (java.lang.String) $r6;	$r18 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r7);	$r8 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r9 = (java.lang.String) $r8;	$i0 = virtualinvoke $r9.<java.lang.String: int length()>();	if $i0 != 0 goto $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9);	$r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9);	$r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r17 = (java.lang.Object[]) $r10;	$r11 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r16 = (java.lang.Object[]) $r11;	$r15 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r12 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r13 = (java.lang.String) $r12;	$r14 = staticinvoke <org.hibernate.LockMode: org.hibernate.LockMode valueOf(java.lang.String)>($r13);	$z1 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>();	$z0 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>();	specialinvoke $r0.<org.hibernate.engine.internal.ImmutableEntityEntry: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,java.lang.String,java.io.Serializable,org.hibernate.engine.spi.Status,org.hibernate.engine.spi.Status,java.lang.Object[],java.lang.Object[],java.lang.Object,org.hibernate.LockMode,boolean,boolean,org.hibernate.engine.spi.PersistenceContext)>($r21, $r20, $r19, $r18, $r22, $r17, $r16, $r15, $r14, $z1, $z0, null);	return $r0
;block_num 3