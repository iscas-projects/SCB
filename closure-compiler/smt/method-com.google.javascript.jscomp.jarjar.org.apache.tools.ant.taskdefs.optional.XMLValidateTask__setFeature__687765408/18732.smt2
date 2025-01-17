(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var1874 0)
(declare-sort var1082 0)
(declare-sort var1515 0)
(declare-sort var25 0)
(declare-sort var925 0)
(declare-sort var1946 0)
(declare-sort var3369 0)
(declare-sort var2597 0)
(declare-sort var165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1082 String Int) void)
(declare-fun cast-from-var575-to-var1082 (var575) var1082)
(declare-fun xmlReader/-2132854784 (var575) var1515)
(declare-fun var925-init () var925)
(declare-fun getClass/1258963082 (var1946) ClassObject)
(declare-fun cast-from-var1515-to-var1946 (var1515) var1946)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getLocation/851674571 (var2597) var3369)
(declare-fun cast-from-var575-to-var2597 (var575) var2597)
(declare-fun <init>/1933136886 (var925 String var165 var3369) void)
(declare-fun cast-from-var25-to-var165 (var25) var165)
(declare-const null-var575 var575)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var25 var25)
(declare-const var3057 var575) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask 
(assert (not (= var3057 null-var575)))
(declare-const var2870 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2870 null-String)))
(declare-const var3346 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3346 null-Bool)))
(define-const var3276 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3276)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3276!1 String)
(assert (= var3276!1 ""))
(assert true)
(define-const var2948 String (append/672562846 var3276!1 "Setting feature ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting feature ") 
(declare-const var3276!2 String)
(assert (= var3276!2 (str.++ var3276!1 "Setting feature ")))
(assert true)
(define-const var139 String (append/672562846 var2948 var2870)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2948!1 String)
(assert (= var2948!1 (str.++ var2948 var2870)))
(assert true)
(define-const var403 String (append/672562846 var139 "=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var139!1 String)
(assert (= var139!1 (str.++ var139 "=")))
(assert true)
(define-const var3635 String (append/-388390247 var403 var3346)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var403!1 String)
(assert (str.prefixof var403 var403!1))
(assert true)
(define-const var3659 String (toString/-2075883882 var3635)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var575-to-var1082 var3057) var3659 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: void log(java.lang.String,int)>($r7, 4) 

(declare-const var3057!1 var575)
(declare-const var3659!1 String)
(declare-const var3052 Int)
(define-const var1385 var1515 (xmlReader/-2132854784 var3057!1)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: org.xml.sax.XMLReader xmlReader> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1784 var25) ; Statement: $r21 := @caughtexception 
(assert (not (= var1784 null-var25)))
(define-const var109 var925 var925-init) ; Statement: $r22 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3309 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3309)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3309!1 String)
(assert (= var3309!1 ""))
(assert true)
(define-const var2938 String (append/672562846 var3309!1 "Parser ")) ; Statement: $r27 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parser ") 
(declare-const var3309!2 String)
(assert (= var3309!2 (str.++ var3309!1 "Parser ")))
(define-const var2632 var1515 (xmlReader/-2132854784 var3057!1)) ; Statement: $r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: org.xml.sax.XMLReader xmlReader> 
(assert true)
(define-const var314 ClassObject (getClass/1258963082 (cast-from-var1515-to-var1946 var2632))) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2406 String (getName/-1958580599 var314)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3327 String (append/672562846 var2938 var2406)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2938!1 String)
(assert (= var2938!1 (str.++ var2938 var2406)))
(assert true)
(define-const var840 String (append/672562846 var3327 " doesn\u0027t recognize feature ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t recognize feature ") 
(declare-const var3327!1 String)
(assert (= var3327!1 (str.++ var3327 " doesn\u0027t recognize feature ")))
(assert true)
(define-const var3710 String (append/672562846 var840 var2870)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var840!1 String)
(assert (= var840!1 (str.++ var840 var2870)))
(assert true)
(define-const var3166 String (toString/-2075883882 var3710)) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1362 var3369 (getLocation/851674571 (cast-from-var575-to-var2597 var3057!1))) ; Statement: $r31 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var109 var3166 (cast-from-var25-to-var165 var1784) var1362)) ; Statement: specialinvoke $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r32, $r21, $r31) 

(declare-const var109!1 var925)
(declare-const var3166!1 String)
(declare-const var1784!1 var25)
(declare-const var1362!1 var3369)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var575-to-var1082=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), xmlReader/-2132854784=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], org.xml.sax.XMLReader), var925-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1515-to-var1946=([org.xml.sax.XMLReader], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var575-to-var2597=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var25-to-var165=([org.xml.sax.SAXNotRecognizedException], java.lang.Throwable)}
; {var575=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask, var3057=r0, var2870=r2, var1874=null_type, var3346=z0, var3276=$r1, var2948=$r3, var139=$r4, var403=$r5, var3635=$r6, var3659=$r7, var1082=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3052=4, var1515=org.xml.sax.XMLReader, var1385=$r8, var25=org.xml.sax.SAXNotRecognizedException, var1784=$r21, var925=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var109=$r22, var3309=$r23, var2938=$r27, var2632=$r24, var1946=java.lang.Object, var314=$r25, var2406=$r26, var3327=$r28, var840=$r29, var3710=$r30, var3166=$r32, var3369=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2597=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1362=$r31, var165=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask=var575, r0=var3057, r2=var2870, null_type=var1874, z0=var3346, $r1=var3276, $r3=var2948, $r4=var139, $r5=var403, $r6=var3635, $r7=var3659, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1082, 4=var3052, org.xml.sax.XMLReader=var1515, $r8=var1385, org.xml.sax.SAXNotRecognizedException=var25, $r21=var1784, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var925, $r22=var109, $r23=var3309, $r27=var2938, $r24=var2632, java.lang.Object=var1946, $r25=var314, $r26=var2406, $r28=var3327, $r29=var840, $r30=var3710, $r32=var3166, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3369, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2597, $r31=var1362, java.lang.Throwable=var165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting feature ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: void log(java.lang.String,int)>($r7, 4);	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: org.xml.sax.XMLReader xmlReader>;	$r21 := @caughtexception;	$r22 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parser ");	$r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: org.xml.sax.XMLReader xmlReader>;	$r25 = virtualinvoke $r24.<java.lang.Object: java.lang.Class getClass()>();	$r26 = virtualinvoke $r25.<java.lang.Class: java.lang.String getName()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t recognize feature ");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	$r31 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r32, $r21, $r31);	throw $r22
;block_num 2