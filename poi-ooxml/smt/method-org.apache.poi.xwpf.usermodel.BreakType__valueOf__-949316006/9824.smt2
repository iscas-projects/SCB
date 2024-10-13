(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3709 0)
(declare-sort var1885 0)
(declare-sort var2249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3709_get/1088891777 (var3709 var2249) var2249)
(declare-fun cast-from-Int-to-var2249 (Int) var2249)
(declare-fun cast-from-var2249-to-var1885 (var2249) var1885)
(declare-const null-Int Int)
(declare-const var1885-imap var3709)
(declare-const null-var1885 var1885)
(declare-const var168 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var168 null-Int)))
(define-const var3700 var3709 var1885-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.BreakType: java.util.Map imap> 
(define-const var2669 Int (Int_valueOf/-1371140006 var168)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2440 var2249 (var3709_get/1088891777 var3700 (cast-from-Int-to-var2249 var2669))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var3147 var1885 (cast-from-var2249-to-var1885 var2440)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.BreakType) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var3147 null-var1885))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3709_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var2249=([java.lang.Integer], java.lang.Object), cast-from-var2249-to-var1885=([java.lang.Object], org.apache.poi.xwpf.usermodel.BreakType)}
; {var168=i0, var3709=java.util.Map, var1885=org.apache.poi.xwpf.usermodel.BreakType, var3700=$r0, var2669=$r1, var2249=java.lang.Object, var2440=$r2, var3147=r3}
; {i0=var168, java.util.Map=var3709, org.apache.poi.xwpf.usermodel.BreakType=var1885, $r0=var3700, $r1=var2669, java.lang.Object=var2249, $r2=var2440, r3=var3147}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.BreakType: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.BreakType) $r2;	if r3 != null goto return r3;	return r3
;block_num 2