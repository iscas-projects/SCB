(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort var2864 0)
(declare-sort var926 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2864-init () (Array Int var2864))
(declare-fun sizelimit/1879908110 (var3895) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2864 (Int) var2864)
(declare-fun when/1879908110 (var3895) var926)
(declare-fun getValue/-1445752687 (var1271) String)
(declare-fun cast-from-var926-to-var1271 (var926) var1271)
(declare-fun cast-from-String-to-var2864 (String) var2864)
(declare-fun String_format/1339386452 (String (Array Int var2864)) String)
(declare-const null-var3895 var3895)
(declare-const null-__Array__Int__var2864__ (Array Int var2864))
(declare-const var2216 var3895) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector 
(assert (not (= var2216 null-var3895)))
(define-const var1439 (Array Int var2864) arr-var2864-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var1609 Int (sizelimit/1879908110 var2216)) ; Statement: $l0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector: long sizelimit> 
(define-const var1163 Int (Int_valueOf/-1102777585 var1609)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var1439!1 (Array Int var2864))
(assert (not (= var1439!1 null-__Array__Int__var2864__)))
(assert (= (select var1439!1 0) (cast-from-Int-to-var2864 var1163))) ; Statement: $r0[0] = $r2 
(define-const var170 var926 (when/1879908110 var2216)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Comparison when> 
(assert true)
(define-const var3259 String (getValue/-1445752687 (cast-from-var926-to-var1271 var170))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Comparison: java.lang.String getValue()>() 
(declare-const var1439!2 (Array Int var2864))
(assert (not (= var1439!2 null-__Array__Int__var2864__)))
(assert (= (select var1439!2 1) (cast-from-String-to-var2864 var3259))) ; Statement: $r0[1] = $r4 
(define-const var3018 String (String_format/1339386452 "{sizeselector value: %d compare: %s}" var1439!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{sizeselector value: %d compare: %s}", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2864-init=([], java.lang.Object[]), sizelimit/1879908110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2864=([java.lang.Long], java.lang.Object), when/1879908110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Comparison), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var926-to-var1271=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Comparison], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), cast-from-String-to-var2864=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3895=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector, var2216=r1, var2864=java.lang.Object, var1439=$r0, var1609=$l0, var1163=$r2, var926=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Comparison, var170=$r3, var1271=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var3259=$r4, var3018=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector=var3895, r1=var2216, java.lang.Object=var2864, $r0=var1439, $l0=var1609, $r2=var1163, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Comparison=var926, $r3=var170, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1271, $r4=var3259, $r5=var3018}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector;	$r0 = newarray (java.lang.Object)[2];	$l0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector: long sizelimit>;	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r0[0] = $r2;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SizeSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Comparison when>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Comparison: java.lang.String getValue()>();	$r0[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{sizeselector value: %d compare: %s}", $r0);	return $r5
;block_num 1