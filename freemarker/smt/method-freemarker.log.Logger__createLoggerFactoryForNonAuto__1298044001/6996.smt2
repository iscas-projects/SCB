(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3467 0)
(declare-sort var2808 0)
(declare-sort var1376 0)
(declare-sort var32 0)
(declare-sort var3894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3467_getAvailabilityCheckClassName/2067386617 (Int) String)
(declare-fun ClassObject_forName/-802689384 (String) ClassObject)
(declare-fun var3467_getLibraryName/-1544606341 (Int) String)
(declare-fun String-init () String)
(declare-fun var32-init () var32)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var32 String var3894) void)
(declare-fun cast-from-var1376-to-var3894 (var1376) var3894)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var1376 var1376)
(declare-const var2869 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2869 null-Int)))
(define-const var1511 String (var3467_getAvailabilityCheckClassName/2067386617 var2869)) ; Statement: r0 = staticinvoke <freemarker.log.Logger: java.lang.String getAvailabilityCheckClassName(int)>(i0) 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var1511 null-String))) ; Negate: Cond: r0 == null  
;(assert (ClassObject_forName/-802689384 var1511)) ; Statement: staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String)>(r0) 

(declare-const var1511!1 String)
(define-const var542 String (var3467_getLibraryName/-1544606341 var2869)) ; Statement: r4 = staticinvoke <freemarker.log.Logger: java.lang.String getLibraryName(int)>(i0) 
(define-const var2249 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1234 var1376) ; Statement: $r13 := @caughtexception 
(assert (not (= var1234 null-var1376)))
(define-const var1735 var32 var32-init) ; Statement: $r14 = new java.lang.RuntimeException 
(define-const var680 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var680)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var680!1 String)
(assert (= var680!1 ""))
(assert true)
(define-const var211 String (append/672562846 var680!1 "Unexpected error when creating logger factory for \u0022")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error when creating logger factory for \"") 
(declare-const var680!2 String)
(assert (= var680!2 (str.++ var680!1 "Unexpected error when creating logger factory for \u0022")))
(assert true)
(define-const var232 String (append/672562846 var211 var542)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var211!1 String)
(assert (= var211!1 (str.++ var211 var542)))
(assert true)
(define-const var1685 String (append/672562846 var232 "\u0022.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var232!1 String)
(assert (= var232!1 (str.++ var232 "\u0022.")))
(assert true)
(define-const var1519 String (toString/-2075883882 var1685)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var1735 var1519 (cast-from-var1376-to-var3894 var1234))) ; Statement: specialinvoke $r14.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r13) 

(declare-const var1735!1 var32)
(declare-const var1519!1 String)
(declare-const var1234!1 var1376)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3467_getAvailabilityCheckClassName/2067386617=([int], java.lang.String), ClassObject_forName/-802689384=([java.lang.String], java.lang.Class), var3467_getLibraryName/-1544606341=([int], java.lang.String), String-init=([], java.lang.StringBuilder), var32-init=([], java.lang.RuntimeException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1376-to-var3894=([java.lang.Exception], java.lang.Throwable)}
; {var2869=i0, var3467=freemarker.log.Logger, var1511=r0, var2808=null_type, var542=r4, var2249=$r5, var1376=java.lang.Exception, var1234=$r13, var32=java.lang.RuntimeException, var1735=$r14, var680=$r15, var211=$r16, var232=$r17, var1685=$r18, var1519=$r19, var3894=java.lang.Throwable}
; {i0=var2869, freemarker.log.Logger=var3467, r0=var1511, null_type=var2808, r4=var542, $r5=var2249, java.lang.Exception=var1376, $r13=var1234, java.lang.RuntimeException=var32, $r14=var1735, $r15=var680, $r16=var211, $r17=var232, $r18=var1685, $r19=var1519, java.lang.Throwable=var3894}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r0 = staticinvoke <freemarker.log.Logger: java.lang.String getAvailabilityCheckClassName(int)>(i0);	if r0 == null goto (branch);	staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String)>(r0);	r4 = staticinvoke <freemarker.log.Logger: java.lang.String getLibraryName(int)>(i0);	$r5 = new java.lang.StringBuilder;	$r13 := @caughtexception;	$r14 = new java.lang.RuntimeException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error when creating logger factory for \"");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r13);	throw $r14
;block_num 3