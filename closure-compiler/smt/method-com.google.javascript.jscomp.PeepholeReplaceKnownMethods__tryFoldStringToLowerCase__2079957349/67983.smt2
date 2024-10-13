(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2957 0)
(declare-sort var426 0)
(declare-sort var129 0)
(declare-sort var1233 0)
(declare-sort var3491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var426) String)
(declare-fun toLowerCase/1946809429 (String var129) String)
(declare-fun var1233_string/730211268 (String) var426)
(declare-fun replaceWith/-1153548851 (var426 var426) void)
(declare-fun reportChangeToEnclosingScope/561508277 (var3491 var426) void)
(declare-fun cast-from-var2957-to-var3491 (var2957) var3491)
(declare-const null-var2957 var2957)
(declare-const null-var426 var426)
(declare-const var129-ROOT var129)
(declare-const var3258 var2957) ; Statement: r6 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var3258 null-var2957)))
(declare-const var1852 var426) ; Statement: r5 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1852 null-var426)))
(declare-const var52 var426) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var52 null-var426)))
(assert true)
(define-const var2518 String (getString/-897720134 var52)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var1009 var129 var129-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2078 String (toLowerCase/1946809429 var2518 var1009)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3061 var426 (var1233_string/730211268 var2078)) ; Statement: r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>(r3) 
(assert true)
;(assert (replaceWith/-1153548851 var1852 var3061)) ; Statement: virtualinvoke r5.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r4) 

(declare-const var1852!1 var426)
(declare-const var3061!1 var426)
(assert true)
;(assert (reportChangeToEnclosingScope/561508277 (cast-from-var2957-to-var3491 var3258) var3061!1)) ; Statement: virtualinvoke r6.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>(r4) 

(declare-const var3258!1 var2957)
(declare-const var3061!2 var426)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1233_string/730211268=([java.lang.String], com.google.javascript.rhino.Node), replaceWith/-1153548851=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void), reportChangeToEnclosingScope/561508277=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], void), cast-from-var2957-to-var3491=([com.google.javascript.jscomp.PeepholeReplaceKnownMethods], com.google.javascript.jscomp.AbstractPeepholeOptimization)}
; {var2957=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var3258=r6, var426=com.google.javascript.rhino.Node, var1852=r5, var52=r0, var2518=$r2, var129=java.util.Locale, var1009=$r1, var2078=r3, var1233=com.google.javascript.rhino.IR, var3061=r4, var3491=com.google.javascript.jscomp.AbstractPeepholeOptimization}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var2957, r6=var3258, com.google.javascript.rhino.Node=var426, r5=var1852, r0=var52, $r2=var2518, java.util.Locale=var129, $r1=var1009, r3=var2078, com.google.javascript.rhino.IR=var1233, r4=var3061, com.google.javascript.jscomp.AbstractPeepholeOptimization=var3491}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r5 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>(r3);	virtualinvoke r5.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r4);	virtualinvoke r6.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>(r4);	return r4
;block_num 1