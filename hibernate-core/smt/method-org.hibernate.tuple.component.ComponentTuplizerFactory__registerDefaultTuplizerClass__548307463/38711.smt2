(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2522 0)
(declare-sort var1026 0)
(declare-sort var1006 0)
(declare-sort var2605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultImplClassByMode/854309807 (var2522) var1006)
(declare-fun var1006_put/1464166817 (var1006 var2605 var2605) var2605)
(declare-fun cast-from-var1026-to-var2605 (var1026) var2605)
(declare-fun cast-from-ClassObject-to-var2605 (ClassObject) var2605)
(declare-const null-var2522 var2522)
(declare-const null-var1026 var1026)
(declare-const null-ClassObject ClassObject)
(declare-const var2522-$assertionsDisabled Bool)
(declare-const var3693 var2522) ; Statement: r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory 
(assert (not (= var3693 null-var2522)))
(declare-const var1015 var1026) ; Statement: r1 := @parameter0: org.hibernate.EntityMode 
(assert (not (= var1015 null-var1026)))
(declare-const var3794 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3794 null-ClassObject)))
(define-const var2102 Bool var2522-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled> 
(assert (not (= (ite var2102 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1257 Bool var2522-$assertionsDisabled) ; Statement: $z1 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto $r3 = r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.util.Map defaultImplClassByMode> 
(assert (not (= (ite var1257 1 0) 0))) ; Cond: $z1 != 0 
(define-const var441 var1006 (defaultImplClassByMode/854309807 var3693)) ; Statement: $r3 = r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.util.Map defaultImplClassByMode> 
;(assert (var1006_put/1464166817 var441 (cast-from-var1026-to-var2605 var1015) (cast-from-ClassObject-to-var2605 var3794))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2) 

(declare-const var441!1 var1006)
(declare-const var1015!1 var1026)
(declare-const var3794!1 ClassObject)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultImplClassByMode/854309807=([org.hibernate.tuple.component.ComponentTuplizerFactory], java.util.Map), var1006_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1026-to-var2605=([org.hibernate.EntityMode], java.lang.Object), cast-from-ClassObject-to-var2605=([java.lang.Class], java.lang.Object)}
; {var2522=org.hibernate.tuple.component.ComponentTuplizerFactory, var3693=r0, var1026=org.hibernate.EntityMode, var1015=r1, var3794=r2, var2102=$z0, var1257=$z1, var1006=java.util.Map, var441=$r3, var2605=java.lang.Object}
; {org.hibernate.tuple.component.ComponentTuplizerFactory=var2522, r0=var3693, org.hibernate.EntityMode=var1026, r1=var1015, r2=var3794, $z0=var2102, $z1=var1257, java.util.Map=var1006, $r3=var441, java.lang.Object=var2605}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory;	r1 := @parameter0: org.hibernate.EntityMode;	r2 := @parameter1: java.lang.Class;	$z0 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled>;	$z1 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled>;	if $z1 != 0 goto $r3 = r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.util.Map defaultImplClassByMode>;	$r3 = r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.util.Map defaultImplClassByMode>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2);	return
;block_num 3