(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var636 0)
(declare-sort var2279 0)
(declare-sort var935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2279-init () (Array Int var2279))
(declare-fun var935_identityHashCode/1096208673 (var2279) Int)
(declare-fun cast-from-var636-to-var2279 (var636) var2279)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun cast-from-String-to-var2279 (String) var2279)
(declare-fun size/2055911777 (var636) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2279 (Int) var2279)
(declare-fun String_format/1339386452 (String (Array Int var2279)) String)
(declare-const null-var636 var636)
(declare-const null-__Array__Int__var2279__ (Array Int var2279))
(declare-const var257 var636) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output 
(assert (not (= var257 null-var636)))
(define-const var930 (Array Int var2279) arr-var2279-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var283 Int (var935_identityHashCode/1096208673 (cast-from-var636-to-var2279 var257))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(define-const var384 String (Int_toHexString/1865784998 var283)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0) 
(declare-const var930!1 (Array Int var2279))
(assert (not (= var930!1 null-__Array__Int__var2279__)))
(assert (= (select var930!1 0) (cast-from-String-to-var2279 var384))) ; Statement: $r0[0] = $r2 
(assert true)
(define-const var1018 Int (size/2055911777 var257)) ; Statement: $i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output: int size()>() 
(define-const var2218 Int (Int_valueOf/-1371140006 var1018)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var930!2 (Array Int var2279))
(assert (not (= var930!2 null-__Array__Int__var2279__)))
(assert (= (select var930!2 1) (cast-from-Int-to-var2279 var2218))) ; Statement: $r0[1] = $r3 
(define-const var3451 String (String_format/1339386452 "<ByteString.Output@%s size=%d>" var930!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("<ByteString.Output@%s size=%d>", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2279-init=([], java.lang.Object[]), var935_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var636-to-var2279=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output], java.lang.Object), Int_toHexString/1865784998=([int], java.lang.String), cast-from-String-to-var2279=([java.lang.String], java.lang.Object), size/2055911777=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2279=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var636=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output, var257=r1, var2279=java.lang.Object, var930=$r0, var935=java.lang.System, var283=$i0, var384=$r2, var1018=$i1, var2218=$r3, var3451=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output=var636, r1=var257, java.lang.Object=var2279, $r0=var930, java.lang.System=var935, $i0=var283, $r2=var384, $i1=var1018, $r3=var2218, $r4=var3451}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output;	$r0 = newarray (java.lang.Object)[2];	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0);	$r0[0] = $r2;	$i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output: int size()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("<ByteString.Output@%s size=%d>", $r0);	return $r4
;block_num 1