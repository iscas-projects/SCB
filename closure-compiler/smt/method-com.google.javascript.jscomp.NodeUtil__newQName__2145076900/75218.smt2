(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var449 0)
(declare-sort var1369 0)
(declare-sort var1074 0)
(declare-sort var1934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1934_newQName/1842138164 (var449 String) var1074)
(declare-fun srcrefTreeIfMissing/-1216578518 (var1074 var1074) var1074)
(declare-fun getOriginalName/1904446063 (var1074) String)
(declare-const null-var449 var449)
(declare-const null-String String)
(declare-const null-var1074 var1074)
(declare-const var2445 var449) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var2445 null-var449)))
(declare-const var2195 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2195 null-String)))
(declare-const var2386 var1074) ; Statement: r3 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var2386 null-var1074)))
(declare-const var3757 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var3757 null-String)))
(define-const var494 var1074 (var1934_newQName/1842138164 var2445 var2195)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>(r0, r1) 
(assert true)
;(assert (srcrefTreeIfMissing/-1216578518 var494 var2386)) ; Statement: virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node srcrefTreeIfMissing(com.google.javascript.rhino.Node)>(r3) 

(declare-const var494!1 var1074)
(declare-const var2386!1 var1074)
(assert true)
(define-const var2183 String (getOriginalName/1904446063 var494!1)) ; Statement: $r5 = virtualinvoke r2.<com.google.javascript.rhino.Node: java.lang.String getOriginalName()>() 
(assert true)
(define-const var3803 Bool (= var3757 var2183)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto return r2 
(assert (not (= (ite var3803 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1934_newQName/1842138164=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), srcrefTreeIfMissing/-1216578518=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getOriginalName/1904446063=([com.google.javascript.rhino.Node], java.lang.String)}
; {var449=com.google.javascript.jscomp.AbstractCompiler, var2445=r0, var2195=r1, var1369=null_type, var1074=com.google.javascript.rhino.Node, var2386=r3, var3757=r4, var1934=com.google.javascript.jscomp.NodeUtil, var494=r2, var2183=$r5, var3803=$z0}
; {com.google.javascript.jscomp.AbstractCompiler=var449, r0=var2445, r1=var2195, null_type=var1369, com.google.javascript.rhino.Node=var1074, r3=var2386, r4=var3757, com.google.javascript.jscomp.NodeUtil=var1934, r2=var494, $r5=var2183, $z0=var3803}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: com.google.javascript.rhino.Node;	r4 := @parameter3: java.lang.String;	r2 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>(r0, r1);	virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node srcrefTreeIfMissing(com.google.javascript.rhino.Node)>(r3);	$r5 = virtualinvoke r2.<com.google.javascript.rhino.Node: java.lang.String getOriginalName()>();	$z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z0 != 0 goto return r2;	return r2
;block_num 2