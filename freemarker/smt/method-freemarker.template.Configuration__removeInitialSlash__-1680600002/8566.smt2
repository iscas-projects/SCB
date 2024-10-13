(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2014 0)
(declare-sort var3603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2014 var2014)
(declare-const null-String String)
(declare-const var3309 var2014) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var3309 null-var2014)))
(declare-const var1277 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1277 null-String)))
(assert true)
(define-const var2407 Bool (startsWith/-1785782452 var1277 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r2 = r0 
(assert (not (= (ite var2407 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (>= 1 0) (>= (str.len var1277) 1))))
(define-const var1403 String (substring/850833817 var1277 1)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2014=freemarker.template.Configuration, var3309=r1, var1277=r0, var3603=null_type, var2407=$z0, var1403=$r2}
; {freemarker.template.Configuration=var2014, r1=var3309, r0=var1277, null_type=var3603, $z0=var2407, $r2=var1403}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r2 = r0;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= return $r2];	return $r2
;block_num 3