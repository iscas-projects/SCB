(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var828 0)
(declare-sort var1621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var828 var828)
(declare-const null-String String)
(declare-const var223 var828) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var223 null-var828)))
(declare-const var2704 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2704 null-String)))
(declare-const var2309 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2309 null-String)))
(declare-const var2646 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2646 null-String)))
 ; Statement: if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
(assert (not (= var2704 null-String))) ; Cond: r5 != null 
(assert true)
(define-const var1315 Bool (startsWith/-1785782452 var2704 "file:/")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:") 
(assert (= (ite var1315 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3478 Bool (startsWith/-1785782452 var2704 "jar:")) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:") 
 ; Statement: if $z1 == 0 goto return 0 
(assert (= (ite var3478 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var828=lombok.launch.ShadowClassLoader, var223=r1, var2704=r5, var1621=null_type, var2309=r4, var2646=r2, var1315=$z0, var3478=$z1}
; {lombok.launch.ShadowClassLoader=var828, r1=var223, r5=var2704, null_type=var1621, r4=var2309, r2=var2646, $z0=var1315, $z1=var3478}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:");	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:");	if $z1 == 0 goto return 0;	return 0
;block_num 4