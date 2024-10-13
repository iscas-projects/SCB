(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var716 0)
(declare-sort var335 0)
(declare-sort var2736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var335-init () (Array Int var335))
(declare-fun var716_getGenericComponentType/-709770427 (var716) ClassObject)
(declare-fun var2736_toString/367894200 (ClassObject) String)
(declare-fun cast-from-String-to-var335 (String) var335)
(declare-fun String_format/1339386452 (String (Array Int var335)) String)
(declare-const null-var716 var716)
(declare-const null-__Array__Int__var335__ (Array Int var335))
(declare-const var2919 var716) ; Statement: r1 := @parameter0: java.lang.reflect.GenericArrayType 
(assert (not (= var2919 null-var716)))
(define-const var790 (Array Int var335) arr-var335-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1342 ClassObject (var716_getGenericComponentType/-709770427 var2919)) ; Statement: $r2 = interfaceinvoke r1.<java.lang.reflect.GenericArrayType: java.lang.reflect.Type getGenericComponentType()>() 
(define-const var1493 String (var2736_toString/367894200 var1342)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>($r2) 
(declare-const var790!1 (Array Int var335))
(assert (not (= var790!1 null-__Array__Int__var335__)))
(assert (= (select var790!1 0) (cast-from-String-to-var335 var1493))) ; Statement: $r0[0] = $r3 
(define-const var3514 String (String_format/1339386452 "%s[]" var790!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s[]", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var335-init=([], java.lang.Object[]), var716_getGenericComponentType/-709770427=([java.lang.reflect.GenericArrayType], java.lang.reflect.Type), var2736_toString/367894200=([java.lang.reflect.Type], java.lang.String), cast-from-String-to-var335=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var716=java.lang.reflect.GenericArrayType, var2919=r1, var335=java.lang.Object, var790=$r0, var1342=$r2, var2736=org.apache.commons.lang3.reflect.TypeUtils, var1493=$r3, var3514=$r4}
; {java.lang.reflect.GenericArrayType=var716, r1=var2919, java.lang.Object=var335, $r0=var790, $r2=var1342, org.apache.commons.lang3.reflect.TypeUtils=var2736, $r3=var1493, $r4=var3514}
;seq <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.reflect.GenericArrayType;	$r0 = newarray (java.lang.Object)[1];	$r2 = interfaceinvoke r1.<java.lang.reflect.GenericArrayType: java.lang.reflect.Type getGenericComponentType()>();	$r3 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>($r2);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s[]", $r0);	return $r4
;block_num 1