(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1527 0)
(declare-sort var1320 0)
(declare-sort var3450 0)
(declare-sort var812 0)
(declare-sort var3146 0)
(declare-sort var3599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var812-init () var812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3146) String)
(declare-fun cast-from-var1320-to-var3146 (var1320) var3146)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var812 String var3599) void)
(declare-fun cast-from-var3450-to-var3599 (var3450) var3599)
(declare-const null-var1527 var1527)
(declare-const null-var1320 var1320)
(declare-const null-var3450 var3450)
(declare-const var2446 var1527) ; Statement: r15 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler 
(assert (not (= var2446 null-var1527)))
(declare-const var1721 var1320) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand 
(assert (not (= var1721 null-var1320)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1960 var3450) ; Statement: $r9 := @caughtexception 
(assert (not (= var1960 null-var3450)))
(define-const var1985 var812 var812-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(define-const var3866 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3866)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3866!1 String)
(assert (= var3866!1 ""))
(assert true)
(define-const var2634 String (append/672562846 var3866!1 "Failed to instantiate ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to instantiate ") 
(declare-const var3866!2 String)
(assert (= var3866!2 (str.++ var3866!1 "Failed to instantiate ")))
(assert true)
(define-const var3718 String (append/-1031950772 var2634 (cast-from-var1320-to-var3146 var1721))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2634!1 String)
(assert (str.prefixof var2634 var2634!1))
(assert true)
(define-const var1906 String (toString/-2075883882 var3718)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var1985 var1906 (cast-from-var3450-to-var3599 var1960))) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r9) 

(declare-const var1985!1 var812)
(declare-const var1906!1 String)
(declare-const var1960!1 var3450)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var812-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1320-to-var3146=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var3450-to-var3599=([java.lang.InstantiationException], java.lang.Throwable)}
; {var1527=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler, var2446=r15, var1320=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand, var1721=r0, var3450=java.lang.InstantiationException, var1960=$r9, var812=java.lang.IllegalStateException, var1985=$r10, var3866=$r11, var2634=$r12, var3146=java.lang.Object, var3718=$r13, var1906=$r14, var3599=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler=var1527, r15=var2446, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand=var1320, r0=var1721, java.lang.InstantiationException=var3450, $r9=var1960, java.lang.IllegalStateException=var812, $r10=var1985, $r11=var3866, $r12=var2634, java.lang.Object=var3146, $r13=var3718, $r14=var1906, java.lang.Throwable=var3599}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand;	$r9 := @caughtexception;	$r10 = new java.lang.IllegalStateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to instantiate ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r9);	throw $r10
;block_num 2