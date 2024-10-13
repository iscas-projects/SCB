(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3468 0)
(declare-sort var2466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2466_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var2021 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2021 null-String)))
(declare-const var1157 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1157 null-String)))
(define-const var207 Bool (var2466_isEmpty/1595667738 (cast-from-String-to-String var2021))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var207 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1685 Bool (var2466_isEmpty/1595667738 (cast-from-String-to-String var1157))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var1685 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1173 Bool (startsWith/-1785782452 var2021 var1157)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var1173 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2566 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var3913 Bool var2566) ; Statement: z3 = $z6 
(assert true)
(define-const var3496 Bool (endsWith/985337093 var2021 var1157)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var3496 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3411 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var1012 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var786 Bool var1012) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var3913 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z9 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var3411 1 0) 0)))) ; Negate: Cond: $z9 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2466_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var2021=r0, var3468=null_type, var1157=r1, var2466=org.apache.commons.lang3.StringUtils, var207=$z0, var1685=$z1, var1173=$z2, var2566=$z6, var3913=z3, var3496=$z4, var3411=$z9, var1012=$z8, var786=z5}
; {r0=var2021, null_type=var3468, r1=var1157, org.apache.commons.lang3.StringUtils=var2466, $z0=var207, $z1=var1685, $z2=var1173, $z6=var2566, z3=var3913, $z4=var3496, $z9=var3411, $z8=var1012, z5=var786}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	if $z9 != 0 goto $r2 = new java.lang.StringBuilder;	return r0
;block_num 9