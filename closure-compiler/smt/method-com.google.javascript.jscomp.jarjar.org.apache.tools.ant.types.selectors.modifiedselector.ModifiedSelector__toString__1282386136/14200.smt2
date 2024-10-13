(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2184 0)
(declare-sort var3190 0)
(declare-sort var806 0)
(declare-sort var838 0)
(declare-sort var2247 0)
(declare-sort var3734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3190-init () (Array Int var3190))
(declare-fun update/1926155840 (var2184) Bool)
(declare-fun var806_valueOf/1602327315 (Bool) var806)
(declare-fun cast-from-var806-to-var3190 (var806) var3190)
(declare-fun selectDirectories/1926155840 (var2184) Bool)
(declare-fun cache/1926155840 (var2184) var838)
(declare-fun cast-from-var838-to-var3190 (var838) var3190)
(declare-fun algorithm/1926155840 (var2184) var2247)
(declare-fun cast-from-var2247-to-var3190 (var2247) var3190)
(declare-fun comparator/1926155840 (var2184) var3734)
(declare-fun cast-from-var3734-to-var3190 (var3734) var3190)
(declare-fun String_format/1339386452 (String (Array Int var3190)) String)
(declare-const null-var2184 var2184)
(declare-const null-__Array__Int__var3190__ (Array Int var3190))
(declare-const var3491 var2184) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector 
(assert (not (= var3491 null-var2184)))
(define-const var67 (Array Int var3190) arr-var3190-init) ; Statement: $r0 = newarray (java.lang.Object)[5] 
(define-const var1003 Bool (update/1926155840 var3491)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: boolean update> 
(define-const var3173 var806 (var806_valueOf/1602327315 var1003)) ; Statement: $r2 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
(declare-const var67!1 (Array Int var3190))
(assert (not (= var67!1 null-__Array__Int__var3190__)))
(assert (= (select var67!1 0) (cast-from-var806-to-var3190 var3173))) ; Statement: $r0[0] = $r2 
(define-const var620 Bool (selectDirectories/1926155840 var3491)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: boolean selectDirectories> 
(define-const var3382 var806 (var806_valueOf/1602327315 var620)) ; Statement: $r3 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
(declare-const var67!2 (Array Int var3190))
(assert (not (= var67!2 null-__Array__Int__var3190__)))
(assert (= (select var67!2 1) (cast-from-var806-to-var3190 var3382))) ; Statement: $r0[1] = $r3 
(define-const var719 var838 (cache/1926155840 var3491)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Cache cache> 
(declare-const var67!3 (Array Int var3190))
(assert (not (= var67!3 null-__Array__Int__var3190__)))
(assert (= (select var67!3 2) (cast-from-var838-to-var3190 var719))) ; Statement: $r0[2] = $r4 
(define-const var2421 var2247 (algorithm/1926155840 var3491)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Algorithm algorithm> 
(declare-const var67!4 (Array Int var3190))
(assert (not (= var67!4 null-__Array__Int__var3190__)))
(assert (= (select var67!4 3) (cast-from-var2247-to-var3190 var2421))) ; Statement: $r0[3] = $r5 
(define-const var2839 var3734 (comparator/1926155840 var3491)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: java.util.Comparator comparator> 
(declare-const var67!5 (Array Int var3190))
(assert (not (= var67!5 null-__Array__Int__var3190__)))
(assert (= (select var67!5 4) (cast-from-var3734-to-var3190 var2839))) ; Statement: $r0[4] = $r6 
(define-const var3758 String (String_format/1339386452 "{modifiedselector update=%s seldirs=%s cache=%s algorithm=%s comparator=%s}" var67!5)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{modifiedselector update=%s seldirs=%s cache=%s algorithm=%s comparator=%s}", $r0) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3190-init=([], java.lang.Object[]), update/1926155840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector], boolean), var806_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var806-to-var3190=([java.lang.Boolean], java.lang.Object), selectDirectories/1926155840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector], boolean), cache/1926155840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Cache), cast-from-var838-to-var3190=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Cache], java.lang.Object), algorithm/1926155840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Algorithm), cast-from-var2247-to-var3190=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Algorithm], java.lang.Object), comparator/1926155840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector], java.util.Comparator), cast-from-var3734-to-var3190=([java.util.Comparator], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2184=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector, var3491=r1, var3190=java.lang.Object, var67=$r0, var1003=$z0, var806=java.lang.Boolean, var3173=$r2, var620=$z1, var3382=$r3, var838=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Cache, var719=$r4, var2247=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Algorithm, var2421=$r5, var3734=java.util.Comparator, var2839=$r6, var3758=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector=var2184, r1=var3491, java.lang.Object=var3190, $r0=var67, $z0=var1003, java.lang.Boolean=var806, $r2=var3173, $z1=var620, $r3=var3382, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Cache=var838, $r4=var719, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Algorithm=var2247, $r5=var2421, java.util.Comparator=var3734, $r6=var2839, $r7=var3758}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector;	$r0 = newarray (java.lang.Object)[5];	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: boolean update>;	$r2 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	$r0[0] = $r2;	$z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: boolean selectDirectories>;	$r3 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	$r0[1] = $r3;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Cache cache>;	$r0[2] = $r4;	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.Algorithm algorithm>;	$r0[3] = $r5;	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: java.util.Comparator comparator>;	$r0[4] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{modifiedselector update=%s seldirs=%s cache=%s algorithm=%s comparator=%s}", $r0);	return $r7
;block_num 1