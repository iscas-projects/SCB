(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3282 0)
(declare-sort var3055 0)
(declare-sort var1383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3282_get/1088891777 (var3282 var1383) var1383)
(declare-fun cast-from-Int-to-var1383 (Int) var1383)
(declare-fun cast-from-var1383-to-var3055 (var1383) var3055)
(declare-const null-Int Int)
(declare-const var3055-imap var3282)
(declare-const null-var3055 var3055)
(declare-const var956 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var956 null-Int)))
(define-const var128 var3282 var3055-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.TextAlignment: java.util.Map imap> 
(define-const var1741 Int (Int_valueOf/-1371140006 var956)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var3316 var1383 (var3282_get/1088891777 var128 (cast-from-Int-to-var1383 var1741))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2213 var3055 (cast-from-var1383-to-var3055 var3316)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.TextAlignment) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var2213 null-var3055))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3282_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1383=([java.lang.Integer], java.lang.Object), cast-from-var1383-to-var3055=([java.lang.Object], org.apache.poi.xwpf.usermodel.TextAlignment)}
; {var956=i0, var3282=java.util.Map, var3055=org.apache.poi.xwpf.usermodel.TextAlignment, var128=$r0, var1741=$r1, var1383=java.lang.Object, var3316=$r2, var2213=r3}
; {i0=var956, java.util.Map=var3282, org.apache.poi.xwpf.usermodel.TextAlignment=var3055, $r0=var128, $r1=var1741, java.lang.Object=var1383, $r2=var3316, r3=var2213}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.TextAlignment: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.TextAlignment) $r2;	if r3 != null goto return r3;	return r3
;block_num 2