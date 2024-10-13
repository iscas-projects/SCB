(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2070 0)
(declare-sort var910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var910-init () (Array Int var910))
(declare-fun year/-144895004 (var2070) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var910 (Int) var910)
(declare-fun isLeapMonth/-2057430923 (var2070) Bool)
(declare-fun month/-144895004 (var2070) Int)
(declare-fun day/-144895004 (var2070) Int)
(declare-fun String_format/1339386452 (String (Array Int var910)) String)
(declare-const null-var2070 var2070)
(declare-const null-__Array__Int__var910__ (Array Int var910))
(declare-const var647 var2070) ; Statement: r1 := @this: cn.hutool.core.date.ChineseDate 
(assert (not (= var647 null-var2070)))
(define-const var310 (Array Int var910) arr-var910-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var210 Int (year/-144895004 var647)) ; Statement: $i0 = r1.<cn.hutool.core.date.ChineseDate: int year> 
(define-const var2505 Int (Int_valueOf/-1371140006 var210)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var310!1 (Array Int var910))
(assert (not (= var310!1 null-__Array__Int__var910__)))
(assert (= (select var310!1 0) (cast-from-Int-to-var910 var2505))) ; Statement: $r0[0] = $r2 
(assert true)
(define-const var2387 Bool (isLeapMonth/-2057430923 var647)) ; Statement: $z0 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: boolean isLeapMonth()>() 
 ; Statement: if $z0 == 0 goto $i3 = r1.<cn.hutool.core.date.ChineseDate: int month> 
(assert (not (= (ite var2387 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2106 Int (month/-144895004 var647)) ; Statement: $i2 = r1.<cn.hutool.core.date.ChineseDate: int month> 
(define-const var3699 Int (- var2106 1)) ; Statement: $i3 = $i2 - 1 
 ; Statement: goto [?= $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3)] 
(assert true) ; Non Conditional
(define-const var950 Int (Int_valueOf/-1371140006 var3699)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3) 
(declare-const var310!2 (Array Int var910))
(assert (not (= var310!2 null-__Array__Int__var910__)))
(assert (= (select var310!2 1) (cast-from-Int-to-var910 var950))) ; Statement: $r0[1] = $r3 
(define-const var815 Int (day/-144895004 var647)) ; Statement: $i1 = r1.<cn.hutool.core.date.ChineseDate: int day> 
(define-const var2672 Int (Int_valueOf/-1371140006 var815)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var310!3 (Array Int var910))
(assert (not (= var310!3 null-__Array__Int__var910__)))
(assert (= (select var310!3 2) (cast-from-Int-to-var910 var2672))) ; Statement: $r0[2] = $r4 
(define-const var936 String (String_format/1339386452 "%04d-%02d-%02d" var310!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%04d-%02d-%02d", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var910-init=([], java.lang.Object[]), year/-144895004=([cn.hutool.core.date.ChineseDate], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var910=([java.lang.Integer], java.lang.Object), isLeapMonth/-2057430923=([cn.hutool.core.date.ChineseDate], boolean), month/-144895004=([cn.hutool.core.date.ChineseDate], int), day/-144895004=([cn.hutool.core.date.ChineseDate], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2070=cn.hutool.core.date.ChineseDate, var647=r1, var910=java.lang.Object, var310=$r0, var210=$i0, var2505=$r2, var2387=$z0, var2106=$i2, var3699=$i3, var950=$r3, var815=$i1, var2672=$r4, var936=$r5}
; {cn.hutool.core.date.ChineseDate=var2070, r1=var647, java.lang.Object=var910, $r0=var310, $i0=var210, $r2=var2505, $z0=var2387, $i2=var2106, $i3=var3699, $r3=var950, $i1=var815, $r4=var2672, $r5=var936}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: cn.hutool.core.date.ChineseDate;	$r0 = newarray (java.lang.Object)[3];	$i0 = r1.<cn.hutool.core.date.ChineseDate: int year>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$z0 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: boolean isLeapMonth()>();	if $z0 == 0 goto $i3 = r1.<cn.hutool.core.date.ChineseDate: int month>;	$i2 = r1.<cn.hutool.core.date.ChineseDate: int month>;	$i3 = $i2 - 1;	goto [?= $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3)];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3);	$r0[1] = $r3;	$i1 = r1.<cn.hutool.core.date.ChineseDate: int day>;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%04d-%02d-%02d", $r0);	return $r5
;block_num 3