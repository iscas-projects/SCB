(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1189 0)
(declare-sort var3944 0)
(declare-sort var2544 0)
(declare-sort var2851 0)
(declare-sort var3508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var3944) Bool)
(declare-fun var2544-init () var2544)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2851) String)
(declare-fun cast-from-var3944-to-var2851 (var3944) var2851)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/251655487 (var2544 String) void)
(declare-fun cast-from-var2544-to-var3508 (var2544) var3508)
(declare-const null-var1189 var1189)
(declare-const null-var3944 var3944)
(declare-const var2527 var1189) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask 
(assert (not (= var2527 null-var1189)))
(declare-const var3655 var3944) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3655 null-var3944)))
(assert true)
(define-const var1275 Bool (exists/1072868559 var3655)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1275 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var431 var2544 var2544-init) ; Statement: $r13 = new org.apache.tools.ant.BuildException 
(define-const var1588 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1588)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1588!1 String)
(assert (= var1588!1 ""))
(assert true)
(define-const var2026 String (append/672562846 var1588!1 "Properties file: ")) ; Statement: $r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties file: ") 
(declare-const var1588!2 String)
(assert (= var1588!2 (str.++ var1588!1 "Properties file: ")))
(assert true)
(define-const var3521 String (append/-1031950772 var2026 (cast-from-var3944-to-var2851 var3655))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2026!1 String)
(assert (str.prefixof var2026 var2026!1))
(assert true)
(define-const var1511 String (append/672562846 var3521 " does not exist.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.") 
(declare-const var3521!1 String)
(assert (= var3521!1 (str.++ var3521 " does not exist.")))
(assert true)
(define-const var3050 String (toString/-2075883882 var1511)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/251655487 var431 var3050)) ; Statement: specialinvoke $r13.<org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11) 

(declare-const var431!1 var2544)
(declare-const var3050!1 String)
(define-const var1942 var3508 (cast-from-var2544-to-var3508 var431!1)) ; Statement: $r15 = (java.lang.Throwable) $r13 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var2544-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3944-to-var2851=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/251655487=([org.apache.tools.ant.BuildException, java.lang.String], void), cast-from-var2544-to-var3508=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var1189=org.hibernate.tool.hbm2ddl.SchemaUpdateTask, var2527=r1, var3944=java.io.File, var3655=r0, var1275=$z0, var2544=org.apache.tools.ant.BuildException, var431=$r13, var1588=$r12, var2026=$r8, var2851=java.lang.Object, var3521=$r9, var1511=$r10, var3050=$r11, var3508=java.lang.Throwable, var1942=$r15}
; {org.hibernate.tool.hbm2ddl.SchemaUpdateTask=var1189, r1=var2527, java.io.File=var3944, r0=var3655, $z0=var1275, org.apache.tools.ant.BuildException=var2544, $r13=var431, $r12=var1588, $r8=var2026, java.lang.Object=var2851, $r9=var3521, $r10=var1511, $r11=var3050, java.lang.Throwable=var3508, $r15=var1942}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r14 = new java.lang.StringBuilder;	$r13 = new org.apache.tools.ant.BuildException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties file: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r13;	throw $r15
;block_num 2