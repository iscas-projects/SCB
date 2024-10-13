(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var352 0)
(declare-sort var439 0)
(declare-sort var2116 0)
(declare-sort var823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var2116_currentThread/-1037784612 () var2116)
(declare-fun getContextClassLoader/1719676180 (var2116) var823)
(declare-const null-String String)
(declare-const null-var439 var439)
(declare-const null-var823 var823)
(declare-const var1265 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1265 null-String)))
(assert true)
(define-const var737 Bool (startsWith/-1785782452 var1265 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r12 = r0 
(assert (not (= (ite var737 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (not (and true (and (>= 1 0) (>= (str.len var1265) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), var2116_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader)}
; {var1265=r0, var352=null_type, var737=$z0, var2126=$r12, var2719=r1, var439=java.io.InputStream, var132=r13, var2116=java.lang.Thread, var3078=$r2, var823=java.lang.ClassLoader, var1234=$r11}
; {r0=var1265, null_type=var352, $z0=var737, $r12=var2126, r1=var2719, java.io.InputStream=var439, r13=var132, java.lang.Thread=var2116, $r2=var3078, java.lang.ClassLoader=var823, $r11=var1234}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r12 = r0;	$r12 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= r1 = $r12];	r1 = $r12;	r13 = null;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r11 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if $r11 == null goto (branch);	if r13 != null goto (branch);	if r13 != null goto (branch);	if r13 != null goto return r13;	return r13
;block_num 7