(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1006 0)
(declare-sort var3927 0)
(declare-sort var1792 0)
(declare-sort var2749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultImplClassByMode/-1641524947 (var1006) var1792)
(declare-fun var1792_put/1464166817 (var1792 var2749 var2749) var2749)
(declare-fun cast-from-var3927-to-var2749 (var3927) var2749)
(declare-fun cast-from-ClassObject-to-var2749 (ClassObject) var2749)
(declare-const null-var1006 var1006)
(declare-const null-var3927 var3927)
(declare-const null-ClassObject ClassObject)
(declare-const var1006-$assertionsDisabled Bool)
(declare-const var3774 var1006) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory 
(assert (not (= var3774 null-var1006)))
(declare-const var2058 var3927) ; Statement: r1 := @parameter0: org.hibernate.EntityMode 
(assert (not (= var2058 null-var3927)))
(declare-const var447 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var447 null-ClassObject)))
(define-const var929 Bool var1006-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled> 
(assert (not (= (ite var929 1 0) 0))) ; Cond: $z0 != 0 
(define-const var610 Bool var1006-$assertionsDisabled) ; Statement: $z1 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto $r3 = r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.util.Map defaultImplClassByMode> 
(assert (not (= (ite var610 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3738 var1792 (defaultImplClassByMode/-1641524947 var3774)) ; Statement: $r3 = r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.util.Map defaultImplClassByMode> 
;(assert (var1792_put/1464166817 var3738 (cast-from-var3927-to-var2749 var2058) (cast-from-ClassObject-to-var2749 var447))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2) 

(declare-const var3738!1 var1792)
(declare-const var2058!1 var3927)
(declare-const var447!1 ClassObject)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultImplClassByMode/-1641524947=([org.hibernate.tuple.entity.EntityTuplizerFactory], java.util.Map), var1792_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3927-to-var2749=([org.hibernate.EntityMode], java.lang.Object), cast-from-ClassObject-to-var2749=([java.lang.Class], java.lang.Object)}
; {var1006=org.hibernate.tuple.entity.EntityTuplizerFactory, var3774=r0, var3927=org.hibernate.EntityMode, var2058=r1, var447=r2, var929=$z0, var610=$z1, var1792=java.util.Map, var3738=$r3, var2749=java.lang.Object}
; {org.hibernate.tuple.entity.EntityTuplizerFactory=var1006, r0=var3774, org.hibernate.EntityMode=var3927, r1=var2058, r2=var447, $z0=var929, $z1=var610, java.util.Map=var1792, $r3=var3738, java.lang.Object=var2749}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory;	r1 := @parameter0: org.hibernate.EntityMode;	r2 := @parameter1: java.lang.Class;	$z0 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled>;	$z1 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled>;	if $z1 != 0 goto $r3 = r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.util.Map defaultImplClassByMode>;	$r3 = r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.util.Map defaultImplClassByMode>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2);	return
;block_num 3