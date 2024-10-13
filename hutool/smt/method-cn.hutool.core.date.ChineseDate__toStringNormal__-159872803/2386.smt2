(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1997 0)
(declare-sort var3317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3317-init () (Array Int var3317))
(declare-fun year/-144895004 (var1997) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3317 (Int) var3317)
(declare-fun isLeapMonth/-2057430923 (var1997) Bool)
(declare-fun month/-144895004 (var1997) Int)
(declare-fun day/-144895004 (var1997) Int)
(declare-fun String_format/1339386452 (String (Array Int var3317)) String)
(declare-const null-var1997 var1997)
(declare-const null-__Array__Int__var3317__ (Array Int var3317))
(declare-const var3969 var1997) ; Statement: r1 := @this: cn.hutool.core.date.ChineseDate 
(assert (not (= var3969 null-var1997)))
(define-const var1423 (Array Int var3317) arr-var3317-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var1296 Int (year/-144895004 var3969)) ; Statement: $i0 = r1.<cn.hutool.core.date.ChineseDate: int year> 
(define-const var1770 Int (Int_valueOf/-1371140006 var1296)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var1423!1 (Array Int var3317))
(assert (not (= var1423!1 null-__Array__Int__var3317__)))
(assert (= (select var1423!1 0) (cast-from-Int-to-var3317 var1770))) ; Statement: $r0[0] = $r2 
(assert true)
(define-const var2676 Bool (isLeapMonth/-2057430923 var3969)) ; Statement: $z0 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: boolean isLeapMonth()>() 
 ; Statement: if $z0 == 0 goto $i3 = r1.<cn.hutool.core.date.ChineseDate: int month> 
(assert (= (ite var2676 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3608 Int (month/-144895004 var3969)) ; Statement: $i3 = r1.<cn.hutool.core.date.ChineseDate: int month> 
(assert true) ; Non Conditional
(define-const var1649 Int (Int_valueOf/-1371140006 var3608)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3) 
(declare-const var1423!2 (Array Int var3317))
(assert (not (= var1423!2 null-__Array__Int__var3317__)))
(assert (= (select var1423!2 1) (cast-from-Int-to-var3317 var1649))) ; Statement: $r0[1] = $r3 
(define-const var78 Int (day/-144895004 var3969)) ; Statement: $i1 = r1.<cn.hutool.core.date.ChineseDate: int day> 
(define-const var537 Int (Int_valueOf/-1371140006 var78)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var1423!3 (Array Int var3317))
(assert (not (= var1423!3 null-__Array__Int__var3317__)))
(assert (= (select var1423!3 2) (cast-from-Int-to-var3317 var537))) ; Statement: $r0[2] = $r4 
(define-const var2899 String (String_format/1339386452 "%04d-%02d-%02d" var1423!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%04d-%02d-%02d", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3317-init=([], java.lang.Object[]), year/-144895004=([cn.hutool.core.date.ChineseDate], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3317=([java.lang.Integer], java.lang.Object), isLeapMonth/-2057430923=([cn.hutool.core.date.ChineseDate], boolean), month/-144895004=([cn.hutool.core.date.ChineseDate], int), day/-144895004=([cn.hutool.core.date.ChineseDate], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1997=cn.hutool.core.date.ChineseDate, var3969=r1, var3317=java.lang.Object, var1423=$r0, var1296=$i0, var1770=$r2, var2676=$z0, var3608=$i3, var1649=$r3, var78=$i1, var537=$r4, var2899=$r5}
; {cn.hutool.core.date.ChineseDate=var1997, r1=var3969, java.lang.Object=var3317, $r0=var1423, $i0=var1296, $r2=var1770, $z0=var2676, $i3=var3608, $r3=var1649, $i1=var78, $r4=var537, $r5=var2899}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: cn.hutool.core.date.ChineseDate;	$r0 = newarray (java.lang.Object)[3];	$i0 = r1.<cn.hutool.core.date.ChineseDate: int year>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$z0 = virtualinvoke r1.<cn.hutool.core.date.ChineseDate: boolean isLeapMonth()>();	if $z0 == 0 goto $i3 = r1.<cn.hutool.core.date.ChineseDate: int month>;	$i3 = r1.<cn.hutool.core.date.ChineseDate: int month>;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3);	$r0[1] = $r3;	$i1 = r1.<cn.hutool.core.date.ChineseDate: int day>;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%04d-%02d-%02d", $r0);	return $r5
;block_num 3