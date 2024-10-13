(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var405 0)
(declare-sort var2167 0)
(declare-sort var1014 0)
(declare-sort var334 0)
(declare-sort var39 0)
(declare-sort var2046 0)
(declare-sort var269 0)
(declare-sort var2700 0)
(declare-sort var3232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1014-init () var1014)
(declare-fun var2167_getSession/-1718621050 (var2167) var334)
(declare-fun var334_getFactory/1122061256 (var334) var39)
(declare-fun readObject/466248564 (var405) var2046)
(declare-fun cast-from-var2046-to-String (var2046) String)
(declare-fun cast-from-var2046-to-var269 (var2046) var269)
(declare-fun var2700_valueOf/-998857948 (String) var2700)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-var2046-to-__Array__Int__var2046__ (var2046) (Array Int var2046))
(declare-fun var3232_valueOf/215802480 (String) var3232)
(declare-fun readBoolean/-419518244 (var405) Bool)
(declare-fun <init>/1060057014 (var1014 var39 String var269 var2700 var2700 (Array Int var2046) (Array Int var2046) var2046 var3232 Bool Bool var2167) void)
(declare-const null-var405 var405)
(declare-const null-var2167 var2167)
(declare-const null-var2700 var2700)
(declare-const var1905 var405) ; Statement: r3 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var1905 null-var405)))
(declare-const var1654 var2167) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.PersistenceContext 
(assert (not (= var1654 null-var2167)))
(define-const var3839 var1014 var1014-init) ; Statement: $r0 = new org.hibernate.engine.internal.MutableEntityEntry 
(define-const var9 var334 (var2167_getSession/-1718621050 var1654)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var836 var39 (var334_getFactory/1122061256 var9)) ; Statement: $r21 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var1703 var2046 (readObject/466248564 var1905)) ; Statement: $r4 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var3912 String (cast-from-var2046-to-String var1703)) ; Statement: $r20 = (java.lang.String) $r4 
(assert true)
(define-const var2263 var2046 (readObject/466248564 var1905)) ; Statement: $r5 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var1248 var269 (cast-from-var2046-to-var269 var2263)) ; Statement: $r19 = (java.io.Serializable) $r5 
(assert true)
(define-const var2954 var2046 (readObject/466248564 var1905)) ; Statement: $r6 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var337 String (cast-from-var2046-to-String var2954)) ; Statement: $r7 = (java.lang.String) $r6 
(define-const var1096 var2700 (var2700_valueOf/-998857948 var337)) ; Statement: $r18 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r7) 
(assert true)
(define-const var2784 var2046 (readObject/466248564 var1905)) ; Statement: $r8 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var173 String (cast-from-var2046-to-String var2784)) ; Statement: $r9 = (java.lang.String) $r8 
(assert true)
(define-const var1996 Int (length/-134980193 var173)) ; Statement: $i0 = virtualinvoke $r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9) 
(assert (not (not (= var1996 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2261 var2700 null-var2700) ; Statement: $r22 = null 
 ; Statement: goto [?= $r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3695 var2046 (readObject/466248564 var1905)) ; Statement: $r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2462 (Array Int var2046) (cast-from-var2046-to-__Array__Int__var2046__ var3695)) ; Statement: $r17 = (java.lang.Object[]) $r10 
(assert true)
(define-const var176 var2046 (readObject/466248564 var1905)) ; Statement: $r11 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var570 (Array Int var2046) (cast-from-var2046-to-__Array__Int__var2046__ var176)) ; Statement: $r16 = (java.lang.Object[]) $r11 
(assert true)
(define-const var1947 var2046 (readObject/466248564 var1905)) ; Statement: $r15 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(assert true)
(define-const var575 var2046 (readObject/466248564 var1905)) ; Statement: $r12 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2185 String (cast-from-var2046-to-String var575)) ; Statement: $r13 = (java.lang.String) $r12 
(define-const var1287 var3232 (var3232_valueOf/215802480 var2185)) ; Statement: $r14 = staticinvoke <org.hibernate.LockMode: org.hibernate.LockMode valueOf(java.lang.String)>($r13) 
(assert true)
(define-const var3854 Bool (readBoolean/-419518244 var1905)) ; Statement: $z1 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>() 
(assert true)
(define-const var1756 Bool (readBoolean/-419518244 var1905)) ; Statement: $z0 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>() 
(assert true)
;(assert (<init>/1060057014 var3839 var836 var3912 var1248 var1096 var2261 var2462 var570 var1947 var1287 var3854 var1756 var1654)) ; Statement: specialinvoke $r0.<org.hibernate.engine.internal.MutableEntityEntry: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,java.lang.String,java.io.Serializable,org.hibernate.engine.spi.Status,org.hibernate.engine.spi.Status,java.lang.Object[],java.lang.Object[],java.lang.Object,org.hibernate.LockMode,boolean,boolean,org.hibernate.engine.spi.PersistenceContext)>($r21, $r20, $r19, $r18, $r22, $r17, $r16, $r15, $r14, $z1, $z0, r1) 

