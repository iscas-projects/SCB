(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var834 0)
(declare-sort var1454 0)
(declare-sort var3911 0)
(declare-sort var2773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var1454) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3911) String)
(declare-fun cast-from-var1454-to-var3911 (var1454) var3911)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1473276926 (var2773 String Int) void)
(declare-fun cast-from-var834-to-var2773 (var834) var2773)
(declare-fun propertiesFile/-226273781 (var834) var1454)
(declare-const null-var834 var834)
(declare-const null-var1454 var1454)
(declare-const var2623 var834) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaExportTask 
(assert (not (= var2623 null-var834)))
(declare-const var2764 var1454) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2764 null-var1454)))
(assert true)
(define-const var1761 Bool (exists/1072868559 var2764)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (= (ite var1761 1 0) 0))) ; Cond: $z0 != 0 
(define-const var876 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var876)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var876!1 String)
(assert (= var876!1 ""))
(assert true)
(define-const var1975 String (append/672562846 var876!1 "Using properties file ")) ; Statement: $r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using properties file ") 
(declare-const var876!2 String)
(assert (= var876!2 (str.++ var876!1 "Using properties file ")))
(assert true)
(define-const var193 String (append/-1031950772 var1975 (cast-from-var1454-to-var3911 var2764))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1975!1 String)
(assert (str.prefixof var1975 var1975!1))
(assert true)
(define-const var2091 String (toString/-2075883882 var193)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1473276926 (cast-from-var834-to-var2773 var2623) var2091 4)) ; Statement: virtualinvoke r1.<org.hibernate.tool.hbm2ddl.SchemaExportTask: void log(java.lang.String,int)>($r5, 4) 

(declare-const var2623!1 var834)
(declare-const var2091!1 String)
(declare-const var1747 Int)
(declare-const var2623!2 var834)
(assert (not (= var2623!2 null-var834)))
(assert (= (propertiesFile/-226273781 var2623!2) var2764)) ; Statement: r1.<org.hibernate.tool.hbm2ddl.SchemaExportTask: java.io.File propertiesFile> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1454-to-var3911=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1473276926=([org.apache.tools.ant.taskdefs.MatchingTask, java.lang.String, int], void), cast-from-var834-to-var2773=([org.hibernate.tool.hbm2ddl.SchemaExportTask], org.apache.tools.ant.taskdefs.MatchingTask), propertiesFile/-226273781=([org.hibernate.tool.hbm2ddl.SchemaExportTask], java.io.File)}
; {var834=org.hibernate.tool.hbm2ddl.SchemaExportTask, var2623=r1, var1454=java.io.File, var2764=r0, var1761=$z0, var876=$r14, var1975=$r3, var3911=java.lang.Object, var193=$r4, var2091=$r5, var2773=org.apache.tools.ant.taskdefs.MatchingTask, var1747=4}
; {org.hibernate.tool.hbm2ddl.SchemaExportTask=var834, r1=var2623, java.io.File=var1454, r0=var2764, $z0=var1761, $r14=var876, $r3=var1975, java.lang.Object=var3911, $r4=var193, $r5=var2091, org.apache.tools.ant.taskdefs.MatchingTask=var2773, 4=var1747}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaExportTask;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r14 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using properties file ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.hibernate.tool.hbm2ddl.SchemaExportTask: void log(java.lang.String,int)>($r5, 4);	r1.<org.hibernate.tool.hbm2ddl.SchemaExportTask: java.io.File propertiesFile> = r0;	return
;block_num 2