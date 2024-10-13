(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var1820 0)
(declare-sort var3982 0)
(declare-sort var2682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var426 var426)
(declare-const null-String String)
(declare-const null-var3982 var3982)
(declare-const null-var2682 var2682)
(declare-const var2538 var426) ; Statement: r2 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires 
(assert (not (= var2538 null-var426)))
(declare-const var1781 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1781 null-String)))
(declare-const var1311 var3982) ; Statement: r6 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1311 null-var3982)))
(declare-const var1902 var2682) ; Statement: r8 := @parameter2: com.google.javascript.jscomp.JSChunk 
(assert (not (= var1902 null-var2682)))
(assert true)
(define-const var3658 Int (indexOf/-1037706067 var1781 46)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(assert true) ; Non Conditional
(define-const var2878 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 == $i3 goto return 
(assert (= var3658 var2878)) ; Cond: i1 == $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var426=com.google.javascript.jscomp.ProcessClosureProvidesAndRequires, var2538=r2, var1781=r0, var1820=null_type, var3982=com.google.javascript.rhino.Node, var1311=r6, var2682=com.google.javascript.jscomp.JSChunk, var1902=r8, var3658=i1, var2878=$i3}
; {com.google.javascript.jscomp.ProcessClosureProvidesAndRequires=var426, r2=var2538, r0=var1781, null_type=var1820, com.google.javascript.rhino.Node=var3982, r6=var1311, com.google.javascript.jscomp.JSChunk=var2682, r8=var1902, i1=var3658, $i3=var2878}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires;	r0 := @parameter0: java.lang.String;	r6 := @parameter1: com.google.javascript.rhino.Node;	r8 := @parameter2: com.google.javascript.jscomp.JSChunk;	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i3 = (int) -1;	if i1 == $i3 goto return;	return
;block_num 3