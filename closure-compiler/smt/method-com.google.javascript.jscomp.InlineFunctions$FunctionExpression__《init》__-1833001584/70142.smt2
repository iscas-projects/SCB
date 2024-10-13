(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1500 0)
(declare-sort var2976 0)
(declare-sort var930 0)
(declare-sort var3195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var930) void)
(declare-fun cast-from-var1500-to-var930 (var1500) var930)
(declare-fun fn/-1775992849 (var1500) var2976)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun fakeName/-1775992849 (var1500) String)
(declare-fun var3195_name/56234954 (String) var2976)
(declare-fun fakeNameNode/-1775992849 (var1500) var2976)
(declare-const null-var1500 var1500)
(declare-const null-var2976 var2976)
(declare-const null-Int Int)
(declare-const var122 var1500) ; Statement: r0 := @this: com.google.javascript.jscomp.InlineFunctions$FunctionExpression 
(assert (not (= var122 null-var1500)))
(declare-const var2110 var2976) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2110 null-var2976)))
(declare-const var1369 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1369 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1500-to-var930 var122))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var122!1 var1500)
(declare-const var122!2 var1500)
(assert (not (= var122!2 null-var1500)))
(assert (= (fn/-1775992849 var122!2) var2110)) ; Statement: r0.<com.google.javascript.jscomp.InlineFunctions$FunctionExpression: com.google.javascript.rhino.Node fn> = r1 
(define-const var1915 String (String_valueOf/1240665136 var1369)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(declare-const var122!3 var1500)
(assert (not (= var122!3 null-var1500)))
(assert (= (fakeName/-1775992849 var122!3) var1915)) ; Statement: r0.<com.google.javascript.jscomp.InlineFunctions$FunctionExpression: java.lang.String fakeName> = $r2 
(define-const var3360 String (fakeName/-1775992849 var122!3)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.InlineFunctions$FunctionExpression: java.lang.String fakeName> 
(define-const var3092 var2976 (var3195_name/56234954 var3360)) ; Statement: $r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>($r3) 
(declare-const var122!4 var1500)
(assert (not (= var122!4 null-var1500)))
(assert (= (fakeNameNode/-1775992849 var122!4) var3092)) ; Statement: r0.<com.google.javascript.jscomp.InlineFunctions$FunctionExpression: com.google.javascript.rhino.Node fakeNameNode> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1500-to-var930=([com.google.javascript.jscomp.InlineFunctions$FunctionExpression], java.lang.Object), fn/-1775992849=([com.google.javascript.jscomp.InlineFunctions$FunctionExpression], com.google.javascript.rhino.Node), String_valueOf/1240665136=([int], java.lang.String), fakeName/-1775992849=([com.google.javascript.jscomp.InlineFunctions$FunctionExpression], java.lang.String), var3195_name/56234954=([java.lang.String], com.google.javascript.rhino.Node), fakeNameNode/-1775992849=([com.google.javascript.jscomp.InlineFunctions$FunctionExpression], com.google.javascript.rhino.Node)}
; {var1500=com.google.javascript.jscomp.InlineFunctions$FunctionExpression, var122=r0, var2976=com.google.javascript.rhino.Node, var2110=r1, var1369=i0, var930=java.lang.Object, var1915=$r2, var3360=$r3, var3195=com.google.javascript.rhino.IR, var3092=$r4}
; {com.google.javascript.jscomp.InlineFunctions$FunctionExpression=var1500, r0=var122, com.google.javascript.rhino.Node=var2976, r1=var2110, i0=var1369, java.lang.Object=var930, $r2=var1915, $r3=var3360, com.google.javascript.rhino.IR=var3195, $r4=var3092}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.InlineFunctions$FunctionExpression;	r1 := @parameter0: com.google.javascript.rhino.Node;	i0 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.InlineFunctions$FunctionExpression: com.google.javascript.rhino.Node fn> = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	r0.<com.google.javascript.jscomp.InlineFunctions$FunctionExpression: java.lang.String fakeName> = $r2;	$r3 = r0.<com.google.javascript.jscomp.InlineFunctions$FunctionExpression: java.lang.String fakeName>;	$r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>($r3);	r0.<com.google.javascript.jscomp.InlineFunctions$FunctionExpression: com.google.javascript.rhino.Node fakeNameNode> = $r4;	return
;block_num 1