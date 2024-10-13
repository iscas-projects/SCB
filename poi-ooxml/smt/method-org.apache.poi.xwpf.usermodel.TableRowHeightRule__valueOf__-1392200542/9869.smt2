(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3896 0)
(declare-sort var3778 0)
(declare-sort var3467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3896_get/1088891777 (var3896 var3467) var3467)
(declare-fun cast-from-Int-to-var3467 (Int) var3467)
(declare-fun cast-from-var3467-to-var3778 (var3467) var3778)
(declare-const null-Int Int)
(declare-const var3778-imap var3896)
(declare-const null-var3778 var3778)
(declare-const var3415 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3415 null-Int)))
(define-const var1399 var3896 var3778-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.TableRowHeightRule: java.util.Map imap> 
(define-const var3181 Int (Int_valueOf/-1371140006 var3415)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var3457 var3467 (var3896_get/1088891777 var1399 (cast-from-Int-to-var3467 var3181))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var156 var3778 (cast-from-var3467-to-var3778 var3457)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.TableRowHeightRule) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var156 null-var3778))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3896_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3467=([java.lang.Integer], java.lang.Object), cast-from-var3467-to-var3778=([java.lang.Object], org.apache.poi.xwpf.usermodel.TableRowHeightRule)}
; {var3415=i0, var3896=java.util.Map, var3778=org.apache.poi.xwpf.usermodel.TableRowHeightRule, var1399=$r0, var3181=$r1, var3467=java.lang.Object, var3457=$r2, var156=r3}
; {i0=var3415, java.util.Map=var3896, org.apache.poi.xwpf.usermodel.TableRowHeightRule=var3778, $r0=var1399, $r1=var3181, java.lang.Object=var3467, $r2=var3457, r3=var156}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.TableRowHeightRule: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.TableRowHeightRule) $r2;	if r3 != null goto return r3;	return r3
;block_num 2