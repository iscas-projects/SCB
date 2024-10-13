(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1188 0)
(declare-sort var1998 0)
(declare-sort var3211 0)
(declare-sort var2462 0)
(declare-sort var3749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var1998) String)
(declare-fun cast-from-var1188-to-var1998 (var1188) var1998)
(declare-fun toLowerCase/1946809429 (String var3211) String)
(declare-fun calendarFields/-370280835 (var1188) var2462)
(declare-fun var2462_get/1088891777 (var2462 var3749) var3749)
(declare-fun cast-from-String-to-var3749 (String) var3749)
(declare-fun cast-from-var3749-to-Int (var3749) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-var1188 var1188)
(declare-const var3211-ENGLISH var3211)
(declare-const var2260 var1188) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit 
(assert (not (= var2260 null-var1188)))
(assert true)
(define-const var3695 String (getValue/-1445752687 (cast-from-var1188-to-var1998 var2260))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit: java.lang.String getValue()>() 
(define-const var3427 var3211 var3211-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3681 String (toLowerCase/1946809429 var3695 var3427)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3281 var2462 (calendarFields/-370280835 var2260)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit: java.util.Map calendarFields> 
(define-const var1084 var3749 (var2462_get/1088891777 var3281 (cast-from-String-to-var3749 var3681))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var2843 Int (cast-from-var3749-to-Int var1084)) ; Statement: $r6 = (java.lang.Integer) $r5 
(assert true)
(define-const var1445 Int (intValue/-1815674922 var2843)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Integer: int intValue()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var1188-to-var1998=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), calendarFields/-370280835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit], java.util.Map), var2462_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3749=([java.lang.String], java.lang.Object), cast-from-var3749-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int)}
; {var1188=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit, var2260=r0, var1998=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var3695=$r2, var3211=java.util.Locale, var3427=$r1, var3681=r3, var2462=java.util.Map, var3281=$r4, var3749=java.lang.Object, var1084=$r5, var2843=$r6, var1445=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit=var1188, r0=var2260, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1998, $r2=var3695, java.util.Locale=var3211, $r1=var3427, r3=var3681, java.util.Map=var2462, $r4=var3281, java.lang.Object=var3749, $r5=var1084, $r6=var2843, $i0=var1445}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit: java.lang.String getValue()>();	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp$Unit: java.util.Map calendarFields>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3);	$r6 = (java.lang.Integer) $r5;	$i0 = virtualinvoke $r6.<java.lang.Integer: int intValue()>();	return $i0
;block_num 1