(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1451 0)
(declare-sort var212 0)
(declare-sort var864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-2053396151 (var1451) String)
(declare-fun var212_append/1118218595 (String String var864) void)
(declare-fun cast-from-String-to-var864 (String) var864)
(declare-fun getVersion/1873748942 (var1451) String)
(declare-fun getVendor/104427436 (var1451) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1451 var1451)
(declare-const var3091 var1451) ; Statement: r1 := @this: cn.hutool.system.JavaSpecInfo 
(assert (not (= var3091 null-var1451)))
(define-const var3027 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3027)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3027!1 String)
(assert (= var3027!1 ""))
(assert true)
(define-const var1961 String (getName/-2053396151 var3091)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.system.JavaSpecInfo: java.lang.String getName()>() 
;(assert (var212_append/1118218595 var3027!1 "Java Spec. Name:    " (cast-from-String-to-var864 var1961))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Spec. Name:    ", $r2) 

(declare-const var3027!2 String)
(declare-const var3642 String)
(declare-const var1961!1 String)
(assert true)
(define-const var252 String (getVersion/1873748942 var3091)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.system.JavaSpecInfo: java.lang.String getVersion()>() 
;(assert (var212_append/1118218595 var3027!2 "Java Spec. Version: " (cast-from-String-to-var864 var252))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Spec. Version: ", $r3) 

(declare-const var3027!3 String)
(declare-const var1426 String)
(declare-const var252!1 String)
(assert true)
(define-const var388 String (getVendor/104427436 var3091)) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.system.JavaSpecInfo: java.lang.String getVendor()>() 
;(assert (var212_append/1118218595 var3027!3 "Java Spec. Vendor:  " (cast-from-String-to-var864 var388))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Spec. Vendor:  ", $r4) 

(declare-const var3027!4 String)
(declare-const var1462 String)
(declare-const var388!1 String)
(assert true)
(define-const var1721 String (toString/-2075883882 var3027!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-2053396151=([cn.hutool.system.JavaSpecInfo], java.lang.String), var212_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var864=([java.lang.String], java.lang.Object), getVersion/1873748942=([cn.hutool.system.JavaSpecInfo], java.lang.String), getVendor/104427436=([cn.hutool.system.JavaSpecInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1451=cn.hutool.system.JavaSpecInfo, var3091=r1, var3027=$r0, var1961=$r2, var212=cn.hutool.system.SystemUtil, var864=java.lang.Object, var3642="Java Spec. Name:    ", var252=$r3, var1426="Java Spec. Version: ", var388=$r4, var1462="Java Spec. Vendor:  ", var1721=$r5}
; {cn.hutool.system.JavaSpecInfo=var1451, r1=var3091, $r0=var3027, $r2=var1961, cn.hutool.system.SystemUtil=var212, java.lang.Object=var864, "Java Spec. Name:    "=var3642, $r3=var252, "Java Spec. Version: "=var1426, $r4=var388, "Java Spec. Vendor:  "=var1462, $r5=var1721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.JavaSpecInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.system.JavaSpecInfo: java.lang.String getName()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Spec. Name:    ", $r2);	$r3 = virtualinvoke r1.<cn.hutool.system.JavaSpecInfo: java.lang.String getVersion()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Spec. Version: ", $r3);	$r4 = virtualinvoke r1.<cn.hutool.system.JavaSpecInfo: java.lang.String getVendor()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Java Spec. Vendor:  ", $r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1