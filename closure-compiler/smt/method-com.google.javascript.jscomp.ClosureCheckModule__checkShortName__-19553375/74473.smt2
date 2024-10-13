(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3339 0)
(declare-sort var2229 0)
(declare-sort var3495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var2229) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3339 var3339)
(declare-const null-var2229 var2229)
(declare-const null-String String)
(declare-const var2025 var3339) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var2025 null-var3339)))
(declare-const var470 var2229) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var470 null-var2229)))
(declare-const var1100 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1100 null-String)))
(assert true)
(define-const var3106 String (getString/-897720134 var470)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2297 Int (lastIndexOf/-1292097097 var1100 46)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2156 Int (+ var2297 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var2156 0) (>= (str.len var1100) var2156))))
(define-const var2199 String (substring/850833817 var1100 var2156)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
(define-const var408 Bool (= var3106 var2199)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var408 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3339=com.google.javascript.jscomp.NodeTraversal, var2025=r5, var2229=com.google.javascript.rhino.Node, var470=r0, var1100=r2, var3495=null_type, var3106=r1, var2297=$i0, var2156=$i1, var2199=r3, var408=$z0}
; {com.google.javascript.jscomp.NodeTraversal=var3339, r5=var2025, com.google.javascript.rhino.Node=var2229, r0=var470, r2=var1100, null_type=var3495, r1=var3106, $i0=var2297, $i1=var2156, r3=var2199, $z0=var408}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: java.lang.String;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto return;	return
;block_num 2