(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3282 0)
(declare-sort var1578 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3282-init () (Array Int var3282))
(declare-fun var1578_notNull/515149844 (var3282 String (Array Int var3282)) var3282)
(declare-fun cast-from-String-to-var3282 (String) var3282)
(declare-fun var2280-init () var2280)
(declare-fun <init>/486600603 (var2280) void)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var2138 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2138 null-String)))
(define-const var663 (Array Int var3282) arr-var3282-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var1578_notNull/515149844 (cast-from-String-to-var3282 var2138) "chars must not be null" var663)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "chars must not be null", $r1) 

(declare-const var2138!1 String)
(declare-const var671 String)
(declare-const var663!1 (Array Int var3282))
(define-const var3741 var2280 var2280-init) ; Statement: $r2 = new cn.hutool.core.codec.PercentCodec 
(assert true)
;(assert (<init>/486600603 var3741)) ; Statement: specialinvoke $r2.<cn.hutool.core.codec.PercentCodec: void <init>()>() 

(declare-const var3741!1 var2280)
(define-const var1284 Int (String_length/-667254855 var2138!1)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1823 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return $r2 
(assert (>= var1823 var1284)) ; Cond: i2 >= i0 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3282-init=([], java.lang.Object[]), var1578_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3282=([java.lang.CharSequence], java.lang.Object), var2280-init=([], cn.hutool.core.codec.PercentCodec), <init>/486600603=([cn.hutool.core.codec.PercentCodec], void), String_length/-667254855=([java.lang.CharSequence], int)}
; {var2138=r0, var3282=java.lang.Object, var663=$r1, var1578=cn.hutool.core.lang.Assert, var671="chars must not be null", var2280=cn.hutool.core.codec.PercentCodec, var3741=$r2, var1284=i0, var1823=i2}
; {r0=var2138, java.lang.Object=var3282, $r1=var663, cn.hutool.core.lang.Assert=var1578, "chars must not be null"=var671, cn.hutool.core.codec.PercentCodec=var2280, $r2=var3741, i0=var1284, i2=var1823}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "chars must not be null", $r1);	$r2 = new cn.hutool.core.codec.PercentCodec;	specialinvoke $r2.<cn.hutool.core.codec.PercentCodec: void <init>()>();	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i2 = 0;	if i2 >= i0 goto return $r2;	return $r2
;block_num 3