(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3755 0)
(declare-sort var2266 0)
(declare-sort var1178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3755_get/1088891777 (var3755 var1178) var1178)
(declare-fun cast-from-Int-to-var1178 (Int) var1178)
(declare-fun cast-from-var1178-to-var2266 (var1178) var2266)
(declare-const null-Int Int)
(declare-const var2266-imap var3755)
(declare-const null-var2266 var2266)
(declare-const var941 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var941 null-Int)))
(define-const var3448 var3755 var2266-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.LineSpacingRule: java.util.Map imap> 
(define-const var3432 Int (Int_valueOf/-1371140006 var941)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var344 var1178 (var3755_get/1088891777 var3448 (cast-from-Int-to-var1178 var3432))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var123 var2266 (cast-from-var1178-to-var2266 var344)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.LineSpacingRule) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var123 null-var2266))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3755_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1178=([java.lang.Integer], java.lang.Object), cast-from-var1178-to-var2266=([java.lang.Object], org.apache.poi.xwpf.usermodel.LineSpacingRule)}
; {var941=i0, var3755=java.util.Map, var2266=org.apache.poi.xwpf.usermodel.LineSpacingRule, var3448=$r0, var3432=$r1, var1178=java.lang.Object, var344=$r2, var123=r3}
; {i0=var941, java.util.Map=var3755, org.apache.poi.xwpf.usermodel.LineSpacingRule=var2266, $r0=var3448, $r1=var3432, java.lang.Object=var1178, $r2=var344, r3=var123}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.LineSpacingRule: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.LineSpacingRule) $r2;	if r3 != null goto return r3;	return r3
;block_num 2