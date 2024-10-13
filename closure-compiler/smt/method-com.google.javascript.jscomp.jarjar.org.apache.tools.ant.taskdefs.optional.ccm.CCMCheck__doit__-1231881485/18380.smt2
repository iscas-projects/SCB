(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var474 0)
(declare-sort var3245 0)
(declare-sort var2684 0)
(declare-sort var1873 0)
(declare-sort var3627 0)
(declare-sort var1981 0)
(declare-sort var356 0)
(declare-sort var3072 0)
(declare-sort var256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3245-init () var3245)
(declare-fun <init>/900561260 (var3245) void)
(declare-fun getCcmCommand/-1004219399 (var2684) String)
(declare-fun cast-from-var474-to-var2684 (var474) var2684)
(declare-fun setExecutable/491986901 (var3245 String) void)
(declare-fun createArgument/-916843187 (var3245) var1873)
(declare-fun getCcmAction/-1383467840 (var2684) String)
(declare-fun setValue/2115864135 (var1873 String) void)
(declare-fun checkOptions/-1227740514 (var474 var3245) void)
(declare-fun run/-2115711463 (var2684 var3245) Int)
(declare-fun var3627_isFailure/-2053034463 (Int) Bool)
(declare-fun var1981-init () var1981)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var356) String)
(declare-fun cast-from-var3245-to-var356 (var3245) var356)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var256) var3072)
(declare-fun cast-from-var474-to-var256 (var474) var256)
(declare-fun <init>/-469549130 (var1981 String var3072) void)
(declare-const null-var474 var474)
(declare-const var29 var474) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck 
(assert (not (= var29 null-var474)))
(define-const var3806 var3245 var3245-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert true)
;(assert (<init>/900561260 var3806)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>() 

(declare-const var3806!1 var3245)
(assert true)
(define-const var2262 String (getCcmCommand/-1004219399 (cast-from-var474-to-var2684 var29))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.lang.String getCcmCommand()>() 
(assert true)
;(assert (setExecutable/491986901 var3806!1 var2262)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2) 

(declare-const var3806!2 var3245)
(declare-const var2262!1 String)
(assert true)
(define-const var2977 var1873 (createArgument/-916843187 var3806!2)) ; Statement: $r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert true)
(define-const var278 String (getCcmAction/-1383467840 (cast-from-var474-to-var2684 var29))) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.lang.String getCcmAction()>() 
(assert true)
;(assert (setValue/2115864135 var2977 var278)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3) 

(declare-const var2977!1 var1873)
(declare-const var278!1 String)
(assert true)
;(assert (checkOptions/-1227740514 var29 var3806!2)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 

(declare-const var29!1 var474)
(declare-const var3806!3 var3245)
(assert true)
(define-const var134 Int (run/-2115711463 (cast-from-var474-to-var2684 var29!1) var3806!3)) ; Statement: i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 
(define-const var2310 Bool (var3627_isFailure/-2053034463 var134)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>(i0) 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2310 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var154 var1981 var1981-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1788 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1788)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1788!1 String)
(assert (= var1788!1 ""))
(assert true)
(define-const var2219 String (append/672562846 var1788!1 "Failed executing: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ") 
(declare-const var1788!2 String)
(assert (= var1788!2 (str.++ var1788!1 "Failed executing: ")))
(assert true)
(define-const var3046 String (append/-1031950772 var2219 (cast-from-var3245-to-var356 var3806!3))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var2219!1 String)
(assert (str.prefixof var2219 var2219!1))
(assert true)
(define-const var2703 String (toString/-2075883882 var3046)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var22 var3072 (getLocation/851674571 (cast-from-var474-to-var256 var29!1))) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var154 var2703 var22)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r10, $r9) 

(declare-const var154!1 var1981)
(declare-const var2703!1 String)
(declare-const var22!1 var3072)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3245-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), <init>/900561260=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), getCcmCommand/-1004219399=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), cast-from-var474-to-var2684=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus), setExecutable/491986901=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, java.lang.String], void), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), getCcmAction/-1383467840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), checkOptions/-1227740514=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), run/-2115711463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], int), var3627_isFailure/-2053034463=([int], boolean), var1981-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3245-to-var356=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var474-to-var256=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var474=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck, var29=r1, var3245=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var3806=$r0, var2684=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, var2262=$r2, var1873=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var2977=$r4, var278=$r3, var134=i0, var3627=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var2310=$z0, var1981=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var154=$r5, var1788=$r6, var2219=$r7, var356=java.lang.Object, var3046=$r8, var2703=$r10, var3072=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var256=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var22=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck=var474, r1=var29, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var3245, $r0=var3806, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus=var2684, $r2=var2262, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var1873, $r4=var2977, $r3=var278, i0=var134, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var3627, $z0=var2310, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1981, $r5=var154, $r6=var1788, $r7=var2219, java.lang.Object=var356, $r8=var3046, $r10=var2703, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3072, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var256, $r9=var22}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.lang.String getCcmCommand()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2);	$r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.lang.String getCcmAction()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>(i0);	if $z0 == 0 goto return;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r10, $r9);	throw $r5
;block_num 2