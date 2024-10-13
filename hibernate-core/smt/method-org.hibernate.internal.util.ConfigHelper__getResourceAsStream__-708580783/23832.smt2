(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2458 0)
(declare-sort var1455 0)
(declare-sort var2623 0)
(declare-sort var2618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2623_currentThread/-1037784612 () var2623)
(declare-fun getContextClassLoader/1719676180 (var2623) var2618)
(declare-const null-String String)
(declare-const null-var1455 var1455)
(declare-const null-var2618 var2618)
(declare-const var127 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var127 null-String)))
(assert true)
(define-const var2678 Bool (startsWith/-1785782452 var127 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r12 = r0 
(assert (= (ite var2678 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1854 String var127) ; Statement: $r12 = r0 
(assert true) ; Non Conditional
(define-const var233 String var1854) ; Statement: r1 = $r12 
(define-const var780 var1455 null-var1455) ; Statement: r13 = null 
(define-const var2102 var2623 var2623_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1369 var2618 (getContextClassLoader/1719676180 var2102)) ; Statement: $r11 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>() 
 ; Statement: if $r11 == null goto (branch) 
(assert (= var1369 null-var2618)) ; Cond: $r11 == null 
 ; Statement: if r13 != null goto (branch) 
(assert (not (= var780 null-var1455))) ; Cond: r13 != null 
 ; Statement: if r13 != null goto (branch) 
(assert (not (= var780 null-var1455))) ; Cond: r13 != null 
 ; Statement: if r13 != null goto return r13 
(assert (not (= var780 null-var1455))) ; Cond: r13 != null 
 ; Statement: return r13 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2623_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader)}
; {var127=r0, var2458=null_type, var2678=$z0, var1854=$r12, var233=r1, var1455=java.io.InputStream, var780=r13, var2623=java.lang.Thread, var2102=$r2, var2618=java.lang.ClassLoader, var1369=$r11}
; {r0=var127, null_type=var2458, $z0=var2678, $r12=var1854, r1=var233, java.io.InputStream=var1455, r13=var780, java.lang.Thread=var2623, $r2=var2102, java.lang.ClassLoader=var2618, $r11=var1369}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r12 = r0;	$r12 = r0;	r1 = $r12;	r13 = null;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r11 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if $r11 == null goto (branch);	if r13 != null goto (branch);	if r13 != null goto (branch);	if r13 != null goto return r13;	return r13
;block_num 7