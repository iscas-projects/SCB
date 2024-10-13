(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var773 0)
(declare-sort var3760 0)
(declare-sort var2235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var773_get/1088891777 (var773 var2235) var2235)
(declare-fun cast-from-Int-to-var2235 (Int) var2235)
(declare-fun cast-from-var2235-to-var3760 (var2235) var3760)
(declare-const null-Int Int)
(declare-const var3760-imap var773)
(declare-const null-var3760 var3760)
(declare-const var3256 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3256 null-Int)))
(define-const var1884 var773 var3760-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.UnderlinePatterns: java.util.Map imap> 
(define-const var1959 Int (Int_valueOf/-1371140006 var3256)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var663 var2235 (var773_get/1088891777 var1884 (cast-from-Int-to-var2235 var1959))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var3637 var3760 (cast-from-var2235-to-var3760 var663)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.UnderlinePatterns) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var3637 null-var3760))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var773_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var2235=([java.lang.Integer], java.lang.Object), cast-from-var2235-to-var3760=([java.lang.Object], org.apache.poi.xwpf.usermodel.UnderlinePatterns)}
; {var3256=i0, var773=java.util.Map, var3760=org.apache.poi.xwpf.usermodel.UnderlinePatterns, var1884=$r0, var1959=$r1, var2235=java.lang.Object, var663=$r2, var3637=r3}
; {i0=var3256, java.util.Map=var773, org.apache.poi.xwpf.usermodel.UnderlinePatterns=var3760, $r0=var1884, $r1=var1959, java.lang.Object=var2235, $r2=var663, r3=var3637}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.UnderlinePatterns: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.UnderlinePatterns) $r2;	if r3 != null goto return r3;	return r3
;block_num 2