(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3403 0)
(declare-sort var3559 0)
(declare-sort var3457 0)
(declare-sort var3236 0)
(declare-sort var1334 0)
(declare-sort var3010 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun targets/173117946 (var3403) var3236)
(declare-fun get/-1721276195 (var3236 var1334) var1334)
(declare-fun cast-from-String-to-var1334 (String) var1334)
(declare-fun var3010-init () var3010)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3010 String) void)
(declare-const null-var3403 var3403)
(declare-const null-String String)
(declare-const null-var3457 var3457)
(declare-const null-var1334 var1334)
(declare-const var2870 var3403) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2870 null-var3403)))
(declare-const var2972 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2972 null-String)))
(declare-const var105 var3457) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var105 null-var3457)))
(define-const var73 var3236 (targets/173117946 var2870)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.util.Hashtable targets> 
(assert true)
(define-const var308 var1334 (get/-1721276195 var73 (cast-from-String-to-var1334 var2972))) ; Statement: $r3 = virtualinvoke $r2.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: if $r3 == null goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void addOrReplaceTarget(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>(r1, r4) 
(assert (not (= var308 null-var1334))) ; Negate: Cond: $r3 == null  
(define-const var2078 var3010 var3010-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var542 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var542)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var542!1 String)
(assert (= var542!1 ""))
(assert true)
(define-const var2557 String (append/672562846 var542!1 "Duplicate target: `")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Duplicate target: `") 
(declare-const var542!2 String)
(assert (= var542!2 (str.++ var542!1 "Duplicate target: `")))
(assert true)
(define-const var1848 String (append/672562846 var2557 var2972)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2557!1 String)
(assert (= var2557!1 (str.++ var2557 var2972)))
(assert true)
(define-const var3289 String (append/672562846 var1848 "\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1848!1 String)
(assert (= var1848!1 (str.++ var1848 "\u0027")))
(assert true)
(define-const var1670 String (toString/-2075883882 var3289)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2078 var1670)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r10) 

(declare-const var2078!1 var3010)
(declare-const var1670!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {targets/173117946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.util.Hashtable), get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var1334=([java.lang.String], java.lang.Object), var3010-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3403=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2870=r0, var2972=r1, var3559=null_type, var3457=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var105=r4, var3236=java.util.Hashtable, var73=$r2, var1334=java.lang.Object, var308=$r3, var3010=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2078=$r5, var542=$r6, var2557=$r7, var1848=$r8, var3289=$r9, var1670=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3403, r0=var2870, r1=var2972, null_type=var3559, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var3457, r4=var105, java.util.Hashtable=var3236, $r2=var73, java.lang.Object=var1334, $r3=var308, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3010, $r5=var2078, $r6=var542, $r7=var2557, $r8=var1848, $r9=var3289, $r10=var1670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.util.Hashtable targets>;	$r3 = virtualinvoke $r2.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r1);	if $r3 == null goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void addOrReplaceTarget(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>(r1, r4);	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Duplicate target: `");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2