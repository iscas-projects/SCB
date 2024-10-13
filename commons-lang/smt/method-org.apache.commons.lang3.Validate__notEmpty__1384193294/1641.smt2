(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var3005 0)
(declare-sort var3865 0)
(declare-sort var1253 0)
(declare-sort var646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1253_toSupplier/2040472275 (String (Array Int var3005)) var3865)
(declare-fun var646_requireNonNull/1077068520 (var3005 var3865) var3005)
(declare-fun cast-from-String-to-var3005 (String) var3005)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var3005__ (Array Int var3005))
(declare-const var3739 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3739 null-String)))
(declare-const var2909 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2909 null-String)))
(declare-const var1236 (Array Int var3005)) ; Statement: r2 := @parameter2: java.lang.Object[] 
(assert (not (= var1236 null-__Array__Int__var3005__)))
(define-const var797 var3865 (var1253_toSupplier/2040472275 var2909 var1236)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.Validate: java.util.function.Supplier toSupplier(java.lang.String,java.lang.Object[])>(r1, r2) 
;(assert (var646_requireNonNull/1077068520 (cast-from-String-to-var3005 var3739) var797)) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.util.function.Supplier)>(r0, $r3) 

(declare-const var3739!1 String)
(declare-const var797!1 var3865)
(define-const var1167 Int (String_length/-667254855 var3739!1)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto return r0 
(assert (not (= var1167 0))) ; Cond: $i0 != 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1253_toSupplier/2040472275=([java.lang.String, java.lang.Object[]], java.util.function.Supplier), var646_requireNonNull/1077068520=([java.lang.Object, java.util.function.Supplier], java.lang.Object), cast-from-String-to-var3005=([java.lang.CharSequence], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int)}
; {var3739=r0, var2909=r1, var2692=null_type, var3005=java.lang.Object, var1236=r2, var3865=java.util.function.Supplier, var1253=org.apache.commons.lang3.Validate, var797=$r3, var646=java.util.Objects, var1167=$i0}
; {r0=var3739, r1=var2909, null_type=var2692, java.lang.Object=var3005, r2=var1236, java.util.function.Supplier=var3865, org.apache.commons.lang3.Validate=var1253, $r3=var797, java.util.Objects=var646, $i0=var1167}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object[];	$r3 = staticinvoke <org.apache.commons.lang3.Validate: java.util.function.Supplier toSupplier(java.lang.String,java.lang.Object[])>(r1, r2);	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.util.function.Supplier)>(r0, $r3);	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto return r0;	return r0
;block_num 2