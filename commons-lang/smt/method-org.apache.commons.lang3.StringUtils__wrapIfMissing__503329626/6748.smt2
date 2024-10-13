(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var196 0)
(declare-sort var1445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1445_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var1382 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1382 null-String)))
(declare-const var2376 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2376 null-String)))
(define-const var707 Bool (var1445_isEmpty/1595667738 (cast-from-String-to-String var1382))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var707 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1259 Bool (var1445_isEmpty/1595667738 (cast-from-String-to-String var2376))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var1259 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var303 Bool (startsWith/-1785782452 var1382 var2376)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (= (ite var303 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2631 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var4 Bool var2631) ; Statement: z3 = $z6 
(assert true)
(define-const var3863 Bool (endsWith/985337093 var1382 var2376)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var3863 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3769 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var3773 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var3419 Bool var3773) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var4 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z9 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var3769 1 0) 0)))) ; Negate: Cond: $z9 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1445_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1382=r0, var196=null_type, var2376=r1, var1445=org.apache.commons.lang3.StringUtils, var707=$z0, var1259=$z1, var303=$z2, var2631=$z6, var4=z3, var3863=$z4, var3769=$z9, var3773=$z8, var3419=z5}
; {r0=var1382, null_type=var196, r1=var2376, org.apache.commons.lang3.StringUtils=var1445, $z0=var707, $z1=var1259, $z2=var303, $z6=var2631, z3=var4, $z4=var3863, $z9=var3769, $z8=var3773, z5=var3419}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 0;	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	if $z9 != 0 goto $r2 = new java.lang.StringBuilder;	return r0
;block_num 9