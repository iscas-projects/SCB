(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3425 0)
(declare-sort var1143 0)
(declare-sort var2050 0)
(declare-sort var3403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeConverterInfoMap/54904764 (var3425) var2050)
(declare-fun var1143_getConverterClass/1778052349 (var1143) ClassObject)
(declare-fun put/-1127386829 (var2050 var3403 var3403) var3403)
(declare-fun cast-from-ClassObject-to-var3403 (ClassObject) var3403)
(declare-fun cast-from-var1143-to-var3403 (var1143) var3403)
(declare-const null-var3425 var3425)
(declare-const null-var1143 var1143)
(declare-const null-var2050 var2050)
(declare-const null-var3403 var3403)
(declare-const var723 var3425) ; Statement: r0 := @this: org.hibernate.boot.internal.BootstrapContextImpl 
(assert (not (= var723 null-var3425)))
(declare-const var684 var1143) ; Statement: r2 := @parameter0: org.hibernate.boot.AttributeConverterInfo 
(assert (not (= var684 null-var1143)))
(define-const var2303 var2050 (attributeConverterInfoMap/54904764 var723)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap> 
(assert (not (= var2303 null-var2050))) ; Cond: $r1 != null 
(define-const var570 var2050 (attributeConverterInfoMap/54904764 var723)) ; Statement: $r3 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap> 
(define-const var2174 ClassObject (var1143_getConverterClass/1778052349 var684)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.boot.AttributeConverterInfo: java.lang.Class getConverterClass()>() 
(assert true)
(define-const var574 var3403 (put/-1127386829 var570 (cast-from-ClassObject-to-var3403 var2174) (cast-from-var1143-to-var3403 var684))) ; Statement: $r10 = virtualinvoke $r3.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r2) 
 ; Statement: if $r10 == null goto return 
(assert (= var574 null-var3403)) ; Cond: $r10 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeConverterInfoMap/54904764=([org.hibernate.boot.internal.BootstrapContextImpl], java.util.HashMap), var1143_getConverterClass/1778052349=([org.hibernate.boot.AttributeConverterInfo], java.lang.Class), put/-1127386829=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3403=([java.lang.Class], java.lang.Object), cast-from-var1143-to-var3403=([org.hibernate.boot.AttributeConverterInfo], java.lang.Object)}
; {var3425=org.hibernate.boot.internal.BootstrapContextImpl, var723=r0, var1143=org.hibernate.boot.AttributeConverterInfo, var684=r2, var2050=java.util.HashMap, var2303=$r1, var570=$r3, var2174=$r4, var3403=java.lang.Object, var574=$r10}
; {org.hibernate.boot.internal.BootstrapContextImpl=var3425, r0=var723, org.hibernate.boot.AttributeConverterInfo=var1143, r2=var684, java.util.HashMap=var2050, $r1=var2303, $r3=var570, $r4=var2174, java.lang.Object=var3403, $r10=var574}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.internal.BootstrapContextImpl;	r2 := @parameter0: org.hibernate.boot.AttributeConverterInfo;	$r1 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap>;	$r3 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap>;	$r4 = interfaceinvoke r2.<org.hibernate.boot.AttributeConverterInfo: java.lang.Class getConverterClass()>();	$r10 = virtualinvoke $r3.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r2);	if $r10 == null goto return;	return
;block_num 3