(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var540 0)
(declare-sort var2420 0)
(declare-sort var3777 0)
(declare-sort var3301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3777_currentThread/-1037784612 () var3777)
(declare-fun getContextClassLoader/1719676180 (var3777) var3301)
(declare-const null-String String)
(declare-const null-var2420 var2420)
(declare-const null-var3301 var3301)
(declare-const var230 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var230 null-String)))
(assert true)
(define-const var3252 Bool (startsWith/-1785782452 var230 "/")) ; Statement: z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if z0 == 0 goto $r13 = r0 
(assert (not (= (ite var3252 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert (and true (and (>= 1 0) (>= (str.len var230) 1))))
(define-const var1437 String (substring/850833817 var230 1)) ; Statement: $r13 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= r1 = $r13] 
(assert true) ; Non Conditional
(define-const var1276 String var1437) ; Statement: r1 = $r13 
(define-const var1036 var2420 null-var2420) ; Statement: r14 = null 
(define-const var3909 var3777 var3777_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1290 var3301 (getContextClassLoader/1719676180 var3909)) ; Statement: $r12 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>() 
 ; Statement: if $r12 == null goto (branch) 
(assert (= var1290 null-var3301)) ; Cond: $r12 == null 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var1036 null-var2420))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var1036 null-var2420))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto return r14 
(assert (not (= var1036 null-var2420))) ; Cond: r14 != null 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), var3777_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader)}
; {var230=r0, var540=null_type, var3252=z0, var1437=$r13, var1276=r1, var2420=java.io.InputStream, var1036=r14, var3777=java.lang.Thread, var3909=$r2, var3301=java.lang.ClassLoader, var1290=$r12}
; {r0=var230, null_type=var540, z0=var3252, $r13=var1437, r1=var1276, java.io.InputStream=var2420, r14=var1036, java.lang.Thread=var3777, $r2=var3909, java.lang.ClassLoader=var3301, $r12=var1290}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if z0 == 0 goto $r13 = r0;	$r13 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= r1 = $r13];	r1 = $r13;	r14 = null;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r12 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if $r12 == null goto (branch);	if r14 != null goto (branch);	if r14 != null goto (branch);	if r14 != null goto return r14;	return r14
;block_num 7