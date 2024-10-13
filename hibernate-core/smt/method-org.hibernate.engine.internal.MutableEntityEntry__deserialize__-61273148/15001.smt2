(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3550 0)
(declare-sort var1687 0)
(declare-sort var3880 0)
(declare-sort var1114 0)
(declare-sort var3318 0)
(declare-sort var1565 0)
(declare-sort var840 0)
(declare-sort var3253 0)
(declare-sort var3244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3880-init () var3880)
(declare-fun var1687_getSession/-1718621050 (var1687) var1114)
(declare-fun var1114_getFactory/1122061256 (var1114) var3318)
(declare-fun readObject/466248564 (var3550) var1565)
(declare-fun cast-from-var1565-to-String (var1565) String)
(declare-fun cast-from-var1565-to-var840 (var1565) var840)
(declare-fun var3253_valueOf/-998857948 (String) var3253)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-var1565-to-__Array__Int__var1565__ (var1565) (Array Int var1565))
(declare-fun var3244_valueOf/215802480 (String) var3244)
(declare-fun readBoolean/-419518244 (var3550) Bool)
(declare-fun <init>/1060057014 (var3880 var3318 String var840 var3253 var3253 (Array Int var1565) (Array Int var1565) var1565 var3244 Bool Bool var1687) void)
(declare-const null-var3550 var3550)
(declare-const null-var1687 var1687)
(declare-const var1657 var3550) ; Statement: r3 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var1657 null-var3550)))
(declare-const var2612 var1687) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.PersistenceContext 
(assert (not (= var2612 null-var1687)))
(define-const var411 var3880 var3880-init) ; Statement: $r0 = new org.hibernate.engine.internal.MutableEntityEntry 
(define-const var1077 var1114 (var1687_getSession/-1718621050 var2612)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var2154 var3318 (var1114_getFactory/1122061256 var1077)) ; Statement: $r21 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var772 var1565 (readObject/466248564 var1657)) ; Statement: $r4 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2922 String (cast-from-var1565-to-String var772)) ; Statement: $r20 = (java.lang.String) $r4 
(assert true)
(define-const var3007 var1565 (readObject/466248564 var1657)) ; Statement: $r5 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2879 var840 (cast-from-var1565-to-var840 var3007)) ; Statement: $r19 = (java.io.Serializable) $r5 
(assert true)
(define-const var310 var1565 (readObject/466248564 var1657)) ; Statement: $r6 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2659 String (cast-from-var1565-to-String var310)) ; Statement: $r7 = (java.lang.String) $r6 
(define-const var3324 var3253 (var3253_valueOf/-998857948 var2659)) ; Statement: $r18 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r7) 
(assert true)
(define-const var3711 var1565 (readObject/466248564 var1657)) ; Statement: $r8 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var3702 String (cast-from-var1565-to-String var3711)) ; Statement: $r9 = (java.lang.String) $r8 
(assert true)
(define-const var196 Int (length/-134980193 var3702)) ; Statement: $i0 = virtualinvoke $r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9) 
(assert (not (= var196 0))) ; Cond: $i0 != 0 
(define-const var2410 var3253 (var3253_valueOf/-998857948 var3702)) ; Statement: $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9) 
(assert true) ; Non Conditional
(assert true)
(define-const var912 var1565 (readObject/466248564 var1657)) ; Statement: $r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2935 (Array Int var1565) (cast-from-var1565-to-__Array__Int__var1565__ var912)) ; Statement: $r17 = (java.lang.Object[]) $r10 
(assert true)
(define-const var3667 var1565 (readObject/466248564 var1657)) ; Statement: $r11 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var517 (Array Int var1565) (cast-from-var1565-to-__Array__Int__var1565__ var3667)) ; Statement: $r16 = (java.lang.Object[]) $r11 
(assert true)
(define-const var1956 var1565 (readObject/466248564 var1657)) ; Statement: $r15 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(assert true)
(define-const var2933 var1565 (readObject/466248564 var1657)) ; Statement: $r12 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var317 String (cast-from-var1565-to-String var2933)) ; Statement: $r13 = (java.lang.String) $r12 
(define-const var2621 var3244 (var3244_valueOf/215802480 var317)) ; Statement: $r14 = staticinvoke <org.hibernate.LockMode: org.hibernate.LockMode valueOf(java.lang.String)>($r13) 
(assert true)
(define-const var2319 Bool (readBoolean/-419518244 var1657)) ; Statement: $z1 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>() 
(assert true)
(define-const var3805 Bool (readBoolean/-419518244 var1657)) ; Statement: $z0 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>() 
(assert true)
;(assert (<init>/1060057014 var411 var2154 var2922 var2879 var3324 var2410 var2935 var517 var1956 var2621 var2319 var3805 var2612)) ; Statement: specialinvoke $r0.<org.hibernate.engine.internal.MutableEntityEntry: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,java.lang.String,java.io.Serializable,org.hibernate.engine.spi.Status,org.hibernate.engine.spi.Status,java.lang.Object[],java.lang.Object[],java.lang.Object,org.hibernate.LockMode,boolean,boolean,org.hibernate.engine.spi.PersistenceContext)>($r21, $r20, $r19, $r18, $r22, $r17, $r16, $r15, $r14, $z1, $z0, r1) 

