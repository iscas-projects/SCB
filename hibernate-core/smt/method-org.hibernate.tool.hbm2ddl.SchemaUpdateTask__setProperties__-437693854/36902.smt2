(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3268 0)
(declare-sort var2868 0)
(declare-sort var2271 0)
(declare-sort var1309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2868) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2271) String)
(declare-fun cast-from-var2868-to-var2271 (var2868) var2271)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1473276926 (var1309 String Int) void)
(declare-fun cast-from-var3268-to-var1309 (var3268) var1309)
(declare-fun propertiesFile/-731387744 (var3268) var2868)
(declare-const null-var3268 var3268)
(declare-const null-var2868 var2868)
(declare-const var96 var3268) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask 
(assert (not (= var96 null-var3268)))
(declare-const var2502 var2868) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2502 null-var2868)))
(assert true)
(define-const var2982 Bool (exists/1072868559 var2502)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (= (ite var2982 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1151 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1151)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1151!1 String)
(assert (= var1151!1 ""))
(assert true)
(define-const var573 String (append/672562846 var1151!1 "Using properties file ")) ; Statement: $r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using properties file ") 
(declare-const var1151!2 String)
(assert (= var1151!2 (str.++ var1151!1 "Using properties file ")))
(assert true)
(define-const var2403 String (append/-1031950772 var573 (cast-from-var2868-to-var2271 var2502))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var573!1 String)
(assert (str.prefixof var573 var573!1))
(assert true)
(define-const var2293 String (toString/-2075883882 var2403)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1473276926 (cast-from-var3268-to-var1309 var96) var2293 4)) ; Statement: virtualinvoke r1.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String,int)>($r5, 4) 

(declare-const var96!1 var3268)
(declare-const var2293!1 String)
(declare-const var1107 Int)
(declare-const var96!2 var3268)
(assert (not (= var96!2 null-var3268)))
(assert (= (propertiesFile/-731387744 var96!2) var2502)) ; Statement: r1.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: java.io.File propertiesFile> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2868-to-var2271=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1473276926=([org.apache.tools.ant.taskdefs.MatchingTask, java.lang.String, int], void), cast-from-var3268-to-var1309=([org.hibernate.tool.hbm2ddl.SchemaUpdateTask], org.apache.tools.ant.taskdefs.MatchingTask), propertiesFile/-731387744=([org.hibernate.tool.hbm2ddl.SchemaUpdateTask], java.io.File)}
; {var3268=org.hibernate.tool.hbm2ddl.SchemaUpdateTask, var96=r1, var2868=java.io.File, var2502=r0, var2982=$z0, var1151=$r14, var573=$r3, var2271=java.lang.Object, var2403=$r4, var2293=$r5, var1309=org.apache.tools.ant.taskdefs.MatchingTask, var1107=4}
; {org.hibernate.tool.hbm2ddl.SchemaUpdateTask=var3268, r1=var96, java.io.File=var2868, r0=var2502, $z0=var2982, $r14=var1151, $r3=var573, java.lang.Object=var2271, $r4=var2403, $r5=var2293, org.apache.tools.ant.taskdefs.MatchingTask=var1309, 4=var1107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r14 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using properties file ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String,int)>($r5, 4);	r1.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: java.io.File propertiesFile> = r0;	return
;block_num 2