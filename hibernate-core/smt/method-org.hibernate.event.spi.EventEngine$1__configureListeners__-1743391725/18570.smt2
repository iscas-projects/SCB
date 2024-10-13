(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1271 0)
(declare-sort var1343 0)
(declare-sort var3137 0)
(declare-sort var1252 0)
(declare-sort var3607 0)
(declare-sort var138 0)
(declare-sort var200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$eventTypes/-1773903443 (var1271) var1252)
(declare-fun var1252_containsValue/-75917476 (var1252 var3607) Bool)
(declare-fun cast-from-var1343-to-var3607 (var1343) var3607)
(declare-fun val$listenerRegistryBuilder/-1773903443 (var1271) var138)
(declare-fun getListenerGroup/2112477198 (var138 var1343) var200)
(declare-fun var3137_accept/-1742024366 (var3137 var3607) void)
(declare-fun cast-from-var200-to-var3607 (var200) var3607)
(declare-const null-var1271 var1271)
(declare-const null-var1343 var1343)
(declare-const null-var3137 var3137)
(declare-const var1054 var1271) ; Statement: r0 := @this: org.hibernate.event.spi.EventEngine$1 
(assert (not (= var1054 null-var1271)))
(declare-const var3916 var1343) ; Statement: r1 := @parameter0: org.hibernate.event.spi.EventType 
(assert (not (= var3916 null-var1343)))
(declare-const var2760 var3137) ; Statement: r3 := @parameter1: java.util.function.Consumer 
(assert (not (= var2760 null-var3137)))
(define-const var1485 var1252 (val$eventTypes/-1773903443 var1054)) ; Statement: $r2 = r0.<org.hibernate.event.spi.EventEngine$1: java.util.Map val$eventTypes> 
(define-const var2223 Bool (var1252_containsValue/-75917476 var1485 (cast-from-var1343-to-var3607 var3916))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsValue(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r4 = r0.<org.hibernate.event.spi.EventEngine$1: org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder val$listenerRegistryBuilder> 
(assert (not (= (ite var2223 1 0) 0))) ; Cond: $z0 != 0 
(define-const var218 var138 (val$listenerRegistryBuilder/-1773903443 var1054)) ; Statement: $r4 = r0.<org.hibernate.event.spi.EventEngine$1: org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder val$listenerRegistryBuilder> 
(assert true)
(define-const var3889 var200 (getListenerGroup/2112477198 var218 var3916)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder: org.hibernate.event.service.spi.EventListenerGroup getListenerGroup(org.hibernate.event.spi.EventType)>(r1) 
;(assert (var3137_accept/-1742024366 var2760 (cast-from-var200-to-var3607 var3889))) ; Statement: interfaceinvoke r3.<java.util.function.Consumer: void accept(java.lang.Object)>($r5) 

(declare-const var2760!1 var3137)
(declare-const var3889!1 var200)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$eventTypes/-1773903443=([org.hibernate.event.spi.EventEngine$1], java.util.Map), var1252_containsValue/-75917476=([java.util.Map, java.lang.Object], boolean), cast-from-var1343-to-var3607=([org.hibernate.event.spi.EventType], java.lang.Object), val$listenerRegistryBuilder/-1773903443=([org.hibernate.event.spi.EventEngine$1], org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder), getListenerGroup/2112477198=([org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder, org.hibernate.event.spi.EventType], org.hibernate.event.service.spi.EventListenerGroup), var3137_accept/-1742024366=([java.util.function.Consumer, java.lang.Object], void), cast-from-var200-to-var3607=([org.hibernate.event.service.spi.EventListenerGroup], java.lang.Object)}
; {var1271=org.hibernate.event.spi.EventEngine$1, var1054=r0, var1343=org.hibernate.event.spi.EventType, var3916=r1, var3137=java.util.function.Consumer, var2760=r3, var1252=java.util.Map, var1485=$r2, var3607=java.lang.Object, var2223=$z0, var138=org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder, var218=$r4, var200=org.hibernate.event.service.spi.EventListenerGroup, var3889=$r5}
; {org.hibernate.event.spi.EventEngine$1=var1271, r0=var1054, org.hibernate.event.spi.EventType=var1343, r1=var3916, java.util.function.Consumer=var3137, r3=var2760, java.util.Map=var1252, $r2=var1485, java.lang.Object=var3607, $z0=var2223, org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder=var138, $r4=var218, org.hibernate.event.service.spi.EventListenerGroup=var200, $r5=var3889}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.event.spi.EventEngine$1;	r1 := @parameter0: org.hibernate.event.spi.EventType;	r3 := @parameter1: java.util.function.Consumer;	$r2 = r0.<org.hibernate.event.spi.EventEngine$1: java.util.Map val$eventTypes>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsValue(java.lang.Object)>(r1);	if $z0 != 0 goto $r4 = r0.<org.hibernate.event.spi.EventEngine$1: org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder val$listenerRegistryBuilder>;	$r4 = r0.<org.hibernate.event.spi.EventEngine$1: org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder val$listenerRegistryBuilder>;	$r5 = virtualinvoke $r4.<org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder: org.hibernate.event.service.spi.EventListenerGroup getListenerGroup(org.hibernate.event.spi.EventType)>(r1);	interfaceinvoke r3.<java.util.function.Consumer: void accept(java.lang.Object)>($r5);	return
;block_num 2