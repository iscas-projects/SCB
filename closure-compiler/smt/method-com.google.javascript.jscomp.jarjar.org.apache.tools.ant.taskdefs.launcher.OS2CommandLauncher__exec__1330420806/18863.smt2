(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var734 0)
(declare-sort var2430 0)
(declare-sort var2170 0)
(declare-sort var2386 0)
(declare-sort var1143 0)
(declare-sort var264 0)
(declare-sort var2953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var2170) String)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-String-init () (Array Int String))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var2386_arraycopy/-325913181 (var1143 Int var1143 Int Int) void)
(declare-fun cast-from-__Array__Int__String__-to-var1143 ((Array Int String)) var1143)
(declare-fun exec/-89185246 (var2953 var2430 (Array Int String) (Array Int String)) var264)
(declare-fun cast-from-var734-to-var2953 (var734) var2953)
(declare-const null-var734 var734)
(declare-const null-var2430 var2430)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2170 var2170)
(declare-const var2416 var734) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.OS2CommandLauncher 
(assert (not (= var2416 null-var734)))
(declare-const var2596 var2430) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2596 null-var2430)))
(declare-const var2260 (Array Int String)) ; Statement: r1 := @parameter1: java.lang.String[] 
(assert (not (= var2260 null-__Array__Int__String__)))
(declare-const var3536 (Array Int String)) ; Statement: r6 := @parameter2: java.lang.String[] 
(assert (not (= var3536 null-__Array__Int__String__)))
(declare-const var1403 var2170) ; Statement: r0 := @parameter3: java.io.File 
(assert (not (= var1403 null-var2170)))
(define-const var2807 var2170 var1403) ; Statement: r11 = r0 
 ; Statement: if r0 != null goto $r9 = virtualinvoke r11.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert (not (= var1403 null-var2170))) ; Cond: r0 != null 
(assert true)
(define-const var1437 String (getAbsolutePath/-802773300 var2807)) ; Statement: $r9 = virtualinvoke r11.<java.io.File: java.lang.String getAbsolutePath()>() 
(define-const var3469 Int (getLength-Arr-String-1 var2260)) ; Statement: $i0 = lengthof r1 
(define-const var2069 Int (+ var3469 7)) ; Statement: $i1 = $i0 + 7 
(define-const var665 (Array Int String) arr-String-init) ; Statement: $r10 = newarray (java.lang.String)[$i1] 
(declare-const var665!1 (Array Int String))
(assert (not (= var665!1 null-__Array__Int__String__)))
(assert (= (select var665!1 0) "cmd")) ; Statement: $r10[0] = "cmd" 
(declare-const var665!2 (Array Int String))
(assert (not (= var665!2 null-__Array__Int__String__)))
(assert (= (select var665!2 1) "/c")) ; Statement: $r10[1] = "/c" 
(assert (and true (and (>= 0 0) (>= (str.len var1437) 2) (>= 2 0))))
(define-const var3331 String (substring/-1240304868 var1437 0 2)) ; Statement: $r2 = virtualinvoke $r9.<java.lang.String: java.lang.String substring(int,int)>(0, 2) 
(declare-const var665!3 (Array Int String))
(assert (not (= var665!3 null-__Array__Int__String__)))
(assert (= (select var665!3 2) var3331)) ; Statement: $r10[2] = $r2 
(declare-const var665!4 (Array Int String))
(assert (not (= var665!4 null-__Array__Int__String__)))
(assert (= (select var665!4 3) "&&")) ; Statement: $r10[3] = "&&" 
(declare-const var665!5 (Array Int String))
(assert (not (= var665!5 null-__Array__Int__String__)))
(assert (= (select var665!5 4) "cd")) ; Statement: $r10[4] = "cd" 
(assert (and true (and (>= 2 0) (>= (str.len var1437) 2))))
(define-const var3643 String (substring/850833817 var1437 2)) ; Statement: $r3 = virtualinvoke $r9.<java.lang.String: java.lang.String substring(int)>(2) 
(declare-const var665!6 (Array Int String))
(assert (not (= var665!6 null-__Array__Int__String__)))
(assert (= (select var665!6 5) var3643)) ; Statement: $r10[5] = $r3 
(declare-const var665!7 (Array Int String))
(assert (not (= var665!7 null-__Array__Int__String__)))
(assert (= (select var665!7 6) "&&")) ; Statement: $r10[6] = "&&" 
(define-const var66 Int (getLength-Arr-String-1 var2260)) ; Statement: $i2 = lengthof r1 
;(assert (var2386_arraycopy/-325913181 (cast-from-__Array__Int__String__-to-var1143 var2260) 0 (cast-from-__Array__Int__String__-to-var1143 var665!7) 7 var66)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r1, 0, $r10, 7, $i2) 

