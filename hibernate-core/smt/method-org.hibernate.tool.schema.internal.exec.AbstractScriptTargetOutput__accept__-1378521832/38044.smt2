(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3711 0)
(declare-sort var2285 0)
(declare-sort var3921 0)
(declare-sort var2654 0)
(declare-sort var2608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2654-init () var2654)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-529677710 (var2654 String var2608) void)
(declare-fun cast-from-var3921-to-var2608 (var3921) var2608)
(declare-fun cast-from-var2654-to-var2608 (var2654) var2608)
(declare-const null-var3711 var3711)
(declare-const null-String String)
(declare-const null-var3921 var3921)
(declare-const var121 var3711) ; Statement: r0 := @this: org.hibernate.tool.schema.internal.exec.AbstractScriptTargetOutput 
(assert (not (= var121 null-var3711)))
(declare-const var3832 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3832 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3752 var3921) ; Statement: $r6 := @caughtexception 
(assert (not (= var3752 null-var3921)))
(define-const var3051 var2654 var2654-init) ; Statement: $r14 = new org.hibernate.tool.schema.spi.CommandAcceptanceException 
(define-const var646 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var646)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var646!1 String)
(assert (= var646!1 ""))
(assert true)
(define-const var534 String (append/672562846 var646!1 "Could not write \u0022")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not write \"") 
(declare-const var646!2 String)
(assert (= var646!2 (str.++ var646!1 "Could not write \u0022")))
(assert true)
(define-const var3002 String (append/672562846 var534 var3832)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var534!1 String)
(assert (= var534!1 (str.++ var534 var3832)))
(assert true)
(define-const var1182 String (append/672562846 var3002 "\u0022 to target script file")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" to target script file") 
(declare-const var3002!1 String)
(assert (= var3002!1 (str.++ var3002 "\u0022 to target script file")))
(assert true)
(define-const var1946 String (toString/-2075883882 var1182)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-529677710 var3051 var1946 (cast-from-var3921-to-var2608 var3752))) ; Statement: specialinvoke $r14.<org.hibernate.tool.schema.spi.CommandAcceptanceException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var3051!1 var2654)
(declare-const var1946!1 String)
(declare-const var3752!1 var3921)
(define-const var104 var2608 (cast-from-var2654-to-var2608 var3051!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2654-init=([], org.hibernate.tool.schema.spi.CommandAcceptanceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-529677710=([org.hibernate.tool.schema.spi.CommandAcceptanceException, java.lang.String, java.lang.Throwable], void), cast-from-var3921-to-var2608=([java.io.IOException], java.lang.Throwable), cast-from-var2654-to-var2608=([org.hibernate.tool.schema.spi.CommandAcceptanceException], java.lang.Throwable)}
; {var3711=org.hibernate.tool.schema.internal.exec.AbstractScriptTargetOutput, var121=r0, var3832=r1, var2285=null_type, var3921=java.io.IOException, var3752=$r6, var2654=org.hibernate.tool.schema.spi.CommandAcceptanceException, var3051=$r14, var646=$r13, var534=$r9, var3002=$r10, var1182=$r11, var1946=$r12, var2608=java.lang.Throwable, var104=$r15}
; {org.hibernate.tool.schema.internal.exec.AbstractScriptTargetOutput=var3711, r0=var121, r1=var3832, null_type=var2285, java.io.IOException=var3921, $r6=var3752, org.hibernate.tool.schema.spi.CommandAcceptanceException=var2654, $r14=var3051, $r13=var646, $r9=var534, $r10=var3002, $r11=var1182, $r12=var1946, java.lang.Throwable=var2608, $r15=var104}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.internal.exec.AbstractScriptTargetOutput;	r1 := @parameter0: java.lang.String;	$r6 := @caughtexception;	$r14 = new org.hibernate.tool.schema.spi.CommandAcceptanceException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not write \"");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" to target script file");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.tool.schema.spi.CommandAcceptanceException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2