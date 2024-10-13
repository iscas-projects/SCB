(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1053 0)
(declare-sort var2212 0)
(declare-sort var2084 0)
(declare-sort var3714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2212) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertiesFile/2102121477 (var1053) var2212)
(declare-fun append/-1031950772 (String var2084) String)
(declare-fun cast-from-var2212-to-var2084 (var2212) var2084)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1473276926 (var3714 String Int) void)
(declare-fun cast-from-var1053-to-var3714 (var1053) var3714)
(declare-fun configurationFile/2102121477 (var1053) var2212)
(declare-const null-var1053 var1053)
(declare-const null-var2212 var2212)
(declare-const var289 var1053) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask 
(assert (not (= var289 null-var1053)))
(declare-const var1961 var2212) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1961 null-var2212)))
(assert true)
(define-const var2267 Bool (exists/1072868559 var1961)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r15 = new java.lang.StringBuilder 
(assert (not (= (ite var2267 1 0) 0))) ; Cond: $z0 != 0 
(define-const var796 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var796)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var796!1 String)
(assert (= var796!1 ""))
(assert true)
(define-const var2330 String (append/672562846 var796!1 "Using configuration file ")) ; Statement: $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using configuration file ") 
(declare-const var796!2 String)
(assert (= var796!2 (str.++ var796!1 "Using configuration file ")))
(define-const var2407 var2212 (propertiesFile/2102121477 var289)) ; Statement: $r3 = r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: java.io.File propertiesFile> 
(assert true)
(define-const var1274 String (append/-1031950772 var2330 (cast-from-var2212-to-var2084 var2407))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2330!1 String)
(assert (str.prefixof var2330 var2330!1))
(assert true)
(define-const var2483 String (toString/-2075883882 var1274)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1473276926 (cast-from-var1053-to-var3714 var289) var2483 4)) ; Statement: virtualinvoke r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: void log(java.lang.String,int)>($r6, 4) 

(declare-const var289!1 var1053)
(declare-const var2483!1 String)
(declare-const var2107 Int)
(declare-const var289!2 var1053)
(assert (not (= var289!2 null-var1053)))
(assert (= (configurationFile/2102121477 var289!2) var1961)) ; Statement: r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: java.io.File configurationFile> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertiesFile/2102121477=([org.hibernate.tool.hbm2ddl.SchemaValidatorTask], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2212-to-var2084=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1473276926=([org.apache.tools.ant.taskdefs.MatchingTask, java.lang.String, int], void), cast-from-var1053-to-var3714=([org.hibernate.tool.hbm2ddl.SchemaValidatorTask], org.apache.tools.ant.taskdefs.MatchingTask), configurationFile/2102121477=([org.hibernate.tool.hbm2ddl.SchemaValidatorTask], java.io.File)}
; {var1053=org.hibernate.tool.hbm2ddl.SchemaValidatorTask, var289=r1, var2212=java.io.File, var1961=r0, var2267=$z0, var796=$r15, var2330=$r4, var2407=$r3, var2084=java.lang.Object, var1274=$r5, var2483=$r6, var3714=org.apache.tools.ant.taskdefs.MatchingTask, var2107=4}
; {org.hibernate.tool.hbm2ddl.SchemaValidatorTask=var1053, r1=var289, java.io.File=var2212, r0=var1961, $z0=var2267, $r15=var796, $r4=var2330, $r3=var2407, java.lang.Object=var2084, $r5=var1274, $r6=var2483, org.apache.tools.ant.taskdefs.MatchingTask=var3714, 4=var2107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r15 = new java.lang.StringBuilder;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using configuration file ");	$r3 = r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: java.io.File propertiesFile>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: void log(java.lang.String,int)>($r6, 4);	r1.<org.hibernate.tool.hbm2ddl.SchemaValidatorTask: java.io.File configurationFile> = r0;	return
;block_num 2