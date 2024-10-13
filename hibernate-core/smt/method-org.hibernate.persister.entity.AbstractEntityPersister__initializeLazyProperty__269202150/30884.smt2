(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3151 0)
(declare-sort var1483 0)
(declare-sort var3802 0)
(declare-sort var3875 0)
(declare-sort var1679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyPropertyNumbers/824079012 (var3151) (Array Int Int))
(declare-fun setPropertyValue/-1745110762 (var3151 var3802 Int var3802) void)
(declare-fun var1679_getLoadedState/8505957 (var1679) (Array Int var3802))
(declare-fun var1679_getDeletedState/-1521277743 (var1679) (Array Int var3802))
(declare-fun lazyPropertyNames/824079012 (var3151) (Array Int String))
(declare-const null-var3151 var3151)
(declare-const null-String String)
(declare-const null-var3802 var3802)
(declare-const null-var3875 var3875)
(declare-const null-var1679 var1679)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3802__ (Array Int var3802))
(declare-const var3362 var3151) ; Statement: r0 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var3362 null-var3151)))
(declare-const var1435 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1435 null-String)))
(declare-const var3899 var3802) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var3899 null-var3802)))
(declare-const var553 var3875) ; Statement: r22 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var553 null-var3875)))
(declare-const var315 var1679) ; Statement: r4 := @parameter3: org.hibernate.engine.spi.EntityEntry 
(assert (not (= var315 null-var1679)))
(declare-const var2927 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var2927 null-Int)))
(declare-const var3885 var3802) ; Statement: r3 := @parameter5: java.lang.Object 
(assert (not (= var3885 null-var3802)))
(define-const var3971 (Array Int Int) (lazyPropertyNumbers/824079012 var3362)) ; Statement: $r2 = r0.<org.hibernate.persister.entity.AbstractEntityPersister: int[] lazyPropertyNumbers> 
(define-const var2652 Int (select var3971 var2927)) ; Statement: $i1 = $r2[i0] 
(assert true)
;(assert (setPropertyValue/-1745110762 var3362 var3899 var2652 var3885)) ; Statement: virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: void setPropertyValue(java.lang.Object,int,java.lang.Object)>(r1, $i1, r3) 

(declare-const var3362!1 var3151)
(declare-const var3899!1 var3802)
(declare-const var2652!1 Int)
(declare-const var3885!1 var3802)
(define-const var361 (Array Int var3802) (var1679_getLoadedState/8505957 var315)) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.engine.spi.EntityEntry: java.lang.Object[] getLoadedState()>() 
 ; Statement: if $r5 == null goto $r6 = interfaceinvoke r4.<org.hibernate.engine.spi.EntityEntry: java.lang.Object[] getDeletedState()>() 
(assert (= var361 null-__Array__Int__var3802__)) ; Cond: $r5 == null 
(define-const var2527 (Array Int var3802) (var1679_getDeletedState/-1521277743 var315)) ; Statement: $r6 = interfaceinvoke r4.<org.hibernate.engine.spi.EntityEntry: java.lang.Object[] getDeletedState()>() 
 ; Statement: if $r6 == null goto $r8 = r0.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] lazyPropertyNames> 
(assert (= var2527 null-__Array__Int__var3802__)) ; Cond: $r6 == null 
(define-const var2509 (Array Int String) (lazyPropertyNames/824079012 var3362!1)) ; Statement: $r8 = r0.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] lazyPropertyNames> 
(define-const var2955 String (select var2509 var2927)) ; Statement: $r9 = $r8[i0] 
(assert true)
(define-const var846 Bool (= var1435 var2955)) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyPropertyNumbers/824079012=([org.hibernate.persister.entity.AbstractEntityPersister], int[]), setPropertyValue/-1745110762=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.Object, int, java.lang.Object], void), var1679_getLoadedState/8505957=([org.hibernate.engine.spi.EntityEntry], java.lang.Object[]), var1679_getDeletedState/-1521277743=([org.hibernate.engine.spi.EntityEntry], java.lang.Object[]), lazyPropertyNames/824079012=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String[])}
; {var3151=org.hibernate.persister.entity.AbstractEntityPersister, var3362=r0, var1435=r7, var1483=null_type, var3802=java.lang.Object, var3899=r1, var3875=org.hibernate.engine.spi.SharedSessionContractImplementor, var553=r22, var1679=org.hibernate.engine.spi.EntityEntry, var315=r4, var2927=i0, var3885=r3, var3971=$r2, var2652=$i1, var361=$r5, var2527=$r6, var2509=$r8, var2955=$r9, var846=$z0}
; {org.hibernate.persister.entity.AbstractEntityPersister=var3151, r0=var3362, r7=var1435, null_type=var1483, java.lang.Object=var3802, r1=var3899, org.hibernate.engine.spi.SharedSessionContractImplementor=var3875, r22=var553, org.hibernate.engine.spi.EntityEntry=var1679, r4=var315, i0=var2927, r3=var3885, $r2=var3971, $i1=var2652, $r5=var361, $r6=var2527, $r8=var2509, $r9=var2955, $z0=var846}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r7 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	r22 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	r4 := @parameter3: org.hibernate.engine.spi.EntityEntry;	i0 := @parameter4: int;	r3 := @parameter5: java.lang.Object;	$r2 = r0.<org.hibernate.persister.entity.AbstractEntityPersister: int[] lazyPropertyNumbers>;	$i1 = $r2[i0];	virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: void setPropertyValue(java.lang.Object,int,java.lang.Object)>(r1, $i1, r3);	$r5 = interfaceinvoke r4.<org.hibernate.engine.spi.EntityEntry: java.lang.Object[] getLoadedState()>();	if $r5 == null goto $r6 = interfaceinvoke r4.<org.hibernate.engine.spi.EntityEntry: java.lang.Object[] getDeletedState()>();	$r6 = interfaceinvoke r4.<org.hibernate.engine.spi.EntityEntry: java.lang.Object[] getDeletedState()>();	if $r6 == null goto $r8 = r0.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] lazyPropertyNames>;	$r8 = r0.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] lazyPropertyNames>;	$r9 = $r8[i0];	$z0 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9);	return $z0
;block_num 3