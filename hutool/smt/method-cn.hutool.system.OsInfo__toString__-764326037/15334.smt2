(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2531 0)
(declare-sort var3581 0)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getArch/-1926542889 (var2531) String)
(declare-fun var3581_append/1118218595 (String String var3422) void)
(declare-fun cast-from-String-to-var3422 (String) var3422)
(declare-fun getName/543520642 (var2531) String)
(declare-fun getVersion/1376026357 (var2531) String)
(declare-fun getFileSeparator/-1056539292 (var2531) String)
(declare-fun getLineSeparator/-835894308 (var2531) String)
(declare-fun getPathSeparator/-1672137075 (var2531) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2531 var2531)
(declare-const var1830 var2531) ; Statement: r1 := @this: cn.hutool.system.OsInfo 
(assert (not (= var1830 null-var2531)))
(define-const var3594 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3594)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3594!1 String)
(assert (= var3594!1 ""))
(assert true)
(define-const var3644 String (getArch/-1926542889 var1830)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getArch()>() 
;(assert (var3581_append/1118218595 var3594!1 "OS Arch:        " (cast-from-String-to-var3422 var3644))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "OS Arch:        ", $r2) 

(declare-const var3594!2 String)
(declare-const var2227 String)
(declare-const var3644!1 String)
(assert true)
(define-const var199 String (getName/543520642 var1830)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getName()>() 
;(assert (var3581_append/1118218595 var3594!2 "OS Name:        " (cast-from-String-to-var3422 var199))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "OS Name:        ", $r3) 

(declare-const var3594!3 String)
(declare-const var762 String)
(declare-const var199!1 String)
(assert true)
(define-const var390 String (getVersion/1376026357 var1830)) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getVersion()>() 
;(assert (var3581_append/1118218595 var3594!3 "OS Version:     " (cast-from-String-to-var3422 var390))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "OS Version:     ", $r4) 

(declare-const var3594!4 String)
(declare-const var2277 String)
(declare-const var390!1 String)
(assert true)
(define-const var2851 String (getFileSeparator/-1056539292 var1830)) ; Statement: $r5 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getFileSeparator()>() 
;(assert (var3581_append/1118218595 var3594!4 "File Separator: " (cast-from-String-to-var3422 var2851))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "File Separator: ", $r5) 

(declare-const var3594!5 String)
(declare-const var1810 String)
(declare-const var2851!1 String)
(assert true)
(define-const var1571 String (getLineSeparator/-835894308 var1830)) ; Statement: $r6 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getLineSeparator()>() 
;(assert (var3581_append/1118218595 var3594!5 "Line Separator: " (cast-from-String-to-var3422 var1571))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Line Separator: ", $r6) 

(declare-const var3594!6 String)
(declare-const var2646 String)
(declare-const var1571!1 String)
(assert true)
(define-const var2728 String (getPathSeparator/-1672137075 var1830)) ; Statement: $r7 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getPathSeparator()>() 
;(assert (var3581_append/1118218595 var3594!6 "Path Separator: " (cast-from-String-to-var3422 var2728))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Path Separator: ", $r7) 

(declare-const var3594!7 String)
(declare-const var2664 String)
(declare-const var2728!1 String)
(assert true)
(define-const var3210 String (toString/-2075883882 var3594!7)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getArch/-1926542889=([cn.hutool.system.OsInfo], java.lang.String), var3581_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var3422=([java.lang.String], java.lang.Object), getName/543520642=([cn.hutool.system.OsInfo], java.lang.String), getVersion/1376026357=([cn.hutool.system.OsInfo], java.lang.String), getFileSeparator/-1056539292=([cn.hutool.system.OsInfo], java.lang.String), getLineSeparator/-835894308=([cn.hutool.system.OsInfo], java.lang.String), getPathSeparator/-1672137075=([cn.hutool.system.OsInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2531=cn.hutool.system.OsInfo, var1830=r1, var3594=$r0, var3644=$r2, var3581=cn.hutool.system.SystemUtil, var3422=java.lang.Object, var2227="OS Arch:        ", var199=$r3, var762="OS Name:        ", var390=$r4, var2277="OS Version:     ", var2851=$r5, var1810="File Separator: ", var1571=$r6, var2646="Line Separator: ", var2728=$r7, var2664="Path Separator: ", var3210=$r8}
; {cn.hutool.system.OsInfo=var2531, r1=var1830, $r0=var3594, $r2=var3644, cn.hutool.system.SystemUtil=var3581, java.lang.Object=var3422, "OS Arch:        "=var2227, $r3=var199, "OS Name:        "=var762, $r4=var390, "OS Version:     "=var2277, $r5=var2851, "File Separator: "=var1810, $r6=var1571, "Line Separator: "=var2646, $r7=var2728, "Path Separator: "=var2664, $r8=var3210}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.OsInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getArch()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "OS Arch:        ", $r2);	$r3 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getName()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "OS Name:        ", $r3);	$r4 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getVersion()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "OS Version:     ", $r4);	$r5 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getFileSeparator()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "File Separator: ", $r5);	$r6 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getLineSeparator()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Line Separator: ", $r6);	$r7 = virtualinvoke r1.<cn.hutool.system.OsInfo: java.lang.String getPathSeparator()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Path Separator: ", $r7);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1