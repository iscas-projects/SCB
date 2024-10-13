(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1371 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1371 null-String)))
(declare-const var3346 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3346 null-String)))
(assert true)
(define-const var551 Bool (endsWith/985337093 var1371 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert (not (= (ite var551 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1253 Bool (endsWith/985337093 var1371 "/")) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert true)
(define-const var2831 Bool (startsWith/-1785782452 var3346 "/")) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
(define-const var2656 Bool (ite (= 1 (bv2nat (bvxor ((_ int2bv 64) (ite var1253 1 0)) ((_ int2bv 64) (ite var2831 1 0))))) true false)) ; Statement: $z3 = $z2 ^ $z1 
 ; Statement: if $z3 == 0 goto return "" 
(assert (= (ite var2656 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1371=r0, var1216=null_type, var3346=r1, var551=$z0, var1253=$z2, var2831=$z1, var2656=$z3}
; {r0=var1371, null_type=var1216, r1=var3346, $z0=var551, $z2=var1253, $z1=var2831, $z3=var2656}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 != 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	$z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	$z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	$z3 = $z2 ^ $z1;	if $z3 == 0 goto return "";	return ""
;block_num 3