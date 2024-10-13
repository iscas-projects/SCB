(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2211 0)
(declare-sort var2997 0)
(declare-sort var1877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1877-init () var1877)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2211) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var1877 String var2997) void)
(declare-const null-var2211 var2211)
(declare-const null-var2997 var2997)
(declare-const var230 var2211) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var230 null-var2211)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2984 var2997) ; Statement: $r2 := @caughtexception 
(assert (not (= var2984 null-var2997)))
(define-const var1043 var1877 var1877-init) ; Statement: $r11 = new java.lang.RuntimeException 
(define-const var2646 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2646)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2646!1 String)
(assert (= var2646!1 ""))
(assert true)
(define-const var3717 String (append/672562846 var2646!1 "Error converting ")) ; Statement: $r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error converting ") 
(declare-const var2646!2 String)
(assert (= var2646!2 (str.++ var2646!1 "Error converting ")))
(assert true)
(define-const var3848 String (append/-1031950772 var3717 var230)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3717!1 String)
(assert (str.prefixof var3717 var3717!1))
(assert true)
(define-const var1322 String (append/672562846 var3848 " to integer:")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to integer:") 
(declare-const var3848!1 String)
(assert (= var3848!1 (str.++ var3848 " to integer:")))
(assert true)
(define-const var535 String (toString/-2075883882 var1322)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var1043 var535 var2984)) ; Statement: specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var1043!1 var1877)
(declare-const var535!1 String)
(declare-const var2984!1 var2997)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1877-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var2211=java.lang.Object, var230=r0, var2997=java.lang.Throwable, var2984=$r2, var1877=java.lang.RuntimeException, var1043=$r11, var2646=$r10, var3717=$r5, var3848=$r6, var1322=$r7, var535=$r8}
; {java.lang.Object=var2211, r0=var230, java.lang.Throwable=var2997, $r2=var2984, java.lang.RuntimeException=var1877, $r11=var1043, $r10=var2646, $r5=var3717, $r6=var3848, $r7=var1322, $r8=var535}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r2 := @caughtexception;	$r11 = new java.lang.RuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error converting ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to integer:");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	throw $r11
;block_num 2