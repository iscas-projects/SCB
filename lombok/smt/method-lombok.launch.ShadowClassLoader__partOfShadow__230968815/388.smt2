(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var559 0)
(declare-sort var23 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var559 var559)
(declare-const null-String String)
(declare-const var151 var559) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var151 null-var559)))
(declare-const var3061 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3061 null-String)))
(declare-const var1929 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1929 null-String)))
(assert true)
(define-const var3948 Bool (startsWith/-1785782452 var1929 "java/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java/") 
 ; Statement: if $z0 != 0 goto return 0 
(assert (not (= (ite var3948 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var559=lombok.launch.ShadowClassLoader, var151=r1, var3061=r2, var23=null_type, var1929=r0, var3948=$z0}
; {lombok.launch.ShadowClassLoader=var559, r1=var151, r2=var3061, null_type=var23, r0=var1929, $z0=var3948}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java/");	if $z0 != 0 goto return 0;	return 0
;block_num 2