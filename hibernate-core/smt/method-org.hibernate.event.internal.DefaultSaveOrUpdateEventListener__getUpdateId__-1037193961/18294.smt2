(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2513 0)
(declare-sort var2312 0)
(declare-sort var93 0)
(declare-sort var1289 0)
(declare-sort var960 0)
(declare-sort var855 0)
(declare-sort var2084 0)
(declare-sort var1145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var93_getIdentifier/1578938541 (var93 var2312 var855) var1289)
(declare-fun cast-from-var960-to-var855 (var960) var855)
(declare-fun var2084-init () var2084)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var93_getEntityName/-1914780628 (var93) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1749558638 (var2084 String) void)
(declare-fun cast-from-var2084-to-var1145 (var2084) var1145)
(declare-const null-var2513 var2513)
(declare-const null-var2312 var2312)
(declare-const null-var93 var93)
(declare-const null-var1289 var1289)
(declare-const null-var960 var960)
(declare-const var432 var2513) ; Statement: r10 := @this: org.hibernate.event.internal.DefaultSaveOrUpdateEventListener 
(assert (not (= var432 null-var2513)))
(declare-const var1178 var2312) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1178 null-var2312)))
(declare-const var3175 var93) ; Statement: r0 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3175 null-var93)))
(declare-const var1096 var1289) ; Statement: r11 := @parameter2: java.io.Serializable 
(assert (not (= var1096 null-var1289)))
(declare-const var685 var960) ; Statement: r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor 
(assert (not (= var685 null-var960)))
(define-const var2186 var1289 (var93_getIdentifier/1578938541 var3175 var1178 (cast-from-var960-to-var855 var685))) ; Statement: r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r1, r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var2186 null-var1289)))) ; Negate: Cond: r3 != null  
(define-const var1851 var2084 var2084-init) ; Statement: $r13 = new org.hibernate.TransientObjectException 
(define-const var1083 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1083)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1083!1 String)
(assert (= var1083!1 ""))
(assert true)
(define-const var2548 String (append/672562846 var1083!1 "The given object has a null identifier: ")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The given object has a null identifier: ") 
(declare-const var1083!2 String)
(assert (= var1083!2 (str.++ var1083!1 "The given object has a null identifier: ")))
(define-const var2263 String (var93_getEntityName/-1914780628 var3175)) ; Statement: $r6 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var638 String (append/672562846 var2548 var2263)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2548!1 String)
(assert (= var2548!1 (str.++ var2548 var2263)))
(assert true)
(define-const var3756 String (toString/-2075883882 var638)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1749558638 var1851 var3756)) ; Statement: specialinvoke $r13.<org.hibernate.TransientObjectException: void <init>(java.lang.String)>($r9) 

(declare-const var1851!1 var2084)
(declare-const var3756!1 String)
(define-const var1039 var1145 (cast-from-var2084-to-var1145 var1851!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var93_getIdentifier/1578938541=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SharedSessionContractImplementor], java.io.Serializable), cast-from-var960-to-var855=([org.hibernate.engine.spi.SessionImplementor], org.hibernate.engine.spi.SharedSessionContractImplementor), var2084-init=([], org.hibernate.TransientObjectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var93_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1749558638=([org.hibernate.TransientObjectException, java.lang.String], void), cast-from-var2084-to-var1145=([org.hibernate.TransientObjectException], java.lang.Throwable)}
; {var2513=org.hibernate.event.internal.DefaultSaveOrUpdateEventListener, var432=r10, var2312=java.lang.Object, var1178=r1, var93=org.hibernate.persister.entity.EntityPersister, var3175=r0, var1289=java.io.Serializable, var1096=r11, var960=org.hibernate.engine.spi.SessionImplementor, var685=r2, var855=org.hibernate.engine.spi.SharedSessionContractImplementor, var2186=r3, var2084=org.hibernate.TransientObjectException, var1851=$r13, var1083=$r12, var2548=$r7, var2263=$r6, var638=$r8, var3756=$r9, var1145=java.lang.Throwable, var1039=$r14}
; {org.hibernate.event.internal.DefaultSaveOrUpdateEventListener=var2513, r10=var432, java.lang.Object=var2312, r1=var1178, org.hibernate.persister.entity.EntityPersister=var93, r0=var3175, java.io.Serializable=var1289, r11=var1096, org.hibernate.engine.spi.SessionImplementor=var960, r2=var685, org.hibernate.engine.spi.SharedSessionContractImplementor=var855, r3=var2186, org.hibernate.TransientObjectException=var2084, $r13=var1851, $r12=var1083, $r7=var2548, $r6=var2263, $r8=var638, $r9=var3756, java.lang.Throwable=var1145, $r14=var1039}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.event.internal.DefaultSaveOrUpdateEventListener;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r11 := @parameter2: java.io.Serializable;	r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor;	r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r1, r2);	if r3 != null goto return r3;	$r13 = new org.hibernate.TransientObjectException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The given object has a null identifier: ");	$r6 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.TransientObjectException: void <init>(java.lang.String)>($r9);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2