(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var691 0)
(declare-sort var3142 0)
(declare-sort var3499 0)
(declare-sort var2973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun adaptors/787585255 (var691) var3499)
(declare-fun var3499_put/1464166817 (var3499 var2973 var2973) var2973)
(declare-fun cast-from-ClassObject-to-var2973 (ClassObject) var2973)
(declare-fun cast-from-var3142-to-var2973 (var3142) var2973)
(declare-const null-var691 var691)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3142 var3142)
(declare-const var218 var691) ; Statement: r1 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var218 null-var691)))
(declare-const var3314 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3314 null-ClassObject)))
(declare-const var913 var3142) ; Statement: r2 := @parameter1: org.stringtemplate.v4.ModelAdaptor 
(assert (not (= var913 null-var3142)))
(assert true)
(define-const var1461 Bool (isPrimitive/-473230874 var3314)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map adaptors> 
(assert (= (ite var1461 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3747 var3499 (adaptors/787585255 var218)) ; Statement: $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map adaptors> 
;(assert (var3499_put/1464166817 var3747 (cast-from-ClassObject-to-var2973 var3314) (cast-from-var3142-to-var2973 var913))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r2) 

(declare-const var3747!1 var3499)
(declare-const var3314!1 ClassObject)
(declare-const var913!1 var3142)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/-473230874=([java.lang.Class], boolean), adaptors/787585255=([org.stringtemplate.v4.STGroup], java.util.Map), var3499_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var2973=([java.lang.Class], java.lang.Object), cast-from-var3142-to-var2973=([org.stringtemplate.v4.ModelAdaptor], java.lang.Object)}
; {var691=org.stringtemplate.v4.STGroup, var218=r1, var3314=r0, var3142=org.stringtemplate.v4.ModelAdaptor, var913=r2, var1461=$z0, var3499=java.util.Map, var3747=$r3, var2973=java.lang.Object}
; {org.stringtemplate.v4.STGroup=var691, r1=var218, r0=var3314, org.stringtemplate.v4.ModelAdaptor=var3142, r2=var913, $z0=var1461, java.util.Map=var3499, $r3=var3747, java.lang.Object=var2973}
;seq 
;cnt {}
;stmts r1 := @this: org.stringtemplate.v4.STGroup;	r0 := @parameter0: java.lang.Class;	r2 := @parameter1: org.stringtemplate.v4.ModelAdaptor;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map adaptors>;	$r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map adaptors>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r2);	return
;block_num 2