(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2482 0)
(declare-sort var3551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2482 var2482)
(declare-const null-String String)
(declare-const var829 var2482) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var829 null-var2482)))
(declare-const var510 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var510 null-String)))
(declare-const var3204 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3204 null-String)))
(assert true)
(define-const var810 Bool (startsWith/-1785782452 var3204 "java/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java/") 
 ; Statement: if $z0 != 0 goto return 0 
(assert (not (not (= (ite var810 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3117 Bool (startsWith/-1785782452 var3204 "sun/")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("sun/") 
 ; Statement: if $z1 != 0 goto return 0 
(assert (not (= (ite var3117 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2482=lombok.launch.ShadowClassLoader, var829=r1, var510=r2, var3551=null_type, var3204=r0, var810=$z0, var3117=$z1}
; {lombok.launch.ShadowClassLoader=var2482, r1=var829, r2=var510, null_type=var3551, r0=var3204, $z0=var810, $z1=var3117}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java/");	if $z0 != 0 goto return 0;	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("sun/");	if $z1 != 0 goto return 0;	return 0
;block_num 3