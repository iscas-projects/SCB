(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3712 0)
(declare-sort var246 0)
(declare-sort var2887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getVersion/-1442668301 (var3712) String)
(declare-fun var246_append/1118218595 (String String var2887) void)
(declare-fun cast-from-String-to-var2887 (String) var2887)
(declare-fun getVendor/413088231 (var3712) String)
(declare-fun getVendorURL/-1738147612 (var3712) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3712 var3712)
(declare-const var1347 var3712) ; Statement: r1 := @this: cn.hutool.system.JavaInfo 
(assert (not (= var1347 null-var3712)))
(define-const var635 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var635)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var635!1 String)
(assert (= var635!1 ""))
(assert true)
(define-const var1708 String (getVersion/-1442668301 var1347)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.system.JavaInfo: java.lang.String getVersion()>() 
;(assert (var246_append/1118218595 var635!1 "Java Version:    " (cast-from-String-to-var2887 var1708))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Version:    ", $r2) 

(declare-const var635!2 String)
(declare-const var46 String)
(declare-const var1708!1 String)
(assert true)
(define-const var2200 String (getVendor/413088231 var1347)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.system.JavaInfo: java.lang.String getVendor()>() 
;(assert (var246_append/1118218595 var635!2 "Java Vendor:     " (cast-from-String-to-var2887 var2200))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Vendor:     ", $r3) 

(declare-const var635!3 String)
(declare-const var1574 String)
(declare-const var2200!1 String)
(assert true)
(define-const var2439 String (getVendorURL/-1738147612 var1347)) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.system.JavaInfo: java.lang.String getVendorURL()>() 
;(assert (var246_append/1118218595 var635!3 "Java Vendor URL: " (cast-from-String-to-var2887 var2439))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Vendor URL: ", $r4) 

(declare-const var635!4 String)
(declare-const var2954 String)
(declare-const var2439!1 String)
(assert true)
(define-const var3541 String (toString/-2075883882 var635!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getVersion/-1442668301=([cn.hutool.system.JavaInfo], java.lang.String), var246_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var2887=([java.lang.String], java.lang.Object), getVendor/413088231=([cn.hutool.system.JavaInfo], java.lang.String), getVendorURL/-1738147612=([cn.hutool.system.JavaInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3712=cn.hutool.system.JavaInfo, var1347=r1, var635=$r0, var1708=$r2, var246=cn.hutool.system.SystemUtil, var2887=java.lang.Object, var46="Java Version:    ", var2200=$r3, var1574="Java Vendor:     ", var2439=$r4, var2954="Java Vendor URL: ", var3541=$r5}
; {cn.hutool.system.JavaInfo=var3712, r1=var1347, $r0=var635, $r2=var1708, cn.hutool.system.SystemUtil=var246, java.lang.Object=var2887, "Java Version:    "=var46, $r3=var2200, "Java Vendor:     "=var1574, $r4=var2439, "Java Vendor URL: "=var2954, $r5=var3541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.JavaInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.system.JavaInfo: java.lang.String getVersion()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Version:    ", $r2);	$r3 = virtualinvoke r1.<cn.hutool.system.JavaInfo: java.lang.String getVendor()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Vendor:     ", $r3);	$r4 = virtualinvoke r1.<cn.hutool.system.JavaInfo: java.lang.String getVendorURL()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Vendor URL: ", $r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1