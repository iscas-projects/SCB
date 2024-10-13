(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$buf/1682558101 (var1854) String)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-var1854 var1854)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2730 var1854) ; Statement: r0 := @this: freemarker.template.utility.JythonRuntime$1 
(assert (not (= var2730 null-var1854)))
(declare-const var2725 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2725 null-__Array__Int__Int__)))
(declare-const var418 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var418 null-Int)))
(declare-const var2861 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2861 null-Int)))
(define-const var309 String (val$buf/1682558101 var2730)) ; Statement: $r2 = r0.<freemarker.template.utility.JythonRuntime$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/-1748486345 var309 var2725 var418 var2861)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i0, i1) 
(declare-const var309!1 String)
(assert (str.prefixof var309 var309!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$buf/1682558101=([freemarker.template.utility.JythonRuntime$1], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var1854=freemarker.template.utility.JythonRuntime$1, var2730=r0, var2725=r1, var418=i0, var2861=i1, var309=$r2}
; {freemarker.template.utility.JythonRuntime$1=var1854, r0=var2730, r1=var2725, i0=var418, i1=var2861, $r2=var309}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: freemarker.template.utility.JythonRuntime$1;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<freemarker.template.utility.JythonRuntime$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i0, i1);	return
;block_num 1