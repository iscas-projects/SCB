(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2611 0)
(declare-sort var3980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOnlyChild/708960943 (var2611) var2611)
(declare-fun getString/-897720134 (var2611) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3980_string/730211268 (String) var2611)
(declare-fun srcrefTree/-1502961263 (var2611 var2611) var2611)
(declare-fun replaceWith/-1153548851 (var2611 var2611) void)
(declare-const null-var2611 var2611)
(declare-const var2960 var2611) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2960 null-var2611)))
(assert true)
(define-const var338 var2611 (getOnlyChild/708960943 var2960)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getOnlyChild()>() 
(assert true)
(define-const var3169 String (getString/-897720134 var338)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (and true (and (>= 0 0) (>= (str.len var3169) 8) (>= 8 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getOnlyChild/708960943=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3980_string/730211268=([java.lang.String], com.google.javascript.rhino.Node), srcrefTree/-1502961263=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), replaceWith/-1153548851=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void)}
; {var2611=com.google.javascript.rhino.Node, var2960=r0, var338=r1, var3169=$r2, var2817=$r3, var1487=$r4, var3980=com.google.javascript.rhino.IR, var3703=$r5, var633=r6}
; {com.google.javascript.rhino.Node=var2611, r0=var2960, r1=var338, $r2=var3169, $r3=var2817, $r4=var1487, com.google.javascript.rhino.IR=var3980, $r5=var3703, r6=var633}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getOnlyChild()>();	$r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, 8);	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001..");	$r5 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>($r4);	r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node srcrefTree(com.google.javascript.rhino.Node)>(r1);	virtualinvoke r1.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r6);	return
;block_num 1