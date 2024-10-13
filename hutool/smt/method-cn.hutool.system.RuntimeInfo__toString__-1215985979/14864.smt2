(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1091 0)
(declare-sort var2587 0)
(declare-sort var324 0)
(declare-sort var971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMaxMemory/387386393 (var1091) Int)
(declare-fun var2587_readableFileSize/-1213691184 (Int) String)
(declare-fun var324_append/1118218595 (String String var971) void)
(declare-fun cast-from-String-to-var971 (String) var971)
(declare-fun getTotalMemory/1780899321 (var1091) Int)
(declare-fun getFreeMemory/239989615 (var1091) Int)
(declare-fun getUsableMemory/1647709859 (var1091) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1091 var1091)
(declare-const var944 var1091) ; Statement: r1 := @this: cn.hutool.system.RuntimeInfo 
(assert (not (= var944 null-var1091)))
(define-const var943 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var943)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var943!1 String)
(assert (= var943!1 ""))
(assert true)
(define-const var841 Int (getMaxMemory/387386393 var944)) ; Statement: $l0 = virtualinvoke r1.<cn.hutool.system.RuntimeInfo: long getMaxMemory()>() 
(define-const var3925 String (var2587_readableFileSize/-1213691184 var841)) ; Statement: $r2 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String readableFileSize(long)>($l0) 
;(assert (var324_append/1118218595 var943!1 "Max Memory:    " (cast-from-String-to-var971 var3925))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Max Memory:    ", $r2) 

(declare-const var943!2 String)
(declare-const var1765 String)
(declare-const var3925!1 String)
(assert true)
(define-const var3073 Int (getTotalMemory/1780899321 var944)) ; Statement: $l1 = virtualinvoke r1.<cn.hutool.system.RuntimeInfo: long getTotalMemory()>() 
(define-const var1777 String (var2587_readableFileSize/-1213691184 var3073)) ; Statement: $r3 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String readableFileSize(long)>($l1) 
;(assert (var324_append/1118218595 var943!2 "Total Memory:     " (cast-from-String-to-var971 var1777))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Total Memory:     ", $r3) 

(declare-const var943!3 String)
(declare-const var382 String)
(declare-const var1777!1 String)
(assert true)
(define-const var1430 Int (getFreeMemory/239989615 var944)) ; Statement: $l2 = virtualinvoke r1.<cn.hutool.system.RuntimeInfo: long getFreeMemory()>() 
(define-const var2977 String (var2587_readableFileSize/-1213691184 var1430)) ; Statement: $r4 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String readableFileSize(long)>($l2) 
;(assert (var324_append/1118218595 var943!3 "Free Memory:     " (cast-from-String-to-var971 var2977))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Free Memory:     ", $r4) 

(declare-const var943!4 String)
(declare-const var2982 String)
(declare-const var2977!1 String)
(assert true)
(define-const var3148 Int (getUsableMemory/1647709859 var944)) ; Statement: $l3 = virtualinvoke r1.<cn.hutool.system.RuntimeInfo: long getUsableMemory()>() 
(define-const var759 String (var2587_readableFileSize/-1213691184 var3148)) ; Statement: $r5 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String readableFileSize(long)>($l3) 
;(assert (var324_append/1118218595 var943!4 "Usable Memory:     " (cast-from-String-to-var971 var759))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Usable Memory:     ", $r5) 

(declare-const var943!5 String)
(declare-const var3582 String)
(declare-const var759!1 String)
(assert true)
(define-const var3698 String (toString/-2075883882 var943!5)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMaxMemory/387386393=([cn.hutool.system.RuntimeInfo], long), var2587_readableFileSize/-1213691184=([long], java.lang.String), var324_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var971=([java.lang.String], java.lang.Object), getTotalMemory/1780899321=([cn.hutool.system.RuntimeInfo], long), getFreeMemory/239989615=([cn.hutool.system.RuntimeInfo], long), getUsableMemory/1647709859=([cn.hutool.system.RuntimeInfo], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1091=cn.hutool.system.RuntimeInfo, var944=r1, var943=$r0, var841=$l0, var2587=cn.hutool.core.io.FileUtil, var3925=$r2, var324=cn.hutool.system.SystemUtil, var971=java.lang.Object, var1765="Max Memory:    ", var3073=$l1, var1777=$r3, var382="Total Memory:     ", var1430=$l2, var2977=$r4, var2982="Free Memory:     ", var3148=$l3, var759=$r5, var3582="Usable Memory:     ", var3698=$r6}
; {cn.hutool.system.RuntimeInfo=var1091, r1=var944, $r0=var943, $l0=var841, cn.hutool.core.io.FileUtil=var2587, $r2=var3925, cn.hutool.system.SystemUtil=var324, java.lang.Object=var971, "Max Memory:    "=var1765, $l1=var3073, $r3=var1777, "Total Memory:     "=var382, $l2=var1430, $r4=var2977, "Free Memory:     "=var2982, $l3=var3148, $r5=var759, "Usable Memory:     "=var3582, $r6=var3698}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.RuntimeInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$l0 = virtualinvoke r1.<cn.hutool.system.RuntimeInfo: long getMaxMemory()>();	$r2 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String readableFileSize(long)>($l0);	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Max Memory:    ", $r2);	$l1 = virtualinvoke r1.<cn.hutool.system.RuntimeInfo: long getTotalMemory()>();	$r3 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String readableFileSize(long)>($l1);	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Total Memory:     ", $r3);	$l2 = virtualinvoke r1.<cn.hutool.system.RuntimeInfo: long getFreeMemory()>();	$r4 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String readableFileSize(long)>($l2);	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Free Memory:     ", $r4);	$l3 = virtualinvoke r1.<cn.hutool.system.RuntimeInfo: long getUsableMemory()>();	$r5 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String readableFileSize(long)>($l3);	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Usable Memory:     ", $r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1