(declare-const var2260!1 (Array Int String))
(declare-const var3496 Int)
(declare-const var665!8 (Array Int String))
(declare-const var3811 Int)
(declare-const var66!1 Int)
(assert true)
(define-const var2255 var264 (exec/-89185246 (cast-from-var734-to-var2953 var2416) var2596 var665!8 var3536)) ; Statement: $r7 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.OS2CommandLauncher: java.lang.Process exec(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String[],java.lang.String[])>(r5, $r10, r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), getLength-Arr-String-1=([java.lang.String[]], int), arr-String-init=([], java.lang.String[]), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var2386_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__String__-to-var1143=([java.lang.String[]], java.lang.Object), exec/-89185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.CommandLauncherProxy, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String[], java.lang.String[]], java.lang.Process), cast-from-var734-to-var2953=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.OS2CommandLauncher], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.CommandLauncherProxy)}
; {var734=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.OS2CommandLauncher, var2416=r4, var2430=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2596=r5, var2260=r1, var3536=r6, var2170=java.io.File, var1403=r0, var2807=r11, var1437=$r9, var3469=$i0, var2069=$i1, var665=$r10, var3331=$r2, var3643=$r3, var66=$i2, var2386=java.lang.System, var1143=java.lang.Object, var3496=0, var3811=7, var264=java.lang.Process, var2953=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.CommandLauncherProxy, var2255=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.OS2CommandLauncher=var734, r4=var2416, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2430, r5=var2596, r1=var2260, r6=var3536, java.io.File=var2170, r0=var1403, r11=var2807, $r9=var1437, $i0=var3469, $i1=var2069, $r10=var665, $r2=var3331, $r3=var3643, $i2=var66, java.lang.System=var2386, java.lang.Object=var1143, 0=var3496, 7=var3811, java.lang.Process=var264, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.CommandLauncherProxy=var2953, $r7=var2255}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.OS2CommandLauncher;	r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.String[];	r6 := @parameter2: java.lang.String[];	r0 := @parameter3: java.io.File;	r11 = r0;	if r0 != null goto $r9 = virtualinvoke r11.<java.io.File: java.lang.String getAbsolutePath()>();	$r9 = virtualinvoke r11.<java.io.File: java.lang.String getAbsolutePath()>();	$i0 = lengthof r1;	$i1 = $i0 + 7;	$r10 = newarray (java.lang.String)[$i1];	$r10[0] = "cmd";	$r10[1] = "/c";	$r2 = virtualinvoke $r9.<java.lang.String: java.lang.String substring(int,int)>(0, 2);	$r10[2] = $r2;	$r10[3] = "&&";	$r10[4] = "cd";	$r3 = virtualinvoke $r9.<java.lang.String: java.lang.String substring(int)>(2);	$r10[5] = $r3;	$r10[6] = "&&";	$i2 = lengthof r1;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r1, 0, $r10, 7, $i2);	$r7 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.launcher.OS2CommandLauncher: java.lang.Process exec(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String[],java.lang.String[])>(r5, $r10, r6);	return $r7
;block_num 2