(declare-const var411!1 var3880)
(declare-const var2154!1 var3318)
(declare-const var2922!1 String)
(declare-const var2879!1 var840)
(declare-const var3324!1 var3253)
(declare-const var2410!1 var3253)
(declare-const var2935!1 (Array Int var1565))
(declare-const var517!1 (Array Int var1565))
(declare-const var1956!1 var1565)
(declare-const var2621!1 var3244)
(declare-const var2319!1 Bool)
(declare-const var3805!1 Bool)
(declare-const var2612!1 var1687)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3880-init=([], org.hibernate.engine.internal.MutableEntityEntry), var1687_getSession/-1718621050=([org.hibernate.engine.spi.PersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var1114_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), readObject/466248564=([java.io.ObjectInputStream], java.lang.Object), cast-from-var1565-to-String=([java.lang.Object], java.lang.String), cast-from-var1565-to-var840=([java.lang.Object], java.io.Serializable), var3253_valueOf/-998857948=([java.lang.String], org.hibernate.engine.spi.Status), length/-134980193=([java.lang.String], int), cast-from-var1565-to-__Array__Int__var1565__=([java.lang.Object], java.lang.Object[]), var3244_valueOf/215802480=([java.lang.String], org.hibernate.LockMode), readBoolean/-419518244=([java.io.ObjectInputStream], boolean), <init>/1060057014=([org.hibernate.engine.internal.MutableEntityEntry, org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String, java.io.Serializable, org.hibernate.engine.spi.Status, org.hibernate.engine.spi.Status, java.lang.Object[], java.lang.Object[], java.lang.Object, org.hibernate.LockMode, boolean, boolean, org.hibernate.engine.spi.PersistenceContext], void)}
; {var3550=java.io.ObjectInputStream, var1657=r3, var1687=org.hibernate.engine.spi.PersistenceContext, var2612=r1, var3880=org.hibernate.engine.internal.MutableEntityEntry, var411=$r0, var1114=org.hibernate.engine.spi.SharedSessionContractImplementor, var1077=$r2, var3318=org.hibernate.engine.spi.SessionFactoryImplementor, var2154=$r21, var1565=java.lang.Object, var772=$r4, var2922=$r20, var3007=$r5, var840=java.io.Serializable, var2879=$r19, var310=$r6, var2659=$r7, var3253=org.hibernate.engine.spi.Status, var3324=$r18, var3711=$r8, var3702=$r9, var196=$i0, var2410=$r22, var912=$r10, var2935=$r17, var3667=$r11, var517=$r16, var1956=$r15, var2933=$r12, var317=$r13, var3244=org.hibernate.LockMode, var2621=$r14, var2319=$z1, var3805=$z0}
; {java.io.ObjectInputStream=var3550, r3=var1657, org.hibernate.engine.spi.PersistenceContext=var1687, r1=var2612, org.hibernate.engine.internal.MutableEntityEntry=var3880, $r0=var411, org.hibernate.engine.spi.SharedSessionContractImplementor=var1114, $r2=var1077, org.hibernate.engine.spi.SessionFactoryImplementor=var3318, $r21=var2154, java.lang.Object=var1565, $r4=var772, $r20=var2922, $r5=var3007, java.io.Serializable=var840, $r19=var2879, $r6=var310, $r7=var2659, org.hibernate.engine.spi.Status=var3253, $r18=var3324, $r8=var3711, $r9=var3702, $i0=var196, $r22=var2410, $r10=var912, $r17=var2935, $r11=var3667, $r16=var517, $r15=var1956, $r12=var2933, $r13=var317, org.hibernate.LockMode=var3244, $r14=var2621, $z1=var2319, $z0=var3805}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.io.ObjectInputStream;	r1 := @parameter1: org.hibernate.engine.spi.PersistenceContext;	$r0 = new org.hibernate.engine.internal.MutableEntityEntry;	$r2 = interfaceinvoke r1.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r21 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r20 = (java.lang.String) $r4;	$r5 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r19 = (java.io.Serializable) $r5;	$r6 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r7 = (java.lang.String) $r6;	$r18 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r7);	$r8 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r9 = (java.lang.String) $r8;	$i0 = virtualinvoke $r9.<java.lang.String: int length()>();	if $i0 != 0 goto $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9);	$r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9);	$r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r17 = (java.lang.Object[]) $r10;	$r11 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r16 = (java.lang.Object[]) $r11;	$r15 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r12 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r13 = (java.lang.String) $r12;	$r14 = staticinvoke <org.hibernate.LockMode: org.hibernate.LockMode valueOf(java.lang.String)>($r13);	$z1 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>();	$z0 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>();	specialinvoke $r0.<org.hibernate.engine.internal.MutableEntityEntry: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,java.lang.String,java.io.Serializable,org.hibernate.engine.spi.Status,org.hibernate.engine.spi.Status,java.lang.Object[],java.lang.Object[],java.lang.Object,org.hibernate.LockMode,boolean,boolean,org.hibernate.engine.spi.PersistenceContext)>($r21, $r20, $r19, $r18, $r22, $r17, $r16, $r15, $r14, $z1, $z0, r1);	return $r0
;block_num 3