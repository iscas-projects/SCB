(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2758 0)
(declare-sort var153 0)
(declare-sort var3467 0)
(declare-sort var234 0)
(declare-sort var2995 0)
(declare-sort var3395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3467) String)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-Bool-init () (Array Int Bool))
(declare-fun var2995-init () var2995)
(declare-fun <init>/1909349671 (var2995 String String) void)
(declare-fun hasMoreTokens/711654492 (var2995) Bool)
(declare-fun var3395-init () var3395)
(declare-fun <init>/1864341934 (var3395 String) void)
(declare-const null-var2758 var2758)
(declare-const null-String String)
(declare-const var3467-ENGLISH var3467)
(declare-const var234-SCOPE_ELEMENTS (Array Int String))
(declare-const var2761 var2758) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$TagArgument 
(assert (not (= var2761 null-var2758)))
(declare-const var1552 String) ; Statement: r25 := @parameter0: java.lang.String 
(assert (not (= var1552 null-String)))
(define-const var555 var3467 var3467-ENGLISH) ; Statement: $r0 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1899 String (toLowerCase/1946809429 var1552 var555)) ; Statement: r26 = virtualinvoke r25.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(define-const var705 (Array Int String) var234-SCOPE_ELEMENTS) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String[] SCOPE_ELEMENTS> 
(define-const var1304 Int (getLength-Arr-String-1 var705)) ; Statement: $i0 = lengthof $r1 
(define-const var1615 (Array Int Bool) arr-Bool-init) ; Statement: r2 = newarray (boolean)[$i0] 
(define-const var1173 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var985 Bool (ite (= 1 0) true false)) ; Statement: z12 = 0 
(define-const var136 Bool (ite (= 1 0) true false)) ; Statement: z11 = 0 
(define-const var1467 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(define-const var3675 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var3155 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var478 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var1003 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var1669 var2995 var2995-init) ; Statement: $r3 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var1669 var1899 ",")) ; Statement: specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r26, ",") 

(declare-const var1669!1 var2995)
(declare-const var1899!1 String)
(declare-const var1368 String)
(assert true) ; Non Conditional
(assert true)
(define-const var1384 Bool (hasMoreTokens/711654492 var1669!1)) ; Statement: $z0 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1384 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z8 == 0 goto (branch) 
(assert (not (= (ite var478 1 0) 0))) ; Negate: Cond: z8 == 0  
 ; Statement: if z10 == 0 goto (branch) 
(assert (not (= (ite var1467 1 0) 0))) ; Negate: Cond: z10 == 0  
(define-const var3540 var3395 var3395-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3540 "Mixture of \u0022all\u0022 and other scope elements in tag parameter.")) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Mixture of \"all\" and other scope elements in tag parameter.") 

(declare-const var3540!1 var3395)
(declare-const var2849 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), getLength-Arr-String-1=([java.lang.String[]], int), arr-Bool-init=([], boolean[]), var2995-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), var3395-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2758=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$TagArgument, var2761=r5, var1552=r25, var153=null_type, var3467=java.util.Locale, var555=$r0, var1899=r26, var234=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var705=$r1, var1304=$i0, var1615=r2, var1173=z5, var985=z12, var136=z11, var1467=z10, var3675=z9, var3155=z6, var478=z8, var1003=z7, var2995=java.util.StringTokenizer, var1669=$r3, var1368=",", var1384=$z0, var3395=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3540=$r10, var2849="Mixture of \"all\" and other scope elements in tag parameter."}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$TagArgument=var2758, r5=var2761, r25=var1552, null_type=var153, java.util.Locale=var3467, $r0=var555, r26=var1899, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var234, $r1=var705, $i0=var1304, r2=var1615, z5=var1173, z12=var985, z11=var136, z10=var1467, z9=var3675, z6=var3155, z8=var478, z7=var1003, java.util.StringTokenizer=var2995, $r3=var1669, ","=var1368, $z0=var1384, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3395, $r10=var3540, "Mixture of \"all\" and other scope elements in tag parameter."=var2849}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$TagArgument;	r25 := @parameter0: java.lang.String;	$r0 = <java.util.Locale: java.util.Locale ENGLISH>;	r26 = virtualinvoke r25.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	$r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String[] SCOPE_ELEMENTS>;	$i0 = lengthof $r1;	r2 = newarray (boolean)[$i0];	z5 = 0;	z12 = 0;	z11 = 0;	z10 = 0;	z9 = 0;	z6 = 0;	z8 = 0;	z7 = 0;	$r3 = new java.util.StringTokenizer;	specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r26, ",");	$z0 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto (branch);	if z8 == 0 goto (branch);	if z10 == 0 goto (branch);	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Mixture of \"all\" and other scope elements in tag parameter.");	throw $r10
;block_num 5