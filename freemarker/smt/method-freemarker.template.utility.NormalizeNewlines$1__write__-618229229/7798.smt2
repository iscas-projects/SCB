(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$buf/-1156293301 (var1812) String)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-var1812 var1812)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1475 var1812) ; Statement: r0 := @this: freemarker.template.utility.NormalizeNewlines$1 
(assert (not (= var1475 null-var1812)))
(declare-const var1952 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var1952 null-__Array__Int__Int__)))
(declare-const var324 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var324 null-Int)))
(declare-const var2644 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2644 null-Int)))
(define-const var790 String (val$buf/-1156293301 var1475)) ; Statement: $r2 = r0.<freemarker.template.utility.NormalizeNewlines$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/-1748486345 var790 var1952 var324 var2644)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i0, i1) 
(declare-const var790!1 String)
(assert (str.prefixof var790 var790!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$buf/-1156293301=([freemarker.template.utility.NormalizeNewlines$1], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var1812=freemarker.template.utility.NormalizeNewlines$1, var1475=r0, var1952=r1, var324=i0, var2644=i1, var790=$r2}
; {freemarker.template.utility.NormalizeNewlines$1=var1812, r0=var1475, r1=var1952, i0=var324, i1=var2644, $r2=var790}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: freemarker.template.utility.NormalizeNewlines$1;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<freemarker.template.utility.NormalizeNewlines$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i0, i1);	return
;block_num 1