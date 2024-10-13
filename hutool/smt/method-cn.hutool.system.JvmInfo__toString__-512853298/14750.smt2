(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1825 0)
(declare-sort var3243 0)
(declare-sort var490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1798558655 (var1825) String)
(declare-fun var3243_append/1118218595 (String String var490) void)
(declare-fun cast-from-String-to-var490 (String) var490)
(declare-fun getVersion/-1771807336 (var1825) String)
(declare-fun getVendor/-428813150 (var1825) String)
(declare-fun getInfo/2022019772 (var1825) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1825 var1825)
(declare-const var2683 var1825) ; Statement: r1 := @this: cn.hutool.system.JvmInfo 
(assert (not (= var2683 null-var1825)))
(define-const var2975 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2975)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2975!1 String)
(assert (= var2975!1 ""))
(assert true)
(define-const var104 String (getName/1798558655 var2683)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.system.JvmInfo: java.lang.String getName()>() 
;(assert (var3243_append/1118218595 var2975!1 "JavaVM Name:    " (cast-from-String-to-var490 var104))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Name:    ", $r2) 

(declare-const var2975!2 String)
(declare-const var3291 String)
(declare-const var104!1 String)
(assert true)
(define-const var2264 String (getVersion/-1771807336 var2683)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.system.JvmInfo: java.lang.String getVersion()>() 
;(assert (var3243_append/1118218595 var2975!2 "JavaVM Version: " (cast-from-String-to-var490 var2264))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Version: ", $r3) 

(declare-const var2975!3 String)
(declare-const var1816 String)
(declare-const var2264!1 String)
(assert true)
(define-const var1008 String (getVendor/-428813150 var2683)) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.system.JvmInfo: java.lang.String getVendor()>() 
;(assert (var3243_append/1118218595 var2975!3 "JavaVM Vendor:  " (cast-from-String-to-var490 var1008))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Vendor:  ", $r4) 

(declare-const var2975!4 String)
(declare-const var918 String)
(declare-const var1008!1 String)
(assert true)
(define-const var2543 String (getInfo/2022019772 var2683)) ; Statement: $r5 = virtualinvoke r1.<cn.hutool.system.JvmInfo: java.lang.String getInfo()>() 
;(assert (var3243_append/1118218595 var2975!4 "JavaVM Info:    " (cast-from-String-to-var490 var2543))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Info:    ", $r5) 

(declare-const var2975!5 String)
(declare-const var1071 String)
(declare-const var2543!1 String)
(assert true)
(define-const var1495 String (toString/-2075883882 var2975!5)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1798558655=([cn.hutool.system.JvmInfo], java.lang.String), var3243_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var490=([java.lang.String], java.lang.Object), getVersion/-1771807336=([cn.hutool.system.JvmInfo], java.lang.String), getVendor/-428813150=([cn.hutool.system.JvmInfo], java.lang.String), getInfo/2022019772=([cn.hutool.system.JvmInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1825=cn.hutool.system.JvmInfo, var2683=r1, var2975=$r0, var104=$r2, var3243=cn.hutool.system.SystemUtil, var490=java.lang.Object, var3291="JavaVM Name:    ", var2264=$r3, var1816="JavaVM Version: ", var1008=$r4, var918="JavaVM Vendor:  ", var2543=$r5, var1071="JavaVM Info:    ", var1495=$r6}
; {cn.hutool.system.JvmInfo=var1825, r1=var2683, $r0=var2975, $r2=var104, cn.hutool.system.SystemUtil=var3243, java.lang.Object=var490, "JavaVM Name:    "=var3291, $r3=var2264, "JavaVM Version: "=var1816, $r4=var1008, "JavaVM Vendor:  "=var918, $r5=var2543, "JavaVM Info:    "=var1071, $r6=var1495}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.JvmInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.system.JvmInfo: java.lang.String getName()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Name:    ", $r2);	$r3 = virtualinvoke r1.<cn.hutool.system.JvmInfo: java.lang.String getVersion()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Version: ", $r3);	$r4 = virtualinvoke r1.<cn.hutool.system.JvmInfo: java.lang.String getVendor()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Vendor:  ", $r4);	$r5 = virtualinvoke r1.<cn.hutool.system.JvmInfo: java.lang.String getInfo()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "JavaVM Info:    ", $r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1