(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3949 0)
(declare-sort var646 0)
(declare-sort var139 0)
(declare-sort var1868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbols/302871663 (var3949) var646)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var646_get/1088891777 (var646 var139) var139)
(declare-fun cast-from-Int-to-var139 (Int) var139)
(declare-fun cast-from-var139-to-String (var139) String)
(declare-const null-var3949 var3949)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2788 var3949) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONBDump 
(assert (not (= var2788 null-var3949)))
(declare-const var2800 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2800 null-Int)))
 ; Statement: if i0 >= 0 goto $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols> 
(assert (>= var2800 0)) ; Cond: i0 >= 0 
(define-const var2687 var646 (symbols/302871663 var2788)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols> 
(define-const var3287 Int (Int_valueOf/-1371140006 var2800)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var1915 var139 (var646_get/1088891777 var2687 (cast-from-Int-to-var139 var3287))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var1018 String (cast-from-var139-to-String var1915)) ; Statement: r10 = (java.lang.String) $r3 
(assert true) ; Non Conditional
 ; Statement: if r10 != null goto return r10 
(assert (not (= var1018 null-String))) ; Cond: r10 != null 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {symbols/302871663=([com.alibaba.fastjson2.JSONBDump], java.util.Map), Int_valueOf/-1371140006=([int], java.lang.Integer), var646_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var139=([java.lang.Integer], java.lang.Object), cast-from-var139-to-String=([java.lang.Object], java.lang.String)}
; {var3949=com.alibaba.fastjson2.JSONBDump, var2788=r0, var2800=i0, var646=java.util.Map, var2687=$r1, var3287=$r2, var139=java.lang.Object, var1915=$r3, var1018=r10, var1868=null_type}
; {com.alibaba.fastjson2.JSONBDump=var3949, r0=var2788, i0=var2800, java.util.Map=var646, $r1=var2687, $r2=var3287, java.lang.Object=var139, $r3=var1915, r10=var1018, null_type=var1868}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONBDump;	i0 := @parameter0: int;	if i0 >= 0 goto $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols>;	$r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r10 = (java.lang.String) $r3;	if r10 != null goto return r10;	return r10
;block_num 4