(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1882 0)
(declare-sort var693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1882-init () (Array Int var1882))
(declare-fun var693_notNull/515149844 (var1882 String (Array Int var1882)) var1882)
(declare-fun cast-from-__Array__Int__Int__-to-var1882 ((Array Int Int)) var1882)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var802 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var802 null-__Array__Int__Int__)))
(define-const var3500 (Array Int var1882) arr-var1882-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var693_notNull/515149844 (cast-from-__Array__Int__Int__-to-var1882 var802) "Bcd bytes must be not null!" var3500)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Bcd bytes must be not null!", $r1) 

(declare-const var802!1 (Array Int Int))
(declare-const var3567 String)
(declare-const var3500!1 (Array Int var1882))
(define-const var2387 Int (getLength-Arr-Int-1 var802!1)) ; Statement: $i0 = lengthof r0 
(define-const var3345 Int (* var2387 2)) ; Statement: $i1 = $i0 * 2 
(define-const var3383 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (char)[$i1] 
(define-const var1602 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var742 Int (getLength-Arr-Int-1 var802!1)) ; Statement: $i2 = lengthof r0 
 ; Statement: if i17 >= $i2 goto $r4 = new java.lang.String 
(assert (>= var1602 var742)) ; Cond: i17 >= $i2 
(define-const var3127 String String-init) ; Statement: $r4 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3127 var3383)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var3127!1 String)
(declare-const var3383!1 (Array Int Int))
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1882-init=([], java.lang.Object[]), var693_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-__Array__Int__Int__-to-var1882=([byte[]], java.lang.Object), getLength-Arr-Int-1=([byte[]], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var802=r0, var1882=java.lang.Object, var3500=$r1, var693=cn.hutool.core.lang.Assert, var3567="Bcd bytes must be not null!", var2387=$i0, var3345=$i1, var3383=r2, var1602=i17, var742=$i2, var3127=$r4}
; {r0=var802, java.lang.Object=var1882, $r1=var3500, cn.hutool.core.lang.Assert=var693, "Bcd bytes must be not null!"=var3567, $i0=var2387, $i1=var3345, r2=var3383, i17=var1602, $i2=var742, $r4=var3127}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: byte[];	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Bcd bytes must be not null!", $r1);	$i0 = lengthof r0;	$i1 = $i0 * 2;	r2 = newarray (char)[$i1];	i17 = 0;	$i2 = lengthof r0;	if i17 >= $i2 goto $r4 = new java.lang.String;	$r4 = new java.lang.String;	specialinvoke $r4.<java.lang.String: void <init>(char[])>(r2);	return $r4
;block_num 3