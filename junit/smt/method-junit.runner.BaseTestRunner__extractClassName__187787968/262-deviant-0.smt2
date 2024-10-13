(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2370 0)
(declare-sort var2546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2370 var2370)
(declare-const null-String String)
(declare-const var3555 var2370) ; Statement: r2 := @this: junit.runner.BaseTestRunner 
(assert (not (= var3555 null-var2370)))
(declare-const var2247 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2247 null-String)))
(assert true)
(define-const var1972 Bool (startsWith/-1785782452 var2247 "Default package for")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("Default package for") 
 ; Statement: if $z0 == 0 goto return r0 
(assert (not (= (ite var1972 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2963 Int (lastIndexOf/-618837785 var2247 ".")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
(define-const var360 Int (+ var2963 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var360 0) (>= (str.len var2247) var360)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2370=junit.runner.BaseTestRunner, var3555=r2, var2247=r0, var2546=null_type, var1972=$z0, var2963=$i0, var360=$i1, var2299=$r1}
; {junit.runner.BaseTestRunner=var2370, r2=var3555, r0=var2247, null_type=var2546, $z0=var1972, $i0=var2963, $i1=var360, $r1=var2299}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @this: junit.runner.BaseTestRunner;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("Default package for");	if $z0 == 0 goto return r0;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	$i1 = $i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r1
;block_num 2