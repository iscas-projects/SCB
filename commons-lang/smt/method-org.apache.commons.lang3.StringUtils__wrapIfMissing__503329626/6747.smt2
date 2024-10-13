(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1233 0)
(declare-sort var3495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3495_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var2237 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2237 null-String)))
(declare-const var2904 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2904 null-String)))
(define-const var2303 Bool (var3495_isEmpty/1595667738 (cast-from-String-to-String var2237))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2303 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1908 Bool (var3495_isEmpty/1595667738 (cast-from-String-to-String var2904))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var1908 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1243 Bool (startsWith/-1785782452 var2237 var2904)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var1243 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var721 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var3901 Bool var721) ; Statement: z3 = $z6 
(assert true)
(define-const var474 Bool (endsWith/985337093 var2237 var2904)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (= (ite var474 1 0) 0))) ; Cond: $z4 != 0 
(define-const var1240 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var3118 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var3787 Bool var3118) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var3901 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z9 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1240 1 0) 0)))) ; Negate: Cond: $z9 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3495_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var2237=r0, var1233=null_type, var2904=r1, var3495=org.apache.commons.lang3.StringUtils, var2303=$z0, var1908=$z1, var1243=$z2, var721=$z6, var3901=z3, var474=$z4, var1240=$z9, var3118=$z8, var3787=z5}
; {r0=var2237, null_type=var1233, r1=var2904, org.apache.commons.lang3.StringUtils=var3495, $z0=var2303, $z1=var1908, $z2=var1243, $z6=var721, z3=var3901, $z4=var474, $z9=var1240, $z8=var3118, z5=var3787}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	if $z9 != 0 goto $r2 = new java.lang.StringBuilder;	return r0
;block_num 9