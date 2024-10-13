(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var637 0)
(declare-sort var1876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun inOwnBase/-722973505 (var637 String String) Bool)
(declare-const null-var637 var637)
(declare-const null-String String)
(declare-const var549 var637) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var549 null-var637)))
(declare-const var1303 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1303 null-String)))
(declare-const var2526 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2526 null-String)))
(assert true)
(define-const var3015 Bool (startsWith/-1785782452 var2526 "java/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java/") 
 ; Statement: if $z0 != 0 goto return 0 
(assert (not (not (= (ite var3015 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1271 Bool (startsWith/-1785782452 var2526 "sun/")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("sun/") 
 ; Statement: if $z1 != 0 goto return 0 
(assert (not (not (= (ite var1271 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var3946 Bool (inOwnBase/-722973505 var549 var1303 var2526)) ; Statement: $z2 = specialinvoke r1.<lombok.launch.ShadowClassLoader: boolean inOwnBase(java.lang.String,java.lang.String)>(r2, r0) 
 ; Statement: if $z2 != 0 goto return 1 
(assert (not (= (ite var3946 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), inOwnBase/-722973505=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String], boolean)}
; {var637=lombok.launch.ShadowClassLoader, var549=r1, var1303=r2, var1876=null_type, var2526=r0, var3015=$z0, var1271=$z1, var3946=$z2}
; {lombok.launch.ShadowClassLoader=var637, r1=var549, r2=var1303, null_type=var1876, r0=var2526, $z0=var3015, $z1=var1271, $z2=var3946}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java/");	if $z0 != 0 goto return 0;	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("sun/");	if $z1 != 0 goto return 0;	$z2 = specialinvoke r1.<lombok.launch.ShadowClassLoader: boolean inOwnBase(java.lang.String,java.lang.String)>(r2, r0);	if $z2 != 0 goto return 1;	return 1
;block_num 4