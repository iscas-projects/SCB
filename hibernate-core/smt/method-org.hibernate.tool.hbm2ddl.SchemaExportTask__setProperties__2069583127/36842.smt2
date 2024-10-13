(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3348 0)
(declare-sort var2709 0)
(declare-sort var133 0)
(declare-sort var2693 0)
(declare-sort var2169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2709) Bool)
(declare-fun var133-init () var133)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2693) String)
(declare-fun cast-from-var2709-to-var2693 (var2709) var2693)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/251655487 (var133 String) void)
(declare-fun cast-from-var133-to-var2169 (var133) var2169)
(declare-const null-var3348 var3348)
(declare-const null-var2709 var2709)
(declare-const var2567 var3348) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaExportTask 
(assert (not (= var2567 null-var3348)))
(declare-const var1661 var2709) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1661 null-var2709)))
(assert true)
(define-const var1419 Bool (exists/1072868559 var1661)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1419 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1460 var133 var133-init) ; Statement: $r13 = new org.apache.tools.ant.BuildException 
(define-const var3528 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3528)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3528!1 String)
(assert (= var3528!1 ""))
(assert true)
(define-const var493 String (append/672562846 var3528!1 "Properties file: ")) ; Statement: $r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties file: ") 
(declare-const var3528!2 String)
(assert (= var3528!2 (str.++ var3528!1 "Properties file: ")))
(assert true)
(define-const var315 String (append/-1031950772 var493 (cast-from-var2709-to-var2693 var1661))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var493!1 String)
(assert (str.prefixof var493 var493!1))
(assert true)
(define-const var3780 String (append/672562846 var315 " does not exist.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.") 
(declare-const var315!1 String)
(assert (= var315!1 (str.++ var315 " does not exist.")))
(assert true)
(define-const var2621 String (toString/-2075883882 var3780)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/251655487 var1460 var2621)) ; Statement: specialinvoke $r13.<org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11) 

(declare-const var1460!1 var133)
(declare-const var2621!1 String)
(define-const var3958 var2169 (cast-from-var133-to-var2169 var1460!1)) ; Statement: $r15 = (java.lang.Throwable) $r13 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var133-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2709-to-var2693=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/251655487=([org.apache.tools.ant.BuildException, java.lang.String], void), cast-from-var133-to-var2169=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var3348=org.hibernate.tool.hbm2ddl.SchemaExportTask, var2567=r1, var2709=java.io.File, var1661=r0, var1419=$z0, var133=org.apache.tools.ant.BuildException, var1460=$r13, var3528=$r12, var493=$r8, var2693=java.lang.Object, var315=$r9, var3780=$r10, var2621=$r11, var2169=java.lang.Throwable, var3958=$r15}
; {org.hibernate.tool.hbm2ddl.SchemaExportTask=var3348, r1=var2567, java.io.File=var2709, r0=var1661, $z0=var1419, org.apache.tools.ant.BuildException=var133, $r13=var1460, $r12=var3528, $r8=var493, java.lang.Object=var2693, $r9=var315, $r10=var3780, $r11=var2621, java.lang.Throwable=var2169, $r15=var3958}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaExportTask;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r14 = new java.lang.StringBuilder;	$r13 = new org.apache.tools.ant.BuildException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties file: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r13;	throw $r15
;block_num 2