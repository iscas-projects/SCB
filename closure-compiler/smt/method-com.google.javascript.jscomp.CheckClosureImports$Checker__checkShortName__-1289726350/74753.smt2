(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1341 0)
(declare-sort var3109 0)
(declare-sort var3630 0)
(declare-sort var473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var3630) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1341 var1341)
(declare-const null-var3109 var3109)
(declare-const null-var3630 var3630)
(declare-const null-String String)
(declare-const var2325 var1341) ; Statement: r9 := @this: com.google.javascript.jscomp.CheckClosureImports$Checker 
(assert (not (= var2325 null-var1341)))
(declare-const var1106 var3109) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var1106 null-var3109)))
(declare-const var1210 var3630) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1210 null-var3630)))
(declare-const var1608 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1608 null-String)))
(assert true)
(define-const var835 String (getString/-897720134 var1210)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var694 Int (lastIndexOf/-1292097097 var1608 46)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2282 Int (+ var694 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var2282 0) (>= (str.len var1608) var2282))))
(define-const var3276 String (substring/850833817 var1608 var2282)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
(define-const var554 Bool (= var835 var3276)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var554 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1341=com.google.javascript.jscomp.CheckClosureImports$Checker, var2325=r9, var3109=com.google.javascript.jscomp.NodeTraversal, var1106=r5, var3630=com.google.javascript.rhino.Node, var1210=r0, var1608=r2, var473=null_type, var835=r1, var694=$i0, var2282=$i1, var3276=r3, var554=$z0}
; {com.google.javascript.jscomp.CheckClosureImports$Checker=var1341, r9=var2325, com.google.javascript.jscomp.NodeTraversal=var3109, r5=var1106, com.google.javascript.rhino.Node=var3630, r0=var1210, r2=var1608, null_type=var473, r1=var835, $i0=var694, $i1=var2282, r3=var3276, $z0=var554}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.CheckClosureImports$Checker;	r5 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: java.lang.String;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto return;	return
;block_num 2