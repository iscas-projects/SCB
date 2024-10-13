(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1520 0)
(declare-sort var1523 0)
(declare-sort var2150 0)
(declare-sort var1351 0)
(declare-sort var3343 0)
(declare-sort var2282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1351-init () var1351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3343) String)
(declare-fun cast-from-var1523-to-var3343 (var1523) var3343)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var1351 String var2282) void)
(declare-fun cast-from-var2150-to-var2282 (var2150) var2282)
(declare-const null-var1520 var1520)
(declare-const null-var1523 var1523)
(declare-const null-var2150 var2150)
(declare-const var1377 var1520) ; Statement: r15 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler 
(assert (not (= var1377 null-var1520)))
(declare-const var2519 var1523) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand 
(assert (not (= var2519 null-var1523)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var724 var2150) ; Statement: $r3 := @caughtexception 
(assert (not (= var724 null-var2150)))
(define-const var2228 var1351 var1351-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var1686 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1686)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1686!1 String)
(assert (= var1686!1 ""))
(assert true)
(define-const var3076 String (append/672562846 var1686!1 "Failed to instantiate ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to instantiate ") 
(declare-const var1686!2 String)
(assert (= var1686!2 (str.++ var1686!1 "Failed to instantiate ")))
(assert true)
(define-const var326 String (append/-1031950772 var3076 (cast-from-var1523-to-var3343 var2519))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3076!1 String)
(assert (str.prefixof var3076 var3076!1))
(assert true)
(define-const var396 String (toString/-2075883882 var326)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var2228 var396 (cast-from-var2150-to-var2282 var724))) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3) 

(declare-const var2228!1 var1351)
(declare-const var396!1 String)
(declare-const var724!1 var2150)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1351-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1523-to-var3343=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var2150-to-var2282=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var1520=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler, var1377=r15, var1523=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand, var2519=r0, var2150=java.lang.IllegalAccessException, var724=$r3, var1351=java.lang.IllegalStateException, var2228=$r4, var1686=$r5, var3076=$r6, var3343=java.lang.Object, var326=$r7, var396=$r8, var2282=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler=var1520, r15=var1377, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand=var1523, r0=var2519, java.lang.IllegalAccessException=var2150, $r3=var724, java.lang.IllegalStateException=var1351, $r4=var2228, $r5=var1686, $r6=var3076, java.lang.Object=var3343, $r7=var326, $r8=var396, java.lang.Throwable=var2282}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand;	$r3 := @caughtexception;	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to instantiate ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3);	throw $r4
;block_num 2