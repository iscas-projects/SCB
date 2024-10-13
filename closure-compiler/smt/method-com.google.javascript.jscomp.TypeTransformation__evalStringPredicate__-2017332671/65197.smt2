(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2259 0)
(declare-sort var2472 0)
(declare-sort var2100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun evalStringParams/1645083131 (var2259 var2472 var2100) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2259 var2259)
(declare-const null-var2472 var2472)
(declare-const null-var2100 var2100)
(declare-const var2911 var2259) ; Statement: r0 := @this: com.google.javascript.jscomp.TypeTransformation 
(assert (not (= var2911 null-var2259)))
(declare-const var2954 var2472) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2954 null-var2472)))
(declare-const var2372 var2100) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.TypeTransformation$NameResolver 
(assert (not (= var2372 null-var2100)))
(assert true)
(define-const var3076 (Array Int String) (evalStringParams/1645083131 var2911 var2954 var2372)) ; Statement: r3 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String[] evalStringParams(com.google.javascript.rhino.Node,com.google.javascript.jscomp.TypeTransformation$NameResolver)>(r1, r2) 
(define-const var1642 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1076 Int (getLength-Arr-String-1 var3076)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i3 >= $i0 goto r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1) 
(assert (not (>= var1642 var1076))) ; Negate: Cond: i3 >= $i0  
(define-const var936 String (select var3076 var1642)) ; Statement: $r9 = r3[i3] 
(assert true)
(define-const var3630 Bool (isEmpty/-1285796103 var936)) ; Statement: $z1 = virtualinvoke $r9.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto i3 = i3 + 1 
(assert (not (= (ite var3630 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {evalStringParams/1645083131=([com.google.javascript.jscomp.TypeTransformation, com.google.javascript.rhino.Node, com.google.javascript.jscomp.TypeTransformation$NameResolver], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2259=com.google.javascript.jscomp.TypeTransformation, var2911=r0, var2472=com.google.javascript.rhino.Node, var2954=r1, var2100=com.google.javascript.jscomp.TypeTransformation$NameResolver, var2372=r2, var3076=r3, var1642=i3, var1076=$i0, var936=$r9, var3630=$z1}
; {com.google.javascript.jscomp.TypeTransformation=var2259, r0=var2911, com.google.javascript.rhino.Node=var2472, r1=var2954, com.google.javascript.jscomp.TypeTransformation$NameResolver=var2100, r2=var2372, r3=var3076, i3=var1642, $i0=var1076, $r9=var936, $z1=var3630}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.TypeTransformation;	r1 := @parameter0: com.google.javascript.rhino.Node;	r2 := @parameter1: com.google.javascript.jscomp.TypeTransformation$NameResolver;	r3 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String[] evalStringParams(com.google.javascript.rhino.Node,com.google.javascript.jscomp.TypeTransformation$NameResolver)>(r1, r2);	i3 = 0;	$i0 = lengthof r3;	if i3 >= $i0 goto r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1);	$r9 = r3[i3];	$z1 = virtualinvoke $r9.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto i3 = i3 + 1;	return 0
;block_num 4