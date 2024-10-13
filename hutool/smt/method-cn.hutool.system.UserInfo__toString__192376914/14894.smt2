(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var696 0)
(declare-sort var1841 0)
(declare-sort var2597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/20192699 (var696) String)
(declare-fun var1841_append/1118218595 (String String var2597) void)
(declare-fun cast-from-String-to-var2597 (String) var2597)
(declare-fun getHomeDir/-1522860026 (var696) String)
(declare-fun getCurrentDir/-1541460846 (var696) String)
(declare-fun getTempDir/-1813740741 (var696) String)
(declare-fun getLanguage/1873127758 (var696) String)
(declare-fun getCountry/1297606302 (var696) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var696 var696)
(declare-const var1437 var696) ; Statement: r1 := @this: cn.hutool.system.UserInfo 
(assert (not (= var1437 null-var696)))
(define-const var1855 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1855)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1855!1 String)
(assert (= var1855!1 ""))
(assert true)
(define-const var3796 String (getName/20192699 var1437)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getName()>() 
;(assert (var1841_append/1118218595 var1855!1 "User Name:        " (cast-from-String-to-var2597 var3796))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Name:        ", $r2) 

(declare-const var1855!2 String)
(declare-const var3988 String)
(declare-const var3796!1 String)
(assert true)
(define-const var2630 String (getHomeDir/-1522860026 var1437)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getHomeDir()>() 
;(assert (var1841_append/1118218595 var1855!2 "User Home Dir:    " (cast-from-String-to-var2597 var2630))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Home Dir:    ", $r3) 

(declare-const var1855!3 String)
(declare-const var2403 String)
(declare-const var2630!1 String)
(assert true)
(define-const var2804 String (getCurrentDir/-1541460846 var1437)) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getCurrentDir()>() 
;(assert (var1841_append/1118218595 var1855!3 "User Current Dir: " (cast-from-String-to-var2597 var2804))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Current Dir: ", $r4) 

(declare-const var1855!4 String)
(declare-const var3070 String)
(declare-const var2804!1 String)
(assert true)
(define-const var711 String (getTempDir/-1813740741 var1437)) ; Statement: $r5 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getTempDir()>() 
;(assert (var1841_append/1118218595 var1855!4 "User Temp Dir:    " (cast-from-String-to-var2597 var711))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Temp Dir:    ", $r5) 

(declare-const var1855!5 String)
(declare-const var29 String)
(declare-const var711!1 String)
(assert true)
(define-const var3781 String (getLanguage/1873127758 var1437)) ; Statement: $r6 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getLanguage()>() 
;(assert (var1841_append/1118218595 var1855!5 "User Language:    " (cast-from-String-to-var2597 var3781))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Language:    ", $r6) 

(declare-const var1855!6 String)
(declare-const var798 String)
(declare-const var3781!1 String)
(assert true)
(define-const var3658 String (getCountry/1297606302 var1437)) ; Statement: $r7 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getCountry()>() 
;(assert (var1841_append/1118218595 var1855!6 "User Country:     " (cast-from-String-to-var2597 var3658))) ; Statement: staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Country:     ", $r7) 

(declare-const var1855!7 String)
(declare-const var505 String)
(declare-const var3658!1 String)
(assert true)
(define-const var1193 String (toString/-2075883882 var1855!7)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/20192699=([cn.hutool.system.UserInfo], java.lang.String), var1841_append/1118218595=([java.lang.StringBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var2597=([java.lang.String], java.lang.Object), getHomeDir/-1522860026=([cn.hutool.system.UserInfo], java.lang.String), getCurrentDir/-1541460846=([cn.hutool.system.UserInfo], java.lang.String), getTempDir/-1813740741=([cn.hutool.system.UserInfo], java.lang.String), getLanguage/1873127758=([cn.hutool.system.UserInfo], java.lang.String), getCountry/1297606302=([cn.hutool.system.UserInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var696=cn.hutool.system.UserInfo, var1437=r1, var1855=$r0, var3796=$r2, var1841=cn.hutool.system.SystemUtil, var2597=java.lang.Object, var3988="User Name:        ", var2630=$r3, var2403="User Home Dir:    ", var2804=$r4, var3070="User Current Dir: ", var711=$r5, var29="User Temp Dir:    ", var3781=$r6, var798="User Language:    ", var3658=$r7, var505="User Country:     ", var1193=$r8}
; {cn.hutool.system.UserInfo=var696, r1=var1437, $r0=var1855, $r2=var3796, cn.hutool.system.SystemUtil=var1841, java.lang.Object=var2597, "User Name:        "=var3988, $r3=var2630, "User Home Dir:    "=var2403, $r4=var2804, "User Current Dir: "=var3070, $r5=var711, "User Temp Dir:    "=var29, $r6=var3781, "User Language:    "=var798, $r7=var3658, "User Country:     "=var505, $r8=var1193}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.system.UserInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getName()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Name:        ", $r2);	$r3 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getHomeDir()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Home Dir:    ", $r3);	$r4 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getCurrentDir()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Current Dir: ", $r4);	$r5 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getTempDir()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Temp Dir:    ", $r5);	$r6 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getLanguage()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Language:    ", $r6);	$r7 = virtualinvoke r1.<cn.hutool.system.UserInfo: java.lang.String getCountry()>();	staticinvoke <cn.hutool.system.SystemUtil: void append(java.lang.StringBuilder,java.lang.String,java.lang.Object)>($r0, "User Country:     ", $r7);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1