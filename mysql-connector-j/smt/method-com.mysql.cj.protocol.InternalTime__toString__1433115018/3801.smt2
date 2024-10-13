(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3794 0)
(declare-sort var3630 0)
(declare-sort var3538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nanos/1543489138 (var3794) Int)
(declare-fun arr-var3630-init () (Array Int var3630))
(declare-fun hours/1543489138 (var3794) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3630 (Int) var3630)
(declare-fun minutes/1543489138 (var3794) Int)
(declare-fun seconds/1543489138 (var3794) Int)
(declare-fun scale/1543489138 (var3794) Int)
(declare-fun var3538_formatNanos/-419566025 (Int Int Bool) String)
(declare-fun cast-from-String-to-var3630 (String) var3630)
(declare-fun String_format/1339386452 (String (Array Int var3630)) String)
(declare-const null-var3794 var3794)
(declare-const null-__Array__Int__var3630__ (Array Int var3630))
(declare-const var823 var3794) ; Statement: r0 := @this: com.mysql.cj.protocol.InternalTime 
(assert (not (= var823 null-var3794)))
(define-const var3854 Int (nanos/1543489138 var823)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.InternalTime: int nanos> 
 ; Statement: if $i0 <= 0 goto $r1 = newarray (java.lang.Object)[3] 
(assert (not (<= var3854 0))) ; Negate: Cond: $i0 <= 0  
(define-const var2059 (Array Int var3630) arr-var3630-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(define-const var3715 Int (hours/1543489138 var823)) ; Statement: $i4 = r0.<com.mysql.cj.protocol.InternalTime: int hours> 
(define-const var3245 Int (Int_valueOf/-1371140006 var3715)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4) 
(declare-const var2059!1 (Array Int var3630))
(assert (not (= var2059!1 null-__Array__Int__var3630__)))
(assert (= (select var2059!1 0) (cast-from-Int-to-var3630 var3245))) ; Statement: $r6[0] = $r7 
(define-const var1331 Int (minutes/1543489138 var823)) ; Statement: $i5 = r0.<com.mysql.cj.protocol.InternalTime: int minutes> 
(define-const var1743 Int (Int_valueOf/-1371140006 var1331)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5) 
(declare-const var2059!2 (Array Int var3630))
(assert (not (= var2059!2 null-__Array__Int__var3630__)))
(assert (= (select var2059!2 1) (cast-from-Int-to-var3630 var1743))) ; Statement: $r6[1] = $r8 
(define-const var2430 Int (seconds/1543489138 var823)) ; Statement: $i6 = r0.<com.mysql.cj.protocol.InternalTime: int seconds> 
(define-const var1867 Int (Int_valueOf/-1371140006 var2430)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6) 
(declare-const var2059!3 (Array Int var3630))
(assert (not (= var2059!3 null-__Array__Int__var3630__)))
(assert (= (select var2059!3 2) (cast-from-Int-to-var3630 var1867))) ; Statement: $r6[2] = $r9 
(define-const var221 Int (nanos/1543489138 var823)) ; Statement: $i8 = r0.<com.mysql.cj.protocol.InternalTime: int nanos> 
(define-const var1379 Int (scale/1543489138 var823)) ; Statement: $i7 = r0.<com.mysql.cj.protocol.InternalTime: int scale> 
(define-const var1772 String (var3538_formatNanos/-419566025 var221 var1379 (ite (= 1 0) true false))) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String formatNanos(int,int,boolean)>($i8, $i7, 0) 
(declare-const var2059!4 (Array Int var3630))
(assert (not (= var2059!4 null-__Array__Int__var3630__)))
(assert (= (select var2059!4 3) (cast-from-String-to-var3630 var1772))) ; Statement: $r6[3] = $r10 
(define-const var1177 String (String_format/1339386452 "%02d:%02d:%02d.%s" var2059!4)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%02d:%02d:%02d.%s", $r6) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {nanos/1543489138=([com.mysql.cj.protocol.InternalTime], int), arr-var3630-init=([], java.lang.Object[]), hours/1543489138=([com.mysql.cj.protocol.InternalTime], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3630=([java.lang.Integer], java.lang.Object), minutes/1543489138=([com.mysql.cj.protocol.InternalTime], int), seconds/1543489138=([com.mysql.cj.protocol.InternalTime], int), scale/1543489138=([com.mysql.cj.protocol.InternalTime], int), var3538_formatNanos/-419566025=([int, int, boolean], java.lang.String), cast-from-String-to-var3630=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3794=com.mysql.cj.protocol.InternalTime, var823=r0, var3854=$i0, var3630=java.lang.Object, var2059=$r6, var3715=$i4, var3245=$r7, var1331=$i5, var1743=$r8, var2430=$i6, var1867=$r9, var221=$i8, var1379=$i7, var3538=com.mysql.cj.util.TimeUtil, var1772=$r10, var1177=$r11}
; {com.mysql.cj.protocol.InternalTime=var3794, r0=var823, $i0=var3854, java.lang.Object=var3630, $r6=var2059, $i4=var3715, $r7=var3245, $i5=var1331, $r8=var1743, $i6=var2430, $r9=var1867, $i8=var221, $i7=var1379, com.mysql.cj.util.TimeUtil=var3538, $r10=var1772, $r11=var1177}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.InternalTime;	$i0 = r0.<com.mysql.cj.protocol.InternalTime: int nanos>;	if $i0 <= 0 goto $r1 = newarray (java.lang.Object)[3];	$r6 = newarray (java.lang.Object)[4];	$i4 = r0.<com.mysql.cj.protocol.InternalTime: int hours>;	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4);	$r6[0] = $r7;	$i5 = r0.<com.mysql.cj.protocol.InternalTime: int minutes>;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5);	$r6[1] = $r8;	$i6 = r0.<com.mysql.cj.protocol.InternalTime: int seconds>;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6);	$r6[2] = $r9;	$i8 = r0.<com.mysql.cj.protocol.InternalTime: int nanos>;	$i7 = r0.<com.mysql.cj.protocol.InternalTime: int scale>;	$r10 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String formatNanos(int,int,boolean)>($i8, $i7, 0);	$r6[3] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%02d:%02d:%02d.%s", $r6);	return $r11
;block_num 2