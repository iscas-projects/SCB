(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3368 0)
(declare-sort var2413 0)
(declare-sort var1358 0)
(declare-sort var2768 0)
(declare-sort var2198 0)
(declare-sort var1724 0)
(declare-sort var3698 0)
(declare-sort var483 0)
(declare-sort var3155 0)
(declare-sort var2805 0)
(declare-sort var455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1724) String)
(declare-fun cast-from-var1358-to-var1724 (var1358) var1724)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var2768 var1724) void)
(declare-fun cast-from-String-to-var1724 (String) var1724)
(declare-fun var3698-init () var3698)
(declare-fun var483-init () var483)
(declare-fun var2805-init () var2805)
(declare-fun cast-from-var3368-to-var1724 (var3368) var1724)
(declare-fun <init>/335245530 (var2805 String var455) void)
(declare-fun cast-from-var3155-to-var455 (var3155) var455)
(declare-fun cast-from-var2805-to-var455 (var2805) var455)
(declare-const null-var3368 var3368)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1358 var1358)
(declare-const var2198-log var2768)
(declare-const null-var3155 var3155)
(declare-const var873 var3368) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var873 null-var3368)))
(declare-const var1563 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1563 null-String)))
(declare-const var3727 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3727 null-Bool)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1232 var1358) ; Statement: $r18 := @caughtexception 
(assert (not (= var1232 null-var1358)))
(define-const var1300 var2768 var2198-log) ; Statement: $r20 = <org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile: org.jboss.logging.Logger log> 
(define-const var1448 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1448)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1448!1 String)
(assert (= var1448!1 ""))
(assert true)
(define-const var101 String (append/672562846 var1448!1 "Exception calling File#createNewFile : ")) ; Statement: $r21 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception calling File#createNewFile : ") 
(declare-const var1448!2 String)
(assert (= var1448!2 (str.++ var1448!1 "Exception calling File#createNewFile : ")))
(assert true)
(define-const var313 String (append/-1031950772 var101 (cast-from-var1358-to-var1724 var1232))) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var101!1 String)
(assert (str.prefixof var101 var101!1))
(assert true)
(define-const var421 String (toString/-2075883882 var313)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var1300 (cast-from-String-to-var1724 var421))) ; Statement: virtualinvoke $r20.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r23) 

(declare-const var1300!1 var2768)
(declare-const var421!1 String)
(assert true) ; Non Conditional
 ; Statement: if r1 == null goto $r30 = new java.io.OutputStreamWriter 
(assert (= var1563 null-String)) ; Cond: r1 == null 
(define-const var447 var3698 var3698-init) ; Statement: $r30 = new java.io.OutputStreamWriter 
(define-const var3665 var3698 var447) ; Statement: $r24 = $r30 
(define-const var2348 var483 var483-init) ; Statement: $r29 = new java.io.FileOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1817 var3155) ; Statement: $r12 := @caughtexception 
(assert (not (= var1817 null-var3155)))
(define-const var460 var2805 var2805-init) ; Statement: $r32 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var2977 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2977)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2977!1 String)
(assert (= var2977!1 ""))
(assert true)
(define-const var3608 String (append/672562846 var2977!1 "Unable to open specified script target file for writing : ")) ; Statement: $r15 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open specified script target file for writing : ") 
(declare-const var2977!2 String)
(assert (= var2977!2 (str.++ var2977!1 "Unable to open specified script target file for writing : ")))
(assert true)
(define-const var1874 String (append/-1031950772 var3608 (cast-from-var3368-to-var1724 var873))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3608!1 String)
(assert (str.prefixof var3608 var3608!1))
(assert true)
(define-const var1089 String (toString/-2075883882 var1874)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/335245530 var460 var1089 (cast-from-var3155-to-var455 var1817))) ; Statement: specialinvoke $r32.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r12) 

(declare-const var460!1 var2805)
(declare-const var1089!1 String)
(declare-const var1817!1 var3155)
(define-const var18 var455 (cast-from-var2805-to-var455 var460!1)) ; Statement: $r33 = (java.lang.Throwable) $r32 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1358-to-var1724=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var1724=([java.lang.String], java.lang.Object), var3698-init=([], java.io.OutputStreamWriter), var483-init=([], java.io.FileOutputStream), var2805-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), cast-from-var3368-to-var1724=([java.io.File], java.lang.Object), <init>/335245530=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String, java.lang.Throwable], void), cast-from-var3155-to-var455=([java.io.IOException], java.lang.Throwable), cast-from-var2805-to-var455=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var3368=java.io.File, var873=r0, var1563=r1, var2413=null_type, var3727=z1, var1358=java.lang.Exception, var1232=$r18, var2768=org.jboss.logging.Logger, var2198=org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile, var1300=$r20, var1448=$r26, var101=$r21, var1724=java.lang.Object, var313=$r22, var421=$r23, var3698=java.io.OutputStreamWriter, var447=$r30, var3665=$r24, var483=java.io.FileOutputStream, var2348=$r29, var3155=java.io.IOException, var1817=$r12, var2805=org.hibernate.tool.schema.spi.SchemaManagementException, var460=$r32, var2977=$r31, var3608=$r15, var1874=$r16, var1089=$r17, var455=java.lang.Throwable, var18=$r33}
; {java.io.File=var3368, r0=var873, r1=var1563, null_type=var2413, z1=var3727, java.lang.Exception=var1358, $r18=var1232, org.jboss.logging.Logger=var2768, org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile=var2198, $r20=var1300, $r26=var1448, $r21=var101, java.lang.Object=var1724, $r22=var313, $r23=var421, java.io.OutputStreamWriter=var3698, $r30=var447, $r24=var3665, java.io.FileOutputStream=var483, $r29=var2348, java.io.IOException=var3155, $r12=var1817, org.hibernate.tool.schema.spi.SchemaManagementException=var2805, $r32=var460, $r31=var2977, $r15=var3608, $r16=var1874, $r17=var1089, java.lang.Throwable=var455, $r33=var18}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$r18 := @caughtexception;	$r20 = <org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile: org.jboss.logging.Logger log>;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception calling File#createNewFile : ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r20.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r23);	if r1 == null goto $r30 = new java.io.OutputStreamWriter;	$r30 = new java.io.OutputStreamWriter;	$r24 = $r30;	$r29 = new java.io.FileOutputStream;	$r12 := @caughtexception;	$r32 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open specified script target file for writing : ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r12);	$r33 = (java.lang.Throwable) $r32;	throw $r33
;block_num 5