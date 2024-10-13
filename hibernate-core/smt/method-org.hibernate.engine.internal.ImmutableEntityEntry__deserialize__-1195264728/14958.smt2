(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2083 0)
(declare-sort var919 0)
(declare-sort var3929 0)
(declare-sort var393 0)
(declare-sort var555 0)
(declare-sort var169 0)
(declare-sort var556 0)
(declare-sort var1299 0)
(declare-sort var607 0)
(declare-sort var1768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3929-init () var3929)
(declare-fun var919_getSession/-1718621050 (var919) var393)
(declare-fun var393_getFactory/1122061256 (var393) var555)
(declare-fun readObject/466248564 (var2083) var169)
(declare-fun cast-from-var169-to-String (var169) String)
(declare-fun cast-from-var169-to-var556 (var169) var556)
(declare-fun var1299_valueOf/-998857948 (String) var1299)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-var169-to-__Array__Int__var169__ (var169) (Array Int var169))
(declare-fun var607_valueOf/215802480 (String) var607)
(declare-fun readBoolean/-419518244 (var2083) Bool)
(declare-fun <init>/-1037951718 (var3929 var555 String var556 var1299 var1299 (Array Int var169) (Array Int var169) var169 var607 Bool Bool var919) void)
(declare-const null-var2083 var2083)
(declare-const null-var919 var919)
(declare-const null-var1299 var1299)
(declare-const null-NullType var1768)
(declare-const var598 var2083) ; Statement: r3 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var598 null-var2083)))
(declare-const var2364 var919) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.PersistenceContext 
(assert (not (= var2364 null-var919)))
(define-const var3347 var3929 var3929-init) ; Statement: $r0 = new org.hibernate.engine.internal.ImmutableEntityEntry 
(define-const var567 var393 (var919_getSession/-1718621050 var2364)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var3666 var555 (var393_getFactory/1122061256 var567)) ; Statement: $r21 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var2157 var169 (readObject/466248564 var598)) ; Statement: $r4 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var119 String (cast-from-var169-to-String var2157)) ; Statement: $r20 = (java.lang.String) $r4 
(assert true)
(define-const var533 var169 (readObject/466248564 var598)) ; Statement: $r5 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2061 var556 (cast-from-var169-to-var556 var533)) ; Statement: $r19 = (java.io.Serializable) $r5 
(assert true)
(define-const var1138 var169 (readObject/466248564 var598)) ; Statement: $r6 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var3944 String (cast-from-var169-to-String var1138)) ; Statement: $r7 = (java.lang.String) $r6 
(define-const var21 var1299 (var1299_valueOf/-998857948 var3944)) ; Statement: $r18 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r7) 
(assert true)
(define-const var2172 var169 (readObject/466248564 var598)) ; Statement: $r8 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var3568 String (cast-from-var169-to-String var2172)) ; Statement: $r9 = (java.lang.String) $r8 
(assert true)
(define-const var463 Int (length/-134980193 var3568)) ; Statement: $i0 = virtualinvoke $r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9) 
(assert (not (not (= var463 0)))) ; Negate: Cond: $i0 != 0  
(define-const var399 var1299 null-var1299) ; Statement: $r22 = null 
 ; Statement: goto [?= $r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3431 var169 (readObject/466248564 var598)) ; Statement: $r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var3637 (Array Int var169) (cast-from-var169-to-__Array__Int__var169__ var3431)) ; Statement: $r17 = (java.lang.Object[]) $r10 
(assert true)
(define-const var3049 var169 (readObject/466248564 var598)) ; Statement: $r11 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var1790 (Array Int var169) (cast-from-var169-to-__Array__Int__var169__ var3049)) ; Statement: $r16 = (java.lang.Object[]) $r11 
(assert true)
(define-const var1587 var169 (readObject/466248564 var598)) ; Statement: $r15 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(assert true)
(define-const var553 var169 (readObject/466248564 var598)) ; Statement: $r12 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var360 String (cast-from-var169-to-String var553)) ; Statement: $r13 = (java.lang.String) $r12 
(define-const var1580 var607 (var607_valueOf/215802480 var360)) ; Statement: $r14 = staticinvoke <org.hibernate.LockMode: org.hibernate.LockMode valueOf(java.lang.String)>($r13) 
(assert true)
(define-const var1351 Bool (readBoolean/-419518244 var598)) ; Statement: $z1 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>() 
(assert true)
(define-const var2171 Bool (readBoolean/-419518244 var598)) ; Statement: $z0 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>() 
(assert true)
;(assert (<init>/-1037951718 var3347 var3666 var119 var2061 var21 var399 var3637 var1790 var1587 var1580 var1351 var2171 null-var919)) ; Statement: specialinvoke $r0.<org.hibernate.engine.internal.ImmutableEntityEntry: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,java.lang.String,java.io.Serializable,org.hibernate.engine.spi.Status,org.hibernate.engine.spi.Status,java.lang.Object[],java.lang.Object[],java.lang.Object,org.hibernate.LockMode,boolean,boolean,org.hibernate.engine.spi.PersistenceContext)>($r21, $r20, $r19, $r18, $r22, $r17, $r16, $r15, $r14, $z1, $z0, null) 

