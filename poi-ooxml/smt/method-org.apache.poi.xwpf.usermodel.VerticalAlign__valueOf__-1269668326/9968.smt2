(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var294 0)
(declare-sort var1528 0)
(declare-sort var904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var294_get/1088891777 (var294 var904) var904)
(declare-fun cast-from-Int-to-var904 (Int) var904)
(declare-fun cast-from-var904-to-var1528 (var904) var1528)
(declare-const null-Int Int)
(declare-const var1528-imap var294)
(declare-const null-var1528 var1528)
(declare-const var1396 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1396 null-Int)))
(define-const var1616 var294 var1528-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.VerticalAlign: java.util.Map imap> 
(define-const var1390 Int (Int_valueOf/-1371140006 var1396)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2113 var904 (var294_get/1088891777 var1616 (cast-from-Int-to-var904 var1390))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var995 var1528 (cast-from-var904-to-var1528 var2113)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.VerticalAlign) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var995 null-var1528))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var294_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var904=([java.lang.Integer], java.lang.Object), cast-from-var904-to-var1528=([java.lang.Object], org.apache.poi.xwpf.usermodel.VerticalAlign)}
; {var1396=i0, var294=java.util.Map, var1528=org.apache.poi.xwpf.usermodel.VerticalAlign, var1616=$r0, var1390=$r1, var904=java.lang.Object, var2113=$r2, var995=r3}
; {i0=var1396, java.util.Map=var294, org.apache.poi.xwpf.usermodel.VerticalAlign=var1528, $r0=var1616, $r1=var1390, java.lang.Object=var904, $r2=var2113, r3=var995}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.VerticalAlign: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.VerticalAlign) $r2;	if r3 != null goto return r3;	return r3
;block_num 2