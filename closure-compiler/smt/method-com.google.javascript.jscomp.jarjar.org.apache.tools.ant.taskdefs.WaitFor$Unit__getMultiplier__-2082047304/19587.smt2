(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var521 0)
(declare-sort var2804 0)
(declare-sort var1930 0)
(declare-sort var3615 0)
(declare-sort var466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var2804) String)
(declare-fun cast-from-var521-to-var2804 (var521) var2804)
(declare-fun toLowerCase/1946809429 (String var1930) String)
(declare-fun timeTable/-286933872 (var521) var3615)
(declare-fun var3615_get/1088891777 (var3615 var466) var466)
(declare-fun cast-from-String-to-var466 (String) var466)
(declare-fun cast-from-var466-to-Int (var466) Int)
(declare-fun longValue/1313863450 (Int) Int)
(declare-const null-var521 var521)
(declare-const var1930-ENGLISH var1930)
(declare-const var2034 var521) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit 
(assert (not (= var2034 null-var521)))
(assert true)
(define-const var2700 String (getValue/-1445752687 (cast-from-var521-to-var2804 var2034))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit: java.lang.String getValue()>() 
(define-const var1503 var1930 var1930-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2199 String (toLowerCase/1946809429 var2700 var1503)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var584 var3615 (timeTable/-286933872 var2034)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit: java.util.Map timeTable> 
(define-const var1479 var466 (var3615_get/1088891777 var584 (cast-from-String-to-var466 var2199))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var2676 Int (cast-from-var466-to-Int var1479)) ; Statement: $r6 = (java.lang.Long) $r5 
(assert true)
(define-const var1338 Int (longValue/1313863450 var2676)) ; Statement: $l0 = virtualinvoke $r6.<java.lang.Long: long longValue()>() 
 ; Statement: return $l0 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var521-to-var2804=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), timeTable/-286933872=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit], java.util.Map), var3615_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var466=([java.lang.String], java.lang.Object), cast-from-var466-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long)}
; {var521=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit, var2034=r0, var2804=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2700=$r2, var1930=java.util.Locale, var1503=$r1, var2199=r3, var3615=java.util.Map, var584=$r4, var466=java.lang.Object, var1479=$r5, var2676=$r6, var1338=$l0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit=var521, r0=var2034, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2804, $r2=var2700, java.util.Locale=var1930, $r1=var1503, r3=var2199, java.util.Map=var3615, $r4=var584, java.lang.Object=var466, $r5=var1479, $r6=var2676, $l0=var1338}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit: java.lang.String getValue()>();	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor$Unit: java.util.Map timeTable>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3);	$r6 = (java.lang.Long) $r5;	$l0 = virtualinvoke $r6.<java.lang.Long: long longValue()>();	return $l0
;block_num 1