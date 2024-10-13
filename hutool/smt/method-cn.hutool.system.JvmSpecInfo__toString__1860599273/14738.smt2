(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort var2258 0)
(declare-sort var2629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/628195652 (var1830) String)
(declare-fun var2258_append/1118218595 (String String var2629) void)
(declare-fun cast-from-String-to-var2629 (String) var2629)
(declare-fun getVersion/-1511520781 (var1830) String)
(declare-fun getVendor/133772519 (var1830) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1830 var1830)
(declare-const var3588 var1830) ; Statement: r1 := @this: cn.hutool.system.JvmSpecInfo 
(assert (not (= var3588 null-var1830)))
(define-const var2968 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2968)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2968!1 String)
(assert (= var2968!1 ""))
(assert true)
(define-const var2456 String (getName/628195652 var3588)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.system.JvmSpecInfo: java.lang.String getName()>() 
;(assert (var2258_append/1118218595 var2968!1 "JavaVM Spec. Name:    " (cast-from-String-to-var2629 var2456))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Spec. Name:    ", $r2) 

(declare-const var2968!2 String)
(declare-const var3910 String)
(declare-const var2456!1 String)
(assert true)
(define-const var1562 String (getVersion/-1511520781 var3588)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.system.JvmSpecInfo: java.lang.String getVersion()>() 
;(assert (var2258_append/1118218595 var2968!2 "JavaVM Spec. Version: " (cast-from-String-to-var2629 var1562))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Spec. Version: ", $r3) 

(declare-const var2968!3 String)
(declare-const var2710 String)
(declare-const var1562!1 String)
(assert true)
(define-const var1802 String (getVendor/133772519 var3588)) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.system.JvmSpecInfo: java.lang.String getVendor()>() 
;(assert (var2258_append/1118218595 var2968!3 "JavaVM Spec. Vendor:  " (cast-from-String-to-var2629 var1802))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Spec. Vendor:  ", $r4) 

(declare-const var2968!4 String)
(declare-const var1819 String)
(declare-const var1802!1 String)
(assert true)
(define-const var264 String (toString/-2075883882 var2968!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/628195652=([cn.hutool.system.JvmSpecInfo], java.lang.String), var2258_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var2629=([java.lang.String], java.lang.Object), getVersion/-1511520781=([cn.hutool.system.JvmSpecInfo], java.lang.String), getVendor/133772519=([cn.hutool.system.JvmSpecInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1830=cn.hutool.system.JvmSpecInfo, var3588=r1, var2968=$r0, var2456=$r2, var2258=cn.hutool.system.SystemUtil, var2629=java.lang.Object, var3910="JavaVM Spec. Name:    ", var1562=$r3, var2710="JavaVM Spec. Version: ", var1802=$r4, var1819="JavaVM Spec. Vendor:  ", var264=$r5}
; {cn.hutool.system.JvmSpecInfo=var1830, r1=var3588, $r0=var2968, $r2=var2456, cn.hutool.system.SystemUtil=var2258, java.lang.Object=var2629, "JavaVM Spec. Name:    "=var3910, $r3=var1562, "JavaVM Spec. Version: "=var2710, $r4=var1802, "JavaVM Spec. Vendor:  "=var1819, $r5=var264}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.JvmSpecInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.system.JvmSpecInfo: java.lang.String getName()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Spec. Name:    ", $r2);	$r3 = virtualinvoke r1.<cn.hutool.system.JvmSpecInfo: java.lang.String getVersion()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Spec. Version: ", $r3);	$r4 = virtualinvoke r1.<cn.hutool.system.JvmSpecInfo: java.lang.String getVendor()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Spec. Vendor:  ", $r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1