(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2356 0)
(declare-sort var110 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2356_get/1088891777 (var2356 var3410) var3410)
(declare-fun cast-from-Int-to-var3410 (Int) var3410)
(declare-fun cast-from-var3410-to-var110 (var3410) var110)
(declare-const null-Int Int)
(declare-const var110-imap var2356)
(declare-const null-var110 var110)
(declare-const var976 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var976 null-Int)))
(define-const var3619 var2356 var110-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.ParagraphAlignment: java.util.Map imap> 
(define-const var3907 Int (Int_valueOf/-1371140006 var976)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var3620 var3410 (var2356_get/1088891777 var3619 (cast-from-Int-to-var3410 var3907))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var1472 var110 (cast-from-var3410-to-var110 var3620)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.ParagraphAlignment) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var1472 null-var110))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var2356_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3410=([java.lang.Integer], java.lang.Object), cast-from-var3410-to-var110=([java.lang.Object], org.apache.poi.xwpf.usermodel.ParagraphAlignment)}
; {var976=i0, var2356=java.util.Map, var110=org.apache.poi.xwpf.usermodel.ParagraphAlignment, var3619=$r0, var3907=$r1, var3410=java.lang.Object, var3620=$r2, var1472=r3}
; {i0=var976, java.util.Map=var2356, org.apache.poi.xwpf.usermodel.ParagraphAlignment=var110, $r0=var3619, $r1=var3907, java.lang.Object=var3410, $r2=var3620, r3=var1472}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.ParagraphAlignment: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.ParagraphAlignment) $r2;	if r3 != null goto return r3;	return r3
;block_num 2