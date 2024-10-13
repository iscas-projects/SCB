(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2981 0)
(declare-sort var2928 0)
(declare-sort var1177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2981_get/1088891777 (var2981 var1177) var1177)
(declare-fun cast-from-Int-to-var1177 (Int) var1177)
(declare-fun cast-from-var1177-to-var2928 (var1177) var2928)
(declare-const null-Int Int)
(declare-const var2928-imap var2981)
(declare-const null-var2928 var2928)
(declare-const var1870 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1870 null-Int)))
(define-const var2635 var2981 var2928-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.TableRowAlign: java.util.Map imap> 
(define-const var1469 Int (Int_valueOf/-1371140006 var1870)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2338 var1177 (var2981_get/1088891777 var2635 (cast-from-Int-to-var1177 var1469))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2335 var2928 (cast-from-var1177-to-var2928 var2338)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.TableRowAlign) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var2335 null-var2928))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var2981_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1177=([java.lang.Integer], java.lang.Object), cast-from-var1177-to-var2928=([java.lang.Object], org.apache.poi.xwpf.usermodel.TableRowAlign)}
; {var1870=i0, var2981=java.util.Map, var2928=org.apache.poi.xwpf.usermodel.TableRowAlign, var2635=$r0, var1469=$r1, var1177=java.lang.Object, var2338=$r2, var2335=r3}
; {i0=var1870, java.util.Map=var2981, org.apache.poi.xwpf.usermodel.TableRowAlign=var2928, $r0=var2635, $r1=var1469, java.lang.Object=var1177, $r2=var2338, r3=var2335}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.TableRowAlign: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.TableRowAlign) $r2;	if r3 != null goto return r3;	return r3
;block_num 2