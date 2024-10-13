(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var392 0)
(declare-sort var2831 0)
(declare-sort var1434 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1442430106 (var392) Bool)
(declare-fun arr-var1434-init () (Array Int var1434))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1434 (Int) var1434)
(declare-fun String_format/1339386452 (String (Array Int var1434)) String)
(declare-fun writeString/-1604794942 (var392 String) void)
(declare-const null-var392 var392)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var1434__ (Array Int var1434))
(declare-const var1685 var392) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONWriter 
(assert (not (= var1685 null-var392)))
(declare-const var2619 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2619 null-Int)))
(declare-const var2957 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2957 null-String)))
 ; Statement: if r0 == null goto virtualinvoke r1.<com.alibaba.fastjson2.JSONWriter: void writeInt32(int)>(i0) 
(assert (not (= var2957 null-String))) ; Negate: Cond: r0 == null  
(define-const var694 Bool (jsonb/1442430106 var1685)) ; Statement: $z0 = r1.<com.alibaba.fastjson2.JSONWriter: boolean jsonb> 
 ; Statement: if $z0 == 0 goto $r2 = newarray (java.lang.Object)[1] 
(assert (= (ite var694 1 0) 0)) ; Cond: $z0 == 0 
(define-const var563 (Array Int var1434) arr-var1434-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(define-const var2080 Int (Int_valueOf/-1371140006 var2619)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var563!1 (Array Int var1434))
(assert (not (= var563!1 null-__Array__Int__var1434__)))
(assert (= (select var563!1 0) (cast-from-Int-to-var1434 var2080))) ; Statement: $r2[0] = $r3 
(define-const var825 String (String_format/1339386452 var2957 var563!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, $r2) 
(assert true)
;(assert (writeString/-1604794942 var1685 var825)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.JSONWriter: void writeString(java.lang.String)>($r4) 

(declare-const var1685!1 var392)
(declare-const var825!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1442430106=([com.alibaba.fastjson2.JSONWriter], boolean), arr-var1434-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1434=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), writeString/-1604794942=([com.alibaba.fastjson2.JSONWriter, java.lang.String], void)}
; {var392=com.alibaba.fastjson2.JSONWriter, var1685=r1, var2619=i0, var2957=r0, var2831=null_type, var694=$z0, var1434=java.lang.Object, var563=$r2, var2080=$r3, var825=$r4}
; {com.alibaba.fastjson2.JSONWriter=var392, r1=var1685, i0=var2619, r0=var2957, null_type=var2831, $z0=var694, java.lang.Object=var1434, $r2=var563, $r3=var2080, $r4=var825}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONWriter;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	if r0 == null goto virtualinvoke r1.<com.alibaba.fastjson2.JSONWriter: void writeInt32(int)>(i0);	$z0 = r1.<com.alibaba.fastjson2.JSONWriter: boolean jsonb>;	if $z0 == 0 goto $r2 = newarray (java.lang.Object)[1];	$r2 = newarray (java.lang.Object)[1];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, $r2);	virtualinvoke r1.<com.alibaba.fastjson2.JSONWriter: void writeString(java.lang.String)>($r4);	return
;block_num 3