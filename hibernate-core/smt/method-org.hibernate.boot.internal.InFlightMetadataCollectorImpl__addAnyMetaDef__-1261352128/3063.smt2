(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1712 0)
(declare-sort var110 0)
(declare-sort var3758 0)
(declare-sort var1681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun anyMetaDefs/1317447214 (var1712) var3758)
(declare-fun var110_name/-1378711075 (var110) String)
(declare-fun var3758_containsKey/1715618542 (var3758 var1681) Bool)
(declare-fun cast-from-String-to-var1681 (String) var1681)
(declare-fun var3758_put/1464166817 (var3758 var1681 var1681) var1681)
(declare-fun cast-from-var110-to-var1681 (var110) var1681)
(declare-const null-var1712 var1712)
(declare-const null-var110 var110)
(declare-const null-var3758 var3758)
(declare-const var781 var1712) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var781 null-var1712)))
(declare-const var3961 var110) ; Statement: r2 := @parameter0: org.hibernate.annotations.AnyMetaDef 
(assert (not (= var3961 null-var110)))
(define-const var3060 var3758 (anyMetaDefs/1317447214 var781)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
(assert (not (= var3060 null-var3758))) ; Cond: $r1 != null 
(define-const var202 var3758 (anyMetaDefs/1317447214 var781)) ; Statement: $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
(define-const var1168 String (var110_name/-1378711075 var3961)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.annotations.AnyMetaDef: java.lang.String name()>() 
(define-const var169 Bool (var3758_containsKey/1715618542 var202 (cast-from-String-to-var1681 var1168))) ; Statement: $z0 = interfaceinvoke $r3.<java.util.Map: boolean containsKey(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
(assert (= (ite var169 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1533 var3758 (anyMetaDefs/1317447214 var781)) ; Statement: $r5 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
(define-const var2218 String (var110_name/-1378711075 var3961)) ; Statement: $r6 = interfaceinvoke r2.<org.hibernate.annotations.AnyMetaDef: java.lang.String name()>() 
;(assert (var3758_put/1464166817 var1533 (cast-from-String-to-var1681 var2218) (cast-from-var110-to-var1681 var3961))) ; Statement: interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r6, r2) 

(declare-const var1533!1 var3758)
(declare-const var2218!1 String)
(declare-const var3961!1 var110)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {anyMetaDefs/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), var110_name/-1378711075=([org.hibernate.annotations.AnyMetaDef], java.lang.String), var3758_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var1681=([java.lang.String], java.lang.Object), var3758_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var110-to-var1681=([org.hibernate.annotations.AnyMetaDef], java.lang.Object)}
; {var1712=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var781=r0, var110=org.hibernate.annotations.AnyMetaDef, var3961=r2, var3758=java.util.Map, var3060=$r1, var202=$r3, var1168=$r4, var1681=java.lang.Object, var169=$z0, var1533=$r5, var2218=$r6}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var1712, r0=var781, org.hibernate.annotations.AnyMetaDef=var110, r2=var3961, java.util.Map=var3758, $r1=var3060, $r3=var202, $r4=var1168, java.lang.Object=var1681, $z0=var169, $r5=var1533, $r6=var2218}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r2 := @parameter0: org.hibernate.annotations.AnyMetaDef;	$r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	$r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	$r4 = interfaceinvoke r2.<org.hibernate.annotations.AnyMetaDef: java.lang.String name()>();	$z0 = interfaceinvoke $r3.<java.util.Map: boolean containsKey(java.lang.Object)>($r4);	if $z0 == 0 goto $r5 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	$r5 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	$r6 = interfaceinvoke r2.<org.hibernate.annotations.AnyMetaDef: java.lang.String name()>();	interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r6, r2);	return
;block_num 3