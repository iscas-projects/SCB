(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3371 0)
(declare-sort var965 0)
(declare-sort var2679 0)
(declare-sort var1814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2679-init () var2679)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1814) String)
(declare-fun cast-from-var965-to-var1814 (var965) var1814)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1717020415 (var2679 String var1814) void)
(declare-fun cast-from-var2679-to-var1814 (var2679) var1814)
(declare-const null-var3371 var3371)
(declare-const null-var965 var965)
(declare-const var3094 var3371) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.SchemaExportTask 
(assert (not (= var3094 null-var3371)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1190 var965) ; Statement: $r1 := @caughtexception 
(assert (not (= var1190 null-var965)))
(define-const var1640 var2679 var2679-init) ; Statement: $r10 = new org.apache.tools.ant.BuildException 
(define-const var2770 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2770)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2770!1 String)
(assert (= var2770!1 ""))
(assert true)
(define-const var2593 String (append/672562846 var2770!1 "Error performing export : ")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error performing export : ") 
(declare-const var2770!2 String)
(assert (= var2770!2 (str.++ var2770!1 "Error performing export : ")))
(assert true)
(define-const var3512 String (getMessage/849299655 (cast-from-var965-to-var1814 var1190))) ; Statement: $r4 = virtualinvoke $r1.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var2403 String (append/672562846 var2593 var3512)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2593!1 String)
(assert (= var2593!1 (str.++ var2593 var3512)))
(assert true)
(define-const var3993 String (toString/-2075883882 var2403)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1717020415 var1640 var3993 (cast-from-var965-to-var1814 var1190))) ; Statement: specialinvoke $r10.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r1) 

(declare-const var1640!1 var2679)
(declare-const var3993!1 String)
(declare-const var1190!1 var965)
(define-const var3782 var1814 (cast-from-var2679-to-var1814 var1640!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2679-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var965-to-var1814=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1717020415=([org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var2679-to-var1814=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var3371=org.hibernate.tool.hbm2ddl.SchemaExportTask, var3094=r0, var965=java.lang.Exception, var1190=$r1, var2679=org.apache.tools.ant.BuildException, var1640=$r10, var2770=$r9, var2593=$r5, var1814=java.lang.Throwable, var3512=$r4, var2403=$r6, var3993=$r7, var3782=$r11}
; {org.hibernate.tool.hbm2ddl.SchemaExportTask=var3371, r0=var3094, java.lang.Exception=var965, $r1=var1190, org.apache.tools.ant.BuildException=var2679, $r10=var1640, $r9=var2770, $r5=var2593, java.lang.Throwable=var1814, $r4=var3512, $r6=var2403, $r7=var3993, $r11=var3782}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.SchemaExportTask;	$r1 := @caughtexception;	$r10 = new org.apache.tools.ant.BuildException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error performing export : ");	$r4 = virtualinvoke $r1.<java.lang.Exception: java.lang.String getMessage()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r1);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 2