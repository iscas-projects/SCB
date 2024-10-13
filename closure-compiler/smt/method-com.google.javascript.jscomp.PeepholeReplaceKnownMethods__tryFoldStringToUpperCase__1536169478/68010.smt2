(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3005 0)
(declare-sort var2609 0)
(declare-sort var2332 0)
(declare-sort var2706 0)
(declare-sort var1040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var2609) String)
(declare-fun toUpperCase/398655892 (String var2332) String)
(declare-fun var2706_string/730211268 (String) var2609)
(declare-fun replaceWith/-1153548851 (var2609 var2609) void)
(declare-fun reportChangeToEnclosingScope/561508277 (var1040 var2609) void)
(declare-fun cast-from-var3005-to-var1040 (var3005) var1040)
(declare-const null-var3005 var3005)
(declare-const null-var2609 var2609)
(declare-const var2332-ROOT var2332)
(declare-const var763 var3005) ; Statement: r6 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var763 null-var3005)))
(declare-const var1835 var2609) ; Statement: r5 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1835 null-var2609)))
(declare-const var1656 var2609) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1656 null-var2609)))
(assert true)
(define-const var1120 String (getString/-897720134 var1656)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var1859 var2332 var2332-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3044 String (toUpperCase/398655892 var1120 var1859)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var3575 var2609 (var2706_string/730211268 var3044)) ; Statement: r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>(r3) 
(assert true)
;(assert (replaceWith/-1153548851 var1835 var3575)) ; Statement: virtualinvoke r5.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r4) 

(declare-const var1835!1 var2609)
(declare-const var3575!1 var2609)
(assert true)
;(assert (reportChangeToEnclosingScope/561508277 (cast-from-var3005-to-var1040 var763) var3575!1)) ; Statement: virtualinvoke r6.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>(r4) 

(declare-const var763!1 var3005)
(declare-const var3575!2 var2609)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var2706_string/730211268=([java.lang.String], com.google.javascript.rhino.Node), replaceWith/-1153548851=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void), reportChangeToEnclosingScope/561508277=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], void), cast-from-var3005-to-var1040=([com.google.javascript.jscomp.PeepholeReplaceKnownMethods], com.google.javascript.jscomp.AbstractPeepholeOptimization)}
; {var3005=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var763=r6, var2609=com.google.javascript.rhino.Node, var1835=r5, var1656=r0, var1120=$r2, var2332=java.util.Locale, var1859=$r1, var3044=r3, var2706=com.google.javascript.rhino.IR, var3575=r4, var1040=com.google.javascript.jscomp.AbstractPeepholeOptimization}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var3005, r6=var763, com.google.javascript.rhino.Node=var2609, r5=var1835, r0=var1656, $r2=var1120, java.util.Locale=var2332, $r1=var1859, r3=var3044, com.google.javascript.rhino.IR=var2706, r4=var3575, com.google.javascript.jscomp.AbstractPeepholeOptimization=var1040}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r5 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>(r3);	virtualinvoke r5.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r4);	virtualinvoke r6.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>(r4);	return r4
;block_num 1