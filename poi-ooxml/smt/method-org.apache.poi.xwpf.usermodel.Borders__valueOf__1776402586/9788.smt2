(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3235 0)
(declare-sort var542 0)
(declare-sort var1013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3235_get/1088891777 (var3235 var1013) var1013)
(declare-fun cast-from-Int-to-var1013 (Int) var1013)
(declare-fun cast-from-var1013-to-var542 (var1013) var542)
(declare-const null-Int Int)
(declare-const var542-imap var3235)
(declare-const null-var542 var542)
(declare-const var3060 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3060 null-Int)))
(define-const var2780 var3235 var542-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.Borders: java.util.Map imap> 
(define-const var103 Int (Int_valueOf/-1371140006 var3060)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var405 var1013 (var3235_get/1088891777 var2780 (cast-from-Int-to-var1013 var103))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var1921 var542 (cast-from-var1013-to-var542 var405)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.Borders) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var1921 null-var542))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3235_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1013=([java.lang.Integer], java.lang.Object), cast-from-var1013-to-var542=([java.lang.Object], org.apache.poi.xwpf.usermodel.Borders)}
; {var3060=i0, var3235=java.util.Map, var542=org.apache.poi.xwpf.usermodel.Borders, var2780=$r0, var103=$r1, var1013=java.lang.Object, var405=$r2, var1921=r3}
; {i0=var3060, java.util.Map=var3235, org.apache.poi.xwpf.usermodel.Borders=var542, $r0=var2780, $r1=var103, java.lang.Object=var1013, $r2=var405, r3=var1921}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.Borders: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.Borders) $r2;	if r3 != null goto return r3;	return r3
;block_num 2