(declare-const var3839!1 var1014)
(declare-const var836!1 var39)
(declare-const var3912!1 String)
(declare-const var1248!1 var269)
(declare-const var1096!1 var2700)
(declare-const var2261!1 var2700)
(declare-const var2462!1 (Array Int var2046))
(declare-const var570!1 (Array Int var2046))
(declare-const var1947!1 var2046)
(declare-const var1287!1 var3232)
(declare-const var3854!1 Bool)
(declare-const var1756!1 Bool)
(declare-const var1654!1 var2167)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1014-init=([], org.hibernate.engine.internal.MutableEntityEntry), var2167_getSession/-1718621050=([org.hibernate.engine.spi.PersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var334_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), readObject/466248564=([java.io.ObjectInputStream], java.lang.Object), cast-from-var2046-to-String=([java.lang.Object], java.lang.String), cast-from-var2046-to-var269=([java.lang.Object], java.io.Serializable), var2700_valueOf/-998857948=([java.lang.String], org.hibernate.engine.spi.Status), length/-134980193=([java.lang.String], int), cast-from-var2046-to-__Array__Int__var2046__=([java.lang.Object], java.lang.Object[]), var3232_valueOf/215802480=([java.lang.String], org.hibernate.LockMode), readBoolean/-419518244=([java.io.ObjectInputStream], boolean), <init>/1060057014=([org.hibernate.engine.internal.MutableEntityEntry, org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String, java.io.Serializable, org.hibernate.engine.spi.Status, org.hibernate.engine.spi.Status, java.lang.Object[], java.lang.Object[], java.lang.Object, org.hibernate.LockMode, boolean, boolean, org.hibernate.engine.spi.PersistenceContext], void)}
; {var405=java.io.ObjectInputStream, var1905=r3, var2167=org.hibernate.engine.spi.PersistenceContext, var1654=r1, var1014=org.hibernate.engine.internal.MutableEntityEntry, var3839=$r0, var334=org.hibernate.engine.spi.SharedSessionContractImplementor, var9=$r2, var39=org.hibernate.engine.spi.SessionFactoryImplementor, var836=$r21, var2046=java.lang.Object, var1703=$r4, var3912=$r20, var2263=$r5, var269=java.io.Serializable, var1248=$r19, var2954=$r6, var337=$r7, var2700=org.hibernate.engine.spi.Status, var1096=$r18, var2784=$r8, var173=$r9, var1996=$i0, var2261=$r22, var3695=$r10, var2462=$r17, var176=$r11, var570=$r16, var1947=$r15, var575=$r12, var2185=$r13, var3232=org.hibernate.LockMode, var1287=$r14, var3854=$z1, var1756=$z0}
; {java.io.ObjectInputStream=var405, r3=var1905, org.hibernate.engine.spi.PersistenceContext=var2167, r1=var1654, org.hibernate.engine.internal.MutableEntityEntry=var1014, $r0=var3839, org.hibernate.engine.spi.SharedSessionContractImplementor=var334, $r2=var9, org.hibernate.engine.spi.SessionFactoryImplementor=var39, $r21=var836, java.lang.Object=var2046, $r4=var1703, $r20=var3912, $r5=var2263, java.io.Serializable=var269, $r19=var1248, $r6=var2954, $r7=var337, org.hibernate.engine.spi.Status=var2700, $r18=var1096, $r8=var2784, $r9=var173, $i0=var1996, $r22=var2261, $r10=var3695, $r17=var2462, $r11=var176, $r16=var570, $r15=var1947, $r12=var575, $r13=var2185, org.hibernate.LockMode=var3232, $r14=var1287, $z1=var3854, $z0=var1756}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.io.ObjectInputStream;	r1 := @parameter1: org.hibernate.engine.spi.PersistenceContext;	$r0 = new org.hibernate.engine.internal.MutableEntityEntry;	$r2 = interfaceinvoke r1.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r21 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r20 = (java.lang.String) $r4;	$r5 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r19 = (java.io.Serializable) $r5;	$r6 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r7 = (java.lang.String) $r6;	$r18 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r7);	$r8 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r9 = (java.lang.String) $r8;	$i0 = virtualinvoke $r9.<java.lang.String: int length()>();	if $i0 != 0 goto $r22 = staticinvoke <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status valueOf(java.lang.String)>($r9);	$r22 = null;	goto [?= $r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>()];	$r10 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r17 = (java.lang.Object[]) $r10;	$r11 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r16 = (java.lang.Object[]) $r11;	$r15 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r12 = virtualinvoke r3.<java.io.ObjectInputStream: java.lang.Object readObject()>();	$r13 = (java.lang.String) $r12;	$r14 = staticinvoke <org.hibernate.LockMode: org.hibernate.LockMode valueOf(java.lang.String)>($r13);	$z1 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>();	$z0 = virtualinvoke r3.<java.io.ObjectInputStream: boolean readBoolean()>();	specialinvoke $r0.<org.hibernate.engine.internal.MutableEntityEntry: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,java.lang.String,java.io.Serializable,org.hibernate.engine.spi.Status,org.hibernate.engine.spi.Status,java.lang.Object[],java.lang.Object[],java.lang.Object,org.hibernate.LockMode,boolean,boolean,org.hibernate.engine.spi.PersistenceContext)>($r21, $r20, $r19, $r18, $r22, $r17, $r16, $r15, $r14, $z1, $z0, r1);	return $r0
;block_num 3