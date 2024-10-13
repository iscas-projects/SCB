(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$buf/-1146991642 (var3236) String)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-var3236 var3236)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2806 var3236) ; Statement: r0 := @this: freemarker.template.utility.CaptureOutput$1 
(assert (not (= var2806 null-var3236)))
(declare-const var2526 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2526 null-__Array__Int__Int__)))
(declare-const var2809 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2809 null-Int)))
(declare-const var3961 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3961 null-Int)))
(define-const var735 String (val$buf/-1146991642 var2806)) ; Statement: $r2 = r0.<freemarker.template.utility.CaptureOutput$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/-1748486345 var735 var2526 var2809 var3961)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i0, i1) 
(declare-const var735!1 String)
(assert (str.prefixof var735 var735!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$buf/-1146991642=([freemarker.template.utility.CaptureOutput$1], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var3236=freemarker.template.utility.CaptureOutput$1, var2806=r0, var2526=r1, var2809=i0, var3961=i1, var735=$r2}
; {freemarker.template.utility.CaptureOutput$1=var3236, r0=var2806, r1=var2526, i0=var2809, i1=var3961, $r2=var735}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: freemarker.template.utility.CaptureOutput$1;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<freemarker.template.utility.CaptureOutput$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i0, i1);	return
;block_num 1