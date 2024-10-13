(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var664 0)
(declare-sort var955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var955-init () (Array Int var955))
(declare-fun cast-from-var664-to-var955 (var664) var955)
(declare-fun String_format/1339386452 (String (Array Int var955)) String)
(declare-const null-var664 var664)
(declare-const null-__Array__Int__var955__ (Array Int var955))
(declare-const var2167 var664) ; Statement: r1 := @parameter0: java.util.Formattable 
(assert (not (= var2167 null-var664)))
(define-const var2182 (Array Int var955) arr-var955-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var2182!1 (Array Int var955))
(assert (not (= var2182!1 null-__Array__Int__var955__)))
(assert (= (select var2182!1 0) (cast-from-var664-to-var955 var2167))) ; Statement: $r0[0] = r1 
(define-const var2476 String (String_format/1339386452 "%s" var2182!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var955-init=([], java.lang.Object[]), cast-from-var664-to-var955=([java.util.Formattable], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var664=java.util.Formattable, var2167=r1, var955=java.lang.Object, var2182=$r0, var2476=$r2}
; {java.util.Formattable=var664, r1=var2167, java.lang.Object=var955, $r0=var2182, $r2=var2476}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.util.Formattable;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s", $r0);	return $r2
;block_num 1