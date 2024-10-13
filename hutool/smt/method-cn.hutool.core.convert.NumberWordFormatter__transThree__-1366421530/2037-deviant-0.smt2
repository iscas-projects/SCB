(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2221 0)
(declare-sort var3615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3615_transTwo/2028843256 (String) String)
(declare-const null-String String)
(declare-const var3892 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3892 null-String)))
(assert true)
(define-const var3213 Bool (startsWith/-1785782452 var3892 "0")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("0") 
 ; Statement: if $z0 == 0 goto $r2 = "00" 
(assert (not (= (ite var3213 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (not (and true (and (>= 1 0) (>= (str.len var3892) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), var3615_transTwo/2028843256=([java.lang.String], java.lang.String)}
; {var3892=r0, var2221=null_type, var3213=$z0, var3725=$r16, var3615=cn.hutool.core.convert.NumberWordFormatter, var924=r17}
; {r0=var3892, null_type=var2221, $z0=var3213, $r16=var3725, cn.hutool.core.convert.NumberWordFormatter=var3615, r17=var924}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("0");	if $z0 == 0 goto $r2 = "00";	$r16 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	r17 = staticinvoke <cn.hutool.core.convert.NumberWordFormatter: java.lang.String transTwo(java.lang.String)>($r16);	goto [?= return r17];	return r17
;block_num 3