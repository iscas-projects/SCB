(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1071 0)
(declare-sort var468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var468-init () (Array Int var468))
(declare-fun bytes/-540919466 (var1071) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var468 (Int) var468)
(declare-fun String_format/1339386452 (String (Array Int var468)) String)
(declare-const null-var1071 var1071)
(declare-const null-__Array__Int__var468__ (Array Int var468))
(declare-const var3937 var1071) ; Statement: r1 := @this: cn.hutool.core.io.unit.DataSize 
(assert (not (= var3937 null-var1071)))
(define-const var1165 (Array Int var468) arr-var468-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var2179 Int (bytes/-540919466 var3937)) ; Statement: $l0 = r1.<cn.hutool.core.io.unit.DataSize: long bytes> 
(define-const var1836 Int (Int_valueOf/-1102777585 var2179)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var1165!1 (Array Int var468))
(assert (not (= var1165!1 null-__Array__Int__var468__)))
(assert (= (select var1165!1 0) (cast-from-Int-to-var468 var1836))) ; Statement: $r0[0] = $r2 
(define-const var2252 String (String_format/1339386452 "%dB" var1165!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%dB", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var468-init=([], java.lang.Object[]), bytes/-540919466=([cn.hutool.core.io.unit.DataSize], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var468=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1071=cn.hutool.core.io.unit.DataSize, var3937=r1, var468=java.lang.Object, var1165=$r0, var2179=$l0, var1836=$r2, var2252=$r3}
; {cn.hutool.core.io.unit.DataSize=var1071, r1=var3937, java.lang.Object=var468, $r0=var1165, $l0=var2179, $r2=var1836, $r3=var2252}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: cn.hutool.core.io.unit.DataSize;	$r0 = newarray (java.lang.Object)[1];	$l0 = r1.<cn.hutool.core.io.unit.DataSize: long bytes>;	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%dB", $r0);	return $r3
;block_num 1