(declare-const var3347!1 var3929)
(declare-const var3666!1 var555)
(declare-const var119!1 String)
(declare-const var2061!1 var556)
(declare-const var21!1 var1299)
(declare-const var399!1 var1299)
(declare-const var3637!1 (Array Int var169))
(declare-const var1790!1 (Array Int var169))
(declare-const var1587!1 var169)
(declare-const var1580!1 var607)
(declare-const var1351!1 Bool)
(declare-const var2171!1 Bool)
(declare-const var3519 var1768)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3929-init=([], org.hibernate.engine.internal.ImmutableEntityEntry), var919_getSession/-1718621050=([org.hibernate.engine.spi.PersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var393_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), readObject/466248564=([java.io.ObjectInputStream], java.lang.Object), cast-from-var169-to-String=([java.lang.Object], java.lang.String), cast-from-var169-to-var556=([java.lang.Object], java.io.Serializable), var1299_valueOf/-998857948=([java.lang.String], org.hibernate.engine.spi.Status), length/-134980193=([java.lang.String], int), cast-from-var169-to-__Array__Int__var169__=([java.lang.Object], java.lang.Object[]), var607_valueOf/215802480=([java.lang.String], org.hibernate.LockMode), readBoolean/-419518244=([java.io.ObjectInputStream], boolean), <init>/-1037951718=([org.hibernate.engine.internal.ImmutableEntityEntry, org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String, java.io.Serializable, org.hibernate.engine.spi.Status, org.hibernate.engine.spi.Status, java.lang.Object[], java.lang.Object[], java.lang.Object, org.hibernate.LockMode, boolean, boolean, org.hibernate.engine.spi.PersistenceContext], void)}
; {var2083=java.io.ObjectInputStream, var598=r3, var919=org.hibernate.engine.spi.PersistenceContext, var2364=r1, var3929=org.hibernate.engine.internal.ImmutableEntityEntry, var3347=$r0, var393=org.hibernate.engine.spi.SharedSessionContractImplementor, var567=$r2, var555=org.hibernate.engine.spi.SessionFactoryImplementor, var3666=$r21, var169=java.lang.Object, var2157=$r4, var119=$r20, var533=$r5, var556=java.io.Serializable, var2061=$r19, var1138=$r6, var3944=$r7, var1299=org.hibernate.engine.spi.Status, var21=$r18, var2172=$r8, var3568=$r9, var463=$i0, var399=$r22, var3431=$r10, var3637=$r17, var3049=$r11, var1790=$r16, var1587=$r15, var553=$r12, var360=$r13, var607=org.hibernate.LockMode, var1580=$r14, var1351=$z1, var2171=$z0, var3519=null, var1768=null_type}
; {java.io.ObjectInputStream=var2083, r3=var598, org.hibernate.engine.spi.PersistenceContext=var919, r1=var2364, org.hibernate.engine.internal.ImmutableEntityEntry=var3929, $r0=var3347, org.hibernate.engine.spi.SharedSessionContractImplementor=var393, $r2=var567, org.hibernate.engine.spi.SessionFactoryImplementor=var555, $r21=var3666, java.lang.Object=var169, $r4=var2157, $r20=var119, $r5=var533, java.io.Serializable=var556, $r19=var2061, $r6=var1138, $r7=var3944, org.hibernate.engine.spi.Status=var1299, $r18=var21, $r8=var2172, $r9=var3568, $i0=var463, $r22=var399, $r10=var3431, $r17=var3637, $r11=var3049, $r16=var1790, $r15=var1587, $r12=var553, $r13=var360, org.hibernate.LockMode=var607, $r14=var1580, $z1=var1351, $z0=var2171, null=var3519, null_type=var1768}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.io.ObjectInputStream;	r1 := @parameter1: org.hibernate.engine.spi.PersistenceContext;	$r0 = new org.hibernate.engine.internal.ImmutableEntityEntry;	$r2 = interfaceinvoke r1.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r21 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r20 = (java.lang.String) $r4;	$r5 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r19 = (java.io.Serializable) $r5;	$r6 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r7 = (java.lang.String) $r6;	$r18 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r7);	$r8 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r9 = (java.lang.String) $r8;	$i0 = virtualinvoke $r9.<java.lang.String: int length()>();	if $i0 != 0 goto $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9);	$r22 = null;	goto [?= $r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>()];	$r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r17 = (java.lang.Object[]) $r10;	$r11 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r16 = (java.lang.Object[]) $r11;	$r15 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r12 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r13 = (java.lang.String) $r12;	$r14 = staticinvoke <org.hibernate.LockMode: org.hibernate.LockMode valueOf(java.lang.String)>($r13);	$z1 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>();	$z0 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>();	specialinvoke $r0.<org.hibernate.engine.internal.ImmutableEntityEntry: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,java.lang.String,java.io.Serializable,org.hibernate.engine.spi.Status,org.hibernate.engine.spi.Status,java.lang.Object[],java.lang.Object[],java.lang.Object,org.hibernate.LockMode,boolean,boolean,org.hibernate.engine.spi.PersistenceContext)>($r21, $r20, $r19, $r18, $r22, $r17, $r16, $r15, $r14, $z1, $z0, null);	return $r0
;block_num 3