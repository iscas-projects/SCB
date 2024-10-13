(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1883 0)
(declare-sort var2805 0)
(declare-sort var42 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2805-init () (Array Int var2805))
(declare-fun includeList/-1181590138 (var1883) var42)
(declare-fun cast-from-var42-to-var2805 (var42) var2805)
(declare-fun excludeList/-1181590138 (var1883) var42)
(declare-fun String_format/1339386452 (String (Array Int var2805)) String)
(declare-const null-var1883 var1883)
(declare-const null-__Array__Int__var2805__ (Array Int var2805))
(declare-const var70 var1883) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet 
(assert (not (= var70 null-var1883)))
(define-const var1982 (Array Int var2805) arr-var2805-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var158 var42 (includeList/-1181590138 var70)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet: java.util.List includeList> 
(declare-const var1982!1 (Array Int var2805))
(assert (not (= var1982!1 null-__Array__Int__var2805__)))
(assert (= (select var1982!1 0) (cast-from-var42-to-var2805 var158))) ; Statement: $r0[0] = $r2 
(define-const var545 var42 (excludeList/-1181590138 var70)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet: java.util.List excludeList> 
(declare-const var1982!2 (Array Int var2805))
(assert (not (= var1982!2 null-__Array__Int__var2805__)))
(assert (= (select var1982!2 1) (cast-from-var42-to-var2805 var545))) ; Statement: $r0[1] = $r3 
(define-const var1786 String (String_format/1339386452 "patternSet{ includes: %s excludes: %s }" var1982!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("patternSet{ includes: %s excludes: %s }", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2805-init=([], java.lang.Object[]), includeList/-1181590138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet], java.util.List), cast-from-var42-to-var2805=([java.util.List], java.lang.Object), excludeList/-1181590138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet], java.util.List), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1883=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet, var70=r1, var2805=java.lang.Object, var1982=$r0, var42=java.util.List, var158=$r2, var545=$r3, var1786=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet=var1883, r1=var70, java.lang.Object=var2805, $r0=var1982, java.util.List=var42, $r2=var158, $r3=var545, $r4=var1786}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet;	$r0 = newarray (java.lang.Object)[2];	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet: java.util.List includeList>;	$r0[0] = $r2;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet: java.util.List excludeList>;	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("patternSet{ includes: %s excludes: %s }", $r0);	return $r4
;block_num 1