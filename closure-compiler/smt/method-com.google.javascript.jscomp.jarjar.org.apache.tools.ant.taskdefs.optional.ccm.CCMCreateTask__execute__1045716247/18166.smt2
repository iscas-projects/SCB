(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var991 0)
(declare-sort var1057 0)
(declare-sort var668 0)
(declare-sort var1223 0)
(declare-sort var2088 0)
(declare-sort var3121 0)
(declare-sort var1171 0)
(declare-sort var3938 0)
(declare-sort var2435 0)
(declare-sort var714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1057-init () var1057)
(declare-fun <init>/900561260 (var1057) void)
(declare-fun getCcmCommand/-1004219399 (var668) String)
(declare-fun cast-from-var991-to-var668 (var991) var668)
(declare-fun setExecutable/491986901 (var1057 String) void)
(declare-fun createArgument/-916843187 (var1057) var1223)
(declare-fun getCcmAction/-1383467840 (var668) String)
(declare-fun setValue/2115864135 (var1223 String) void)
(declare-fun checkOptions/1028029987 (var991 var1057) void)
(declare-fun run/397054286 (var668 var1057 var2088) Int)
(declare-fun cast-from-var991-to-var2088 (var991) var2088)
(declare-fun var3121_isFailure/-2053034463 (Int) Bool)
(declare-fun var1171-init () var1171)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3938) String)
(declare-fun cast-from-var1057-to-var3938 (var1057) var3938)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var714) var2435)
(declare-fun cast-from-var991-to-var714 (var991) var714)
(declare-fun <init>/-469549130 (var1171 String var2435) void)
(declare-const null-var991 var991)
(declare-const var2925 var991) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask 
(assert (not (= var2925 null-var991)))
(define-const var1186 var1057 var1057-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert true)
;(assert (<init>/900561260 var1186)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>() 

(declare-const var1186!1 var1057)
(assert true)
(define-const var2407 String (getCcmCommand/-1004219399 (cast-from-var991-to-var668 var2925))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: java.lang.String getCcmCommand()>() 
(assert true)
;(assert (setExecutable/491986901 var1186!1 var2407)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2) 

(declare-const var1186!2 var1057)
(declare-const var2407!1 String)
(assert true)
(define-const var1938 var1223 (createArgument/-916843187 var1186!2)) ; Statement: $r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert true)
(define-const var3007 String (getCcmAction/-1383467840 (cast-from-var991-to-var668 var2925))) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: java.lang.String getCcmAction()>() 
(assert true)
;(assert (setValue/2115864135 var1938 var3007)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3) 

(declare-const var1938!1 var1223)
(declare-const var3007!1 String)
(assert true)
;(assert (checkOptions/1028029987 var2925 var1186!2)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 

(declare-const var2925!1 var991)
(declare-const var1186!3 var1057)
(assert true)
(define-const var2141 Int (run/397054286 (cast-from-var991-to-var668 var2925!1) var1186!3 (cast-from-var991-to-var2088 var2925!1))) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler)>($r0, r1) 
(define-const var3334 Bool (var3121_isFailure/-2053034463 var2141)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= (ite var3334 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3796 var1171 var1171-init) ; Statement: $r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3857 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3857)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3857!1 String)
(assert (= var3857!1 ""))
(assert true)
(define-const var1296 String (append/672562846 var3857!1 "Failed executing: ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ") 
(declare-const var3857!2 String)
(assert (= var3857!2 (str.++ var3857!1 "Failed executing: ")))
(assert true)
(define-const var783 String (append/-1031950772 var1296 (cast-from-var1057-to-var3938 var1186!3))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var1296!1 String)
(assert (str.prefixof var1296 var1296!1))
(assert true)
(define-const var1803 String (toString/-2075883882 var783)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var841 var2435 (getLocation/851674571 (cast-from-var991-to-var714 var2925!1))) ; Statement: $r21 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3796 var1803 var841)) ; Statement: specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r22, $r21) 

(declare-const var3796!1 var1171)
(declare-const var1803!1 String)
(declare-const var841!1 var2435)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1057-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), <init>/900561260=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), getCcmCommand/-1004219399=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), cast-from-var991-to-var668=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus), setExecutable/491986901=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, java.lang.String], void), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), getCcmAction/-1383467840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), checkOptions/1028029987=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), run/397054286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler], int), cast-from-var991-to-var2088=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler), var3121_isFailure/-2053034463=([int], boolean), var1171-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1057-to-var3938=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var991-to-var714=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var991=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask, var2925=r1, var1057=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var1186=$r0, var668=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, var2407=$r2, var1223=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var1938=$r4, var3007=$r3, var2088=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler, var2141=$i0, var3121=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var3334=$z0, var1171=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3796=$r17, var3857=$r18, var1296=$r19, var3938=java.lang.Object, var783=$r20, var1803=$r22, var2435=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var714=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var841=$r21}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask=var991, r1=var2925, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var1057, $r0=var1186, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus=var668, $r2=var2407, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var1223, $r4=var1938, $r3=var3007, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler=var2088, $i0=var2141, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var3121, $z0=var3334, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1171, $r17=var3796, $r18=var3857, $r19=var1296, java.lang.Object=var3938, $r20=var783, $r22=var1803, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2435, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var714, $r21=var841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: java.lang.String getCcmCommand()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2);	$r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: java.lang.String getCcmAction()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler)>($r0, r1);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>($i0);	if $z0 == 0 goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r22, $r21);	throw $r17
;block_num 2