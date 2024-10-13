(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3755 0)
(declare-sort var2006 0)
(declare-sort var2981 0)
(declare-sort var1598 0)
(declare-sort var3533 0)
(declare-sort var3713 0)
(declare-sort var2556 0)
(declare-sort var3636 0)
(declare-sort var725 0)
(declare-sort var2499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeSetters/1960194218 (var3755) var3533)
(declare-fun toLowerCase/1946809429 (String var3713) String)
(declare-fun var3533_get/1088891777 (var3533 var2981) var2981)
(declare-fun cast-from-String-to-var2981 (String) var2981)
(declare-fun cast-from-var2981-to-var2556 (var2981) var2556)
(declare-fun var725-init () var725)
(declare-fun <init>/-198444851 (var725 var2499) void)
(declare-fun cast-from-var3636-to-var2499 (var3636) var2499)
(declare-const null-var3755 var3755)
(declare-const null-var2006 var2006)
(declare-const null-var2981 var2981)
(declare-const null-String String)
(declare-const var3713-ENGLISH var3713)
(declare-const null-var2556 var2556)
(declare-const null-var3636 var3636)
(declare-const var1381 var3755) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1381 null-var3755)))
(declare-const var1806 var2006) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1806 null-var2006)))
(declare-const var1013 var2981) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var1013 null-var2981)))
(declare-const var3681 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3681 null-String)))
(declare-const var2128 var2981) ; Statement: r9 := @parameter3: java.lang.Object 
(assert (not (= var2128 null-var2981)))
(define-const var1206 var3533 (attributeSetters/1960194218 var1381)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters> 
(define-const var3707 var3713 var3713-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1082 String (toLowerCase/1946809429 var3681 var3707)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var1530 var2981 (var3533_get/1088891777 var1206 (cast-from-String-to-var2981 var1082))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var2420 var2556 (cast-from-var2981-to-var2556 var1530)) ; Statement: r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r5 
 ; Statement: if r6 != null goto (branch) 
(assert (not (= var2420 null-var2556))) ; Cond: r6 != null 
 ; Statement: if r6 == null goto return 
(assert (not (= var2420 null-var2556))) ; Negate: Cond: r6 == null  
(declare-const var2014 var3636) ; Statement: $r32 := @caughtexception 
(assert (not (= var2014 null-var3636)))
(define-const var402 var725 var725-init) ; Statement: $r33 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-198444851 var402 (cast-from-var3636-to-var2499 var2014))) ; Statement: specialinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r32) 

(declare-const var402!1 var725)
(declare-const var2014!1 var3636)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeSetters/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3533_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2981=([java.lang.String], java.lang.Object), cast-from-var2981-to-var2556=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter), var725-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-198444851=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable], void), cast-from-var3636-to-var2499=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var3755=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1381=r0, var2006=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1806=r7, var2981=java.lang.Object, var1013=r8, var3681=r1, var1598=null_type, var2128=r9, var3533=java.util.Map, var1206=$r3, var3713=java.util.Locale, var3707=$r2, var1082=$r4, var1530=$r5, var2556=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter, var2420=r6, var3636=java.lang.IllegalAccessException, var2014=$r32, var725=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var402=$r33, var2499=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var3755, r0=var1381, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2006, r7=var1806, java.lang.Object=var2981, r8=var1013, r1=var3681, null_type=var1598, r9=var2128, java.util.Map=var3533, $r3=var1206, java.util.Locale=var3713, $r2=var3707, $r4=var1082, $r5=var1530, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter=var2556, r6=var2420, java.lang.IllegalAccessException=var3636, $r32=var2014, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var725, $r33=var402, java.lang.Throwable=var2499}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r8 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.Object;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r5;	if r6 != null goto (branch);	if r6 == null goto return;	$r32 := @caughtexception;	$r33 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r32);	throw $r33
;block_num 3