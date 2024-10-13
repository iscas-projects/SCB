(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var621 0)
(declare-sort var412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nanos/1543489138 (var621) Int)
(declare-fun arr-var412-init () (Array Int var412))
(declare-fun hours/1543489138 (var621) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var412 (Int) var412)
(declare-fun minutes/1543489138 (var621) Int)
(declare-fun seconds/1543489138 (var621) Int)
(declare-fun String_format/1339386452 (String (Array Int var412)) String)
(declare-const null-var621 var621)
(declare-const null-__Array__Int__var412__ (Array Int var412))
(declare-const var305 var621) ; Statement: r0 := @this: com.mysql.cj.protocol.InternalTime 
(assert (not (= var305 null-var621)))
(define-const var2152 Int (nanos/1543489138 var305)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.InternalTime: int nanos> 
 ; Statement: if $i0 <= 0 goto $r1 = newarray (java.lang.Object)[3] 
(assert (<= var2152 0)) ; Cond: $i0 <= 0 
(define-const var1234 (Array Int var412) arr-var412-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var3976 Int (hours/1543489138 var305)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.InternalTime: int hours> 
(define-const var543 Int (Int_valueOf/-1371140006 var3976)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var1234!1 (Array Int var412))
(assert (not (= var1234!1 null-__Array__Int__var412__)))
(assert (= (select var1234!1 0) (cast-from-Int-to-var412 var543))) ; Statement: $r1[0] = $r2 
(define-const var3946 Int (minutes/1543489138 var305)) ; Statement: $i2 = r0.<com.mysql.cj.protocol.InternalTime: int minutes> 
(define-const var1476 Int (Int_valueOf/-1371140006 var3946)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(declare-const var1234!2 (Array Int var412))
(assert (not (= var1234!2 null-__Array__Int__var412__)))
(assert (= (select var1234!2 1) (cast-from-Int-to-var412 var1476))) ; Statement: $r1[1] = $r3 
(define-const var3344 Int (seconds/1543489138 var305)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.InternalTime: int seconds> 
(define-const var1955 Int (Int_valueOf/-1371140006 var3344)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3) 
(declare-const var1234!3 (Array Int var412))
(assert (not (= var1234!3 null-__Array__Int__var412__)))
(assert (= (select var1234!3 2) (cast-from-Int-to-var412 var1955))) ; Statement: $r1[2] = $r4 
(define-const var1819 String (String_format/1339386452 "%02d:%02d:%02d" var1234!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%02d:%02d:%02d", $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {nanos/1543489138=([com.mysql.cj.protocol.InternalTime], int), arr-var412-init=([], java.lang.Object[]), hours/1543489138=([com.mysql.cj.protocol.InternalTime], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var412=([java.lang.Integer], java.lang.Object), minutes/1543489138=([com.mysql.cj.protocol.InternalTime], int), seconds/1543489138=([com.mysql.cj.protocol.InternalTime], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var621=com.mysql.cj.protocol.InternalTime, var305=r0, var2152=$i0, var412=java.lang.Object, var1234=$r1, var3976=$i1, var543=$r2, var3946=$i2, var1476=$r3, var3344=$i3, var1955=$r4, var1819=$r5}
; {com.mysql.cj.protocol.InternalTime=var621, r0=var305, $i0=var2152, java.lang.Object=var412, $r1=var1234, $i1=var3976, $r2=var543, $i2=var3946, $r3=var1476, $i3=var3344, $r4=var1955, $r5=var1819}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.InternalTime;	$i0 = r0.<com.mysql.cj.protocol.InternalTime: int nanos>;	if $i0 <= 0 goto $r1 = newarray (java.lang.Object)[3];	$r1 = newarray (java.lang.Object)[3];	$i1 = r0.<com.mysql.cj.protocol.InternalTime: int hours>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r1[0] = $r2;	$i2 = r0.<com.mysql.cj.protocol.InternalTime: int minutes>;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r1[1] = $r3;	$i3 = r0.<com.mysql.cj.protocol.InternalTime: int seconds>;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3);	$r1[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%02d:%02d:%02d", $r1);	return $r5
;block_num 2