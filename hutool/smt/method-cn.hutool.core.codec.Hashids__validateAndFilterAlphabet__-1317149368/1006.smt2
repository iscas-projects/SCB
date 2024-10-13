(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1842 0)
(declare-sort var3067 0)
(declare-sort var168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3067-init () var3067)
(declare-fun arr-var168-init () (Array Int var168))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var168 (Int) var168)
(declare-fun String_format/1339386452 (String (Array Int var168)) String)
(declare-fun <init>/875830710 (var3067 String) void)
(declare-const null-var1842 var1842)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__var168__ (Array Int var168))
(declare-const var1394 var1842) ; Statement: r20 := @this: cn.hutool.core.codec.Hashids 
(assert (not (= var1394 null-var1842)))
(declare-const var2510 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var2510 null-__Array__Int__Int__)))
(declare-const var1220 (Array Int Int)) ; Statement: r2 := @parameter1: char[] 
(assert (not (= var1220 null-__Array__Int__Int__)))
(define-const var2514 Int (getLength-Arr-Int-1 var2510)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 >= 16 goto $r1 = new java.util.LinkedHashSet 
(assert (not (>= var2514 16))) ; Negate: Cond: $i0 >= 16  
(define-const var1732 var3067 var3067-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(define-const var3400 (Array Int var168) arr-var168-init) ; Statement: $r16 = newarray (java.lang.Object)[2] 
(define-const var511 Int (Int_valueOf/-1371140006 16)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(16) 
(declare-const var3400!1 (Array Int var168))
(assert (not (= var3400!1 null-__Array__Int__var168__)))
(assert (= (select var3400!1 0) (cast-from-Int-to-var168 var511))) ; Statement: $r16[0] = $r17 
(define-const var1343 Int (getLength-Arr-Int-1 var2510)) ; Statement: $i7 = lengthof r0 
(define-const var2543 Int (Int_valueOf/-1371140006 var1343)) ; Statement: $r18 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i7) 
(declare-const var3400!2 (Array Int var168))
(assert (not (= var3400!2 null-__Array__Int__var168__)))
(assert (= (select var3400!2 1) (cast-from-Int-to-var168 var2543))) ; Statement: $r16[1] = $r18 
(define-const var3548 String (String_format/1339386452 "alphabet must contain at least %d unique characters: %d" var3400!2)) ; Statement: $r19 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("alphabet must contain at least %d unique characters: %d", $r16) 
(assert true)
;(assert (<init>/875830710 var1732 var3548)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var1732!1 var3067)
(declare-const var3548!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([char[]], int), var3067-init=([], java.lang.IllegalArgumentException), arr-var168-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var168=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1842=cn.hutool.core.codec.Hashids, var1394=r20, var2510=r0, var1220=r2, var2514=$i0, var3067=java.lang.IllegalArgumentException, var1732=$r15, var168=java.lang.Object, var3400=$r16, var511=$r17, var1343=$i7, var2543=$r18, var3548=$r19}
; {cn.hutool.core.codec.Hashids=var1842, r20=var1394, r0=var2510, r2=var1220, $i0=var2514, java.lang.IllegalArgumentException=var3067, $r15=var1732, java.lang.Object=var168, $r16=var3400, $r17=var511, $i7=var1343, $r18=var2543, $r19=var3548}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r20 := @this: cn.hutool.core.codec.Hashids;	r0 := @parameter0: char[];	r2 := @parameter1: char[];	$i0 = lengthof r0;	if $i0 >= 16 goto $r1 = new java.util.LinkedHashSet;	$r15 = new java.lang.IllegalArgumentException;	$r16 = newarray (java.lang.Object)[2];	$r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(16);	$r16[0] = $r17;	$i7 = lengthof r0;	$r18 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i7);	$r16[1] = $r18;	$r19 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("alphabet must contain at least %d unique characters: %d", $r16);	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r15
;block_num 2