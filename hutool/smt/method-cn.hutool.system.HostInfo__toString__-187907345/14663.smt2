(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3991 0)
(declare-sort var1080 0)
(declare-sort var3176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1254851454 (var3991) String)
(declare-fun var1080_append/1118218595 (String String var3176) void)
(declare-fun cast-from-String-to-var3176 (String) var3176)
(declare-fun getAddress/-1019806499 (var3991) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3991 var3991)
(declare-const var3610 var3991) ; Statement: r1 := @this: cn.hutool.system.HostInfo 
(assert (not (= var3610 null-var3991)))
(define-const var3297 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3297)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3297!1 String)
(assert (= var3297!1 ""))
(assert true)
(define-const var940 String (getName/1254851454 var3610)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.system.HostInfo: java.lang.String getName()>() 
;(assert (var1080_append/1118218595 var3297!1 "Host Name:    " (cast-from-String-to-var3176 var940))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Host Name:    ", $r2) 

(declare-const var3297!2 String)
(declare-const var202 String)
(declare-const var940!1 String)
(assert true)
(define-const var1574 String (getAddress/-1019806499 var3610)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.system.HostInfo: java.lang.String getAddress()>() 
;(assert (var1080_append/1118218595 var3297!2 "Host Address: " (cast-from-String-to-var3176 var1574))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Host Address: ", $r3) 

(declare-const var3297!3 String)
(declare-const var387 String)
(declare-const var1574!1 String)
(assert true)
(define-const var1255 String (toString/-2075883882 var3297!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1254851454=([cn.hutool.system.HostInfo], java.lang.String), var1080_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var3176=([java.lang.String], java.lang.Object), getAddress/-1019806499=([cn.hutool.system.HostInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3991=cn.hutool.system.HostInfo, var3610=r1, var3297=$r0, var940=$r2, var1080=cn.hutool.system.SystemUtil, var3176=java.lang.Object, var202="Host Name:    ", var1574=$r3, var387="Host Address: ", var1255=$r4}
; {cn.hutool.system.HostInfo=var3991, r1=var3610, $r0=var3297, $r2=var940, cn.hutool.system.SystemUtil=var1080, java.lang.Object=var3176, "Host Name:    "=var202, $r3=var1574, "Host Address: "=var387, $r4=var1255}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.HostInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.system.HostInfo: java.lang.String getName()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Host Name:    ", $r2);	$r3 = virtualinvoke r1.<cn.hutool.system.HostInfo: java.lang.String getAddress()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "Host Address: ", $r3);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1