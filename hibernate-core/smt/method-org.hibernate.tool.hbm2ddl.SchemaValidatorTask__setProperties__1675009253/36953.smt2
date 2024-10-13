(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2426 0)
(declare-sort var3306 0)
(declare-sort var3202 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var3306) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3202) String)
(declare-fun cast-from-var3306-to-var3202 (var3306) var3202)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1473276926 (var2005 String Int) void)
(declare-fun cast-from-var2426-to-var2005 (var2426) var2005)
(declare-fun propertiesFile/2102121477 (var2426) var3306)
(declare-const null-var2426 var2426)
(declare-const null-var3306 var3306)
(declare-const var2487 var2426) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask 
(assert (not (= var2487 null-var2426)))
(declare-const var2201 var3306) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2201 null-var3306)))
(assert true)
(define-const var3019 Bool (exists/1072868559 var2201)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (= (ite var3019 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3482 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3482)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3482!1 String)
(assert (= var3482!1 ""))
(assert true)
(define-const var3262 String (append/672562846 var3482!1 "Using properties file ")) ; Statement: $r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using properties file ") 
(declare-const var3482!2 String)
(assert (= var3482!2 (str.++ var3482!1 "Using properties file ")))
(assert true)
(define-const var3056 String (append/-1031950772 var3262 (cast-from-var3306-to-var3202 var2201))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3262!1 String)
(assert (str.prefixof var3262 var3262!1))
(assert true)
(define-const var2748 String (toString/-2075883882 var3056)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1473276926 (cast-from-var2426-to-var2005 var2487) var2748 4)) ; Statement: virtualinvoke r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: void log(java.lang.String,int)>($r5, 4) 

(declare-const var2487!1 var2426)
(declare-const var2748!1 String)
(declare-const var3173 Int)
(declare-const var2487!2 var2426)
(assert (not (= var2487!2 null-var2426)))
(assert (= (propertiesFile/2102121477 var2487!2) var2201)) ; Statement: r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: java.io.File propertiesFile> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3306-to-var3202=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1473276926=([org.apache.tools.ant.taskdefs.MatchingTask, java.lang.String, int], void), cast-from-var2426-to-var2005=([org.hibernate.tool.hbm2ddl.SchemaValidatorTask], org.apache.tools.ant.taskdefs.MatchingTask), propertiesFile/2102121477=([org.hibernate.tool.hbm2ddl.SchemaValidatorTask], java.io.File)}
; {var2426=org.hibernate.tool.hbm2ddl.SchemaValidatorTask, var2487=r1, var3306=java.io.File, var2201=r0, var3019=$z0, var3482=$r14, var3262=$r3, var3202=java.lang.Object, var3056=$r4, var2748=$r5, var2005=org.apache.tools.ant.taskdefs.MatchingTask, var3173=4}
; {org.hibernate.tool.hbm2ddl.SchemaValidatorTask=var2426, r1=var2487, java.io.File=var3306, r0=var2201, $z0=var3019, $r14=var3482, $r3=var3262, java.lang.Object=var3202, $r4=var3056, $r5=var2748, org.apache.tools.ant.taskdefs.MatchingTask=var2005, 4=var3173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r14 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using properties file ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: void log(java.lang.String,int)>($r5, 4);	r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: java.io.File propertiesFile> = r0;	return
;block_num 2