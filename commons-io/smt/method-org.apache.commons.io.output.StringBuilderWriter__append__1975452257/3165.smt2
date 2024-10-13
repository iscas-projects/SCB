(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-294971588 (var2636) String)
(declare-fun append/50905802 (String String Int Int) String)
(declare-const null-var2636 var2636)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var450 var2636) ; Statement: r0 := @this: org.apache.commons.io.output.StringBuilderWriter 
(assert (not (= var450 null-var2636)))
(declare-const var2739 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var2739 null-String)))
(declare-const var673 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var673 null-Int)))
(declare-const var1811 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1811 null-Int)))
(define-const var803 String (builder/-294971588 var450)) ; Statement: $r2 = r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> 
(assert true)
;(assert (append/50905802 var803 var2739 var673 var1811)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1) 
(declare-const var803!1 String)
(assert (str.prefixof var803 var803!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-294971588=([org.apache.commons.io.output.StringBuilderWriter], java.lang.StringBuilder), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder)}
; {var2636=org.apache.commons.io.output.StringBuilderWriter, var450=r0, var2739=r1, var673=i0, var1811=i1, var803=$r2}
; {org.apache.commons.io.output.StringBuilderWriter=var2636, r0=var450, r1=var2739, i0=var673, i1=var1811, $r2=var803}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1}
;stmts r0 := @this: org.apache.commons.io.output.StringBuilderWriter;	r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1);	return r0
;block_num 1