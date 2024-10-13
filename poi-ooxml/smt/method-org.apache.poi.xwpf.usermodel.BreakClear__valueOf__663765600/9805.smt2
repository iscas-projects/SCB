(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3552 0)
(declare-sort var2873 0)
(declare-sort var1732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3552_get/1088891777 (var3552 var1732) var1732)
(declare-fun cast-from-Int-to-var1732 (Int) var1732)
(declare-fun cast-from-var1732-to-var2873 (var1732) var2873)
(declare-const null-Int Int)
(declare-const var2873-imap var3552)
(declare-const null-var2873 var2873)
(declare-const var2419 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2419 null-Int)))
(define-const var2764 var3552 var2873-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.BreakClear: java.util.Map imap> 
(define-const var2987 Int (Int_valueOf/-1371140006 var2419)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var1767 var1732 (var3552_get/1088891777 var2764 (cast-from-Int-to-var1732 var2987))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2204 var2873 (cast-from-var1732-to-var2873 var1767)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.BreakClear) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var2204 null-var2873))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3552_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1732=([java.lang.Integer], java.lang.Object), cast-from-var1732-to-var2873=([java.lang.Object], org.apache.poi.xwpf.usermodel.BreakClear)}
; {var2419=i0, var3552=java.util.Map, var2873=org.apache.poi.xwpf.usermodel.BreakClear, var2764=$r0, var2987=$r1, var1732=java.lang.Object, var1767=$r2, var2204=r3}
; {i0=var2419, java.util.Map=var3552, org.apache.poi.xwpf.usermodel.BreakClear=var2873, $r0=var2764, $r1=var2987, java.lang.Object=var1732, $r2=var1767, r3=var2204}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.BreakClear: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.BreakClear) $r2;	if r3 != null goto return r3;	return r3
;block_num 2