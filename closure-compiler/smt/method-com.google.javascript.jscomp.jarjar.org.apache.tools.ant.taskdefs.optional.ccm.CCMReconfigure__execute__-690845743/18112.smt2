(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2996 0)
(declare-sort var1831 0)
(declare-sort var3162 0)
(declare-sort var2791 0)
(declare-sort var2039 0)
(declare-sort var1559 0)
(declare-sort var443 0)
(declare-sort var271 0)
(declare-sort var3313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1831-init () var1831)
(declare-fun <init>/900561260 (var1831) void)
(declare-fun getCcmCommand/-1004219399 (var3162) String)
(declare-fun cast-from-var2996-to-var3162 (var2996) var3162)
(declare-fun setExecutable/491986901 (var1831 String) void)
(declare-fun createArgument/-916843187 (var1831) var2791)
(declare-fun getCcmAction/-1383467840 (var3162) String)
(declare-fun setValue/2115864135 (var2791 String) void)
(declare-fun checkOptions/-90761175 (var2996 var1831) void)
(declare-fun run/-2115711463 (var3162 var1831) Int)
(declare-fun var2039_isFailure/-2053034463 (Int) Bool)
(declare-fun var1559-init () var1559)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var443) String)
(declare-fun cast-from-var1831-to-var443 (var1831) var443)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3313) var271)
(declare-fun cast-from-var2996-to-var3313 (var2996) var3313)
(declare-fun <init>/-469549130 (var1559 String var271) void)
(declare-const null-var2996 var2996)
(declare-const var3046 var2996) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure 
(assert (not (= var3046 null-var2996)))
(define-const var1906 var1831 var1831-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert true)
;(assert (<init>/900561260 var1906)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>() 

(declare-const var1906!1 var1831)
(assert true)
(define-const var1026 String (getCcmCommand/-1004219399 (cast-from-var2996-to-var3162 var3046))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: java.lang.String getCcmCommand()>() 
(assert true)
;(assert (setExecutable/491986901 var1906!1 var1026)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2) 

(declare-const var1906!2 var1831)
(declare-const var1026!1 String)
(assert true)
(define-const var302 var2791 (createArgument/-916843187 var1906!2)) ; Statement: $r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert true)
(define-const var761 String (getCcmAction/-1383467840 (cast-from-var2996-to-var3162 var3046))) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: java.lang.String getCcmAction()>() 
(assert true)
;(assert (setValue/2115864135 var302 var761)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3) 

(declare-const var302!1 var2791)
(declare-const var761!1 String)
(assert true)
;(assert (checkOptions/-90761175 var3046 var1906!2)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 

(declare-const var3046!1 var2996)
(declare-const var1906!3 var1831)
(assert true)
(define-const var3813 Int (run/-2115711463 (cast-from-var2996-to-var3162 var3046!1) var1906!3)) ; Statement: i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 
(define-const var131 Bool (var2039_isFailure/-2053034463 var3813)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>(i0) 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var131 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1737 var1559 var1559-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2977 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2977)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2977!1 String)
(assert (= var2977!1 ""))
(assert true)
(define-const var2071 String (append/672562846 var2977!1 "Failed executing: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ") 
(declare-const var2977!2 String)
(assert (= var2977!2 (str.++ var2977!1 "Failed executing: ")))
(assert true)
(define-const var1888 String (append/-1031950772 var2071 (cast-from-var1831-to-var443 var1906!3))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var2071!1 String)
(assert (str.prefixof var2071 var2071!1))
(assert true)
(define-const var25 String (toString/-2075883882 var1888)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var349 var271 (getLocation/851674571 (cast-from-var2996-to-var3313 var3046!1))) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1737 var25 var349)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r10, $r9) 

(declare-const var1737!1 var1559)
(declare-const var25!1 String)
(declare-const var349!1 var271)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1831-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), <init>/900561260=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), getCcmCommand/-1004219399=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), cast-from-var2996-to-var3162=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus), setExecutable/491986901=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, java.lang.String], void), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), getCcmAction/-1383467840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), checkOptions/-90761175=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), run/-2115711463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], int), var2039_isFailure/-2053034463=([int], boolean), var1559-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1831-to-var443=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2996-to-var3313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2996=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure, var3046=r1, var1831=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var1906=$r0, var3162=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, var1026=$r2, var2791=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var302=$r4, var761=$r3, var3813=i0, var2039=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var131=$z0, var1559=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1737=$r5, var2977=$r6, var2071=$r7, var443=java.lang.Object, var1888=$r8, var25=$r10, var271=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3313=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var349=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure=var2996, r1=var3046, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var1831, $r0=var1906, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus=var3162, $r2=var1026, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var2791, $r4=var302, $r3=var761, i0=var3813, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var2039, $z0=var131, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1559, $r5=var1737, $r6=var2977, $r7=var2071, java.lang.Object=var443, $r8=var1888, $r10=var25, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var271, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3313, $r9=var349}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: java.lang.String getCcmCommand()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2);	$r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: java.lang.String getCcmAction()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>(i0);	if $z0 == 0 goto return;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r10, $r9);	throw $r5
;block_num 2