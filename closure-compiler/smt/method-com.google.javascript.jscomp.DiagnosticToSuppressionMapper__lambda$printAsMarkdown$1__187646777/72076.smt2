(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2044 0)
(declare-sort var627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var627-init () (Array Int var627))
(declare-fun var2044_getKey/-33423493 (var2044) var627)
(declare-fun var2044_getValue/381491177 (var2044) var627)
(declare-fun String_format/1339386452 (String (Array Int var627)) String)
(declare-const null-var2044 var2044)
(declare-const null-__Array__Int__var627__ (Array Int var627))
(declare-const var3307 var2044) ; Statement: r1 := @parameter0: java.util.Map$Entry 
(assert (not (= var3307 null-var2044)))
(define-const var3900 (Array Int var627) arr-var627-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var1632 var627 (var2044_getKey/-33423493 var3307)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>() 
(declare-const var3900!1 (Array Int var627))
(assert (not (= var3900!1 null-__Array__Int__var627__)))
(assert (= (select var3900!1 0) var1632)) ; Statement: $r0[0] = $r2 
(define-const var3129 var627 (var2044_getValue/381491177 var3307)) ; Statement: $r3 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>() 
(declare-const var3900!2 (Array Int var627))
(assert (not (= var3900!2 null-__Array__Int__var627__)))
(assert (= (select var3900!2 1) var3129)) ; Statement: $r0[1] = $r3 
(define-const var3665 String (String_format/1339386452 "|%s|%s|" var3900!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("|%s|%s|", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var627-init=([], java.lang.Object[]), var2044_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), var2044_getValue/381491177=([java.util.Map$Entry], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2044=java.util.Map$Entry, var3307=r1, var627=java.lang.Object, var3900=$r0, var1632=$r2, var3129=$r3, var3665=$r4}
; {java.util.Map$Entry=var2044, r1=var3307, java.lang.Object=var627, $r0=var3900, $r2=var1632, $r3=var3129, $r4=var3665}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.util.Map$Entry;	$r0 = newarray (java.lang.Object)[2];	$r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>();	$r0[0] = $r2;	$r3 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>();	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("|%s|%s|", $r0);	return $r4
;block_num 1