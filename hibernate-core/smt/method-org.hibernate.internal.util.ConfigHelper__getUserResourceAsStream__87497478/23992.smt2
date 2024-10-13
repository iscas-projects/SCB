(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1425 0)
(declare-sort var1638 0)
(declare-sort var2628 0)
(declare-sort var1636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2628_currentThread/-1037784612 () var2628)
(declare-fun getContextClassLoader/1719676180 (var2628) var1636)
(declare-const null-String String)
(declare-const null-var1638 var1638)
(declare-const null-var1636 var1636)
(declare-const var1447 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1447 null-String)))
(assert true)
(define-const var3264 Bool (startsWith/-1785782452 var1447 "/")) ; Statement: z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if z0 == 0 goto $r13 = r0 
(assert (= (ite var3264 1 0) 0)) ; Cond: z0 == 0 
(define-const var3308 String var1447) ; Statement: $r13 = r0 
(assert true) ; Non Conditional
(define-const var2640 String var3308) ; Statement: r1 = $r13 
(define-const var601 var1638 null-var1638) ; Statement: r14 = null 
(define-const var201 var2628 var2628_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var2488 var1636 (getContextClassLoader/1719676180 var201)) ; Statement: $r12 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>() 
 ; Statement: if $r12 == null goto (branch) 
(assert (= var2488 null-var1636)) ; Cond: $r12 == null 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var601 null-var1638))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var601 null-var1638))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto return r14 
(assert (not (= var601 null-var1638))) ; Cond: r14 != null 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2628_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader)}
; {var1447=r0, var1425=null_type, var3264=z0, var3308=$r13, var2640=r1, var1638=java.io.InputStream, var601=r14, var2628=java.lang.Thread, var201=$r2, var1636=java.lang.ClassLoader, var2488=$r12}
; {r0=var1447, null_type=var1425, z0=var3264, $r13=var3308, r1=var2640, java.io.InputStream=var1638, r14=var601, java.lang.Thread=var2628, $r2=var201, java.lang.ClassLoader=var1636, $r12=var2488}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if z0 == 0 goto $r13 = r0;	$r13 = r0;	r1 = $r13;	r14 = null;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r12 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if $r12 == null goto (branch);	if r14 != null goto (branch);	if r14 != null goto (branch);	if r14 != null goto return r14;	return r14
;block_num 7