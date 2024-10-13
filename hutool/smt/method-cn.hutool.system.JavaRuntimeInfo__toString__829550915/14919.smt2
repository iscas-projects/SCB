(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2530 0)
(declare-sort var898 0)
(declare-sort var411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1067631958 (var2530) String)
(declare-fun var898_append/1118218595 (String String var411) void)
(declare-fun cast-from-String-to-var411 (String) var411)
(declare-fun getVersion/-211547443 (var2530) String)
(declare-fun getHomeDir/915998903 (var2530) String)
(declare-fun getExtDirs/-717108738 (var2530) String)
(declare-fun getEndorsedDirs/-597726309 (var2530) String)
(declare-fun getClassPath/-2033940024 (var2530) String)
(declare-fun getClassVersion/86388949 (var2530) String)
(declare-fun getLibraryPath/1222327077 (var2530) String)
(declare-fun getProtocolPackages/1224827728 (var2530) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2530 var2530)
(declare-const var3595 var2530) ; Statement: r1 := @this: cn.hutool.system.JavaRuntimeInfo 
(assert (not (= var3595 null-var2530)))
(define-const var3684 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3684)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3684!1 String)
(assert (= var3684!1 ""))
(assert true)
(define-const var502 String (getName/-1067631958 var3595)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getName()>() 
;(assert (var898_append/1118218595 var3684!1 "Java Runtime Name:      " (cast-from-String-to-var411 var502))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Runtime Name:      ", $r2) 

(declare-const var3684!2 String)
(declare-const var85 String)
(declare-const var502!1 String)
(assert true)
(define-const var2788 String (getVersion/-211547443 var3595)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getVersion()>() 
;(assert (var898_append/1118218595 var3684!2 "Java Runtime Version:   " (cast-from-String-to-var411 var2788))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Runtime Version:   ", $r3) 

(declare-const var3684!3 String)
(declare-const var153 String)
(declare-const var2788!1 String)
(assert true)
(define-const var744 String (getHomeDir/915998903 var3595)) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getHomeDir()>() 
;(assert (var898_append/1118218595 var3684!3 "Java Home Dir:          " (cast-from-String-to-var411 var744))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Home Dir:          ", $r4) 

(declare-const var3684!4 String)
(declare-const var1286 String)
(declare-const var744!1 String)
(assert true)
(define-const var2359 String (getExtDirs/-717108738 var3595)) ; Statement: $r5 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getExtDirs()>() 
;(assert (var898_append/1118218595 var3684!4 "Java Extension Dirs:    " (cast-from-String-to-var411 var2359))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Extension Dirs:    ", $r5) 

(declare-const var3684!5 String)
(declare-const var1607 String)
(declare-const var2359!1 String)
(assert true)
(define-const var59 String (getEndorsedDirs/-597726309 var3595)) ; Statement: $r6 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getEndorsedDirs()>() 
;(assert (var898_append/1118218595 var3684!5 "Java Endorsed Dirs:     " (cast-from-String-to-var411 var59))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Endorsed Dirs:     ", $r6) 

(declare-const var3684!6 String)
(declare-const var429 String)
(declare-const var59!1 String)
(assert true)
(define-const var1120 String (getClassPath/-2033940024 var3595)) ; Statement: $r7 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getClassPath()>() 
;(assert (var898_append/1118218595 var3684!6 "Java Class Path:        " (cast-from-String-to-var411 var1120))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Class Path:        ", $r7) 

(declare-const var3684!7 String)
(declare-const var1716 String)
(declare-const var1120!1 String)
(assert true)
(define-const var868 String (getClassVersion/86388949 var3595)) ; Statement: $r8 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getClassVersion()>() 
;(assert (var898_append/1118218595 var3684!7 "Java Class Version:     " (cast-from-String-to-var411 var868))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Class Version:     ", $r8) 

(declare-const var3684!8 String)
(declare-const var1464 String)
(declare-const var868!1 String)
(assert true)
(define-const var1854 String (getLibraryPath/1222327077 var3595)) ; Statement: $r9 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getLibraryPath()>() 
;(assert (var898_append/1118218595 var3684!8 "Java Library Path:      " (cast-from-String-to-var411 var1854))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Library Path:      ", $r9) 

(declare-const var3684!9 String)
(declare-const var802 String)
(declare-const var1854!1 String)
(assert true)
(define-const var3918 String (getProtocolPackages/1224827728 var3595)) ; Statement: $r10 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getProtocolPackages()>() 
;(assert (var898_append/1118218595 var3684!9 "Java Protocol Packages: " (cast-from-String-to-var411 var3918))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Protocol Packages: ", $r10) 

(declare-const var3684!10 String)
(declare-const var3217 String)
(declare-const var3918!1 String)
(assert true)
(define-const var1928 String (toString/-2075883882 var3684!10)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1067631958=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), var898_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var411=([java.lang.String], java.lang.Object), getVersion/-211547443=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), getHomeDir/915998903=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), getExtDirs/-717108738=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), getEndorsedDirs/-597726309=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), getClassPath/-2033940024=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), getClassVersion/86388949=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), getLibraryPath/1222327077=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), getProtocolPackages/1224827728=([cn.hutool.system.JavaRuntimeInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2530=cn.hutool.system.JavaRuntimeInfo, var3595=r1, var3684=$r0, var502=$r2, var898=cn.hutool.system.SystemUtil, var411=java.lang.Object, var85="Java Runtime Name:      ", var2788=$r3, var153="Java Runtime Version:   ", var744=$r4, var1286="Java Home Dir:          ", var2359=$r5, var1607="Java Extension Dirs:    ", var59=$r6, var429="Java Endorsed Dirs:     ", var1120=$r7, var1716="Java Class Path:        ", var868=$r8, var1464="Java Class Version:     ", var1854=$r9, var802="Java Library Path:      ", var3918=$r10, var3217="Java Protocol Packages: ", var1928=$r11}
; {cn.hutool.system.JavaRuntimeInfo=var2530, r1=var3595, $r0=var3684, $r2=var502, cn.hutool.system.SystemUtil=var898, java.lang.Object=var411, "Java Runtime Name:      "=var85, $r3=var2788, "Java Runtime Version:   "=var153, $r4=var744, "Java Home Dir:          "=var1286, $r5=var2359, "Java Extension Dirs:    "=var1607, $r6=var59, "Java Endorsed Dirs:     "=var429, $r7=var1120, "Java Class Path:        "=var1716, $r8=var868, "Java Class Version:     "=var1464, $r9=var1854, "Java Library Path:      "=var802, $r10=var3918, "Java Protocol Packages: "=var3217, $r11=var1928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.JavaRuntimeInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getName()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Runtime Name:      ", $r2);	$r3 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getVersion()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Runtime Version:   ", $r3);	$r4 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getHomeDir()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Home Dir:          ", $r4);	$r5 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getExtDirs()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Extension Dirs:    ", $r5);	$r6 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getEndorsedDirs()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Endorsed Dirs:     ", $r6);	$r7 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getClassPath()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Class Path:        ", $r7);	$r8 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getClassVersion()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Class Version:     ", $r8);	$r9 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getLibraryPath()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Library Path:      ", $r9);	$r10 = virtualinvoke r1.<cn.hutool.system.JavaRuntimeInfo: java.lang.String getProtocolPackages()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Protocol Packages: ", $r10);	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1