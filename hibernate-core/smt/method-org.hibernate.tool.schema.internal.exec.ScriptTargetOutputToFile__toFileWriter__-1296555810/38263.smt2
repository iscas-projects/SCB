(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1353 0)
(declare-sort var2912 0)
(declare-sort var2822 0)
(declare-sort var207 0)
(declare-sort var3169 0)
(declare-sort var729 0)
(declare-sort var658 0)
(declare-sort var3287 0)
(declare-sort var1854 0)
(declare-sort var3085 0)
(declare-sort var488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var729) String)
(declare-fun cast-from-var2822-to-var729 (var2822) var729)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var207 var729) void)
(declare-fun cast-from-String-to-var729 (String) var729)
(declare-fun var658-init () var658)
(declare-fun var3287-init () var3287)
(declare-fun var3085-init () var3085)
(declare-fun cast-from-var1353-to-var729 (var1353) var729)
(declare-fun <init>/335245530 (var3085 String var488) void)
(declare-fun cast-from-var1854-to-var488 (var1854) var488)
(declare-fun cast-from-var3085-to-var488 (var3085) var488)
(declare-const null-var1353 var1353)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2822 var2822)
(declare-const var3169-log var207)
(declare-const null-var1854 var1854)
(declare-const var2415 var1353) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2415 null-var1353)))
(declare-const var806 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var806 null-String)))
(declare-const var2720 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2720 null-Bool)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3543 var2822) ; Statement: $r18 := @caughtexception 
(assert (not (= var3543 null-var2822)))
(define-const var1432 var207 var3169-log) ; Statement: $r20 = <org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile: org.jboss.logging.Logger log> 
(define-const var824 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var824)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var824!1 String)
(assert (= var824!1 ""))
(assert true)
(define-const var1389 String (append/672562846 var824!1 "Exception calling File#createNewFile : ")) ; Statement: $r21 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception calling File#createNewFile : ") 
(declare-const var824!2 String)
(assert (= var824!2 (str.++ var824!1 "Exception calling File#createNewFile : ")))
(assert true)
(define-const var1182 String (append/-1031950772 var1389 (cast-from-var2822-to-var729 var3543))) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var1389!1 String)
(assert (str.prefixof var1389 var1389!1))
(assert true)
(define-const var3184 String (toString/-2075883882 var1182)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var1432 (cast-from-String-to-var729 var3184))) ; Statement: virtualinvoke $r20.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r23) 

(declare-const var1432!1 var207)
(declare-const var3184!1 String)
(assert true) ; Non Conditional
 ; Statement: if r1 == null goto $r30 = new java.io.OutputStreamWriter 
(assert (not (= var806 null-String))) ; Negate: Cond: r1 == null  
(define-const var1528 var658 var658-init) ; Statement: $r28 = new java.io.OutputStreamWriter 
(define-const var2165 var658 var1528) ; Statement: $r24 = $r28 
(define-const var3445 var3287 var3287-init) ; Statement: $r27 = new java.io.FileOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2861 var1854) ; Statement: $r12 := @caughtexception 
(assert (not (= var2861 null-var1854)))
(define-const var3683 var3085 var3085-init) ; Statement: $r32 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var886 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var886)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var886!1 String)
(assert (= var886!1 ""))
(assert true)
(define-const var2641 String (append/672562846 var886!1 "Unable to open specified script target file for writing : ")) ; Statement: $r15 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open specified script target file for writing : ") 
(declare-const var886!2 String)
(assert (= var886!2 (str.++ var886!1 "Unable to open specified script target file for writing : ")))
(assert true)
(define-const var3842 String (append/-1031950772 var2641 (cast-from-var1353-to-var729 var2415))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2641!1 String)
(assert (str.prefixof var2641 var2641!1))
(assert true)
(define-const var279 String (toString/-2075883882 var3842)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/335245530 var3683 var279 (cast-from-var1854-to-var488 var2861))) ; Statement: specialinvoke $r32.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r12) 

(declare-const var3683!1 var3085)
(declare-const var279!1 String)
(declare-const var2861!1 var1854)
(define-const var2930 var488 (cast-from-var3085-to-var488 var3683!1)) ; Statement: $r33 = (java.lang.Throwable) $r32 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2822-to-var729=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var729=([java.lang.String], java.lang.Object), var658-init=([], java.io.OutputStreamWriter), var3287-init=([], java.io.FileOutputStream), var3085-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), cast-from-var1353-to-var729=([java.io.File], java.lang.Object), <init>/335245530=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String, java.lang.Throwable], void), cast-from-var1854-to-var488=([java.io.IOException], java.lang.Throwable), cast-from-var3085-to-var488=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var1353=java.io.File, var2415=r0, var806=r1, var2912=null_type, var2720=z1, var2822=java.lang.Exception, var3543=$r18, var207=org.jboss.logging.Logger, var3169=org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile, var1432=$r20, var824=$r26, var1389=$r21, var729=java.lang.Object, var1182=$r22, var3184=$r23, var658=java.io.OutputStreamWriter, var1528=$r28, var2165=$r24, var3287=java.io.FileOutputStream, var3445=$r27, var1854=java.io.IOException, var2861=$r12, var3085=org.hibernate.tool.schema.spi.SchemaManagementException, var3683=$r32, var886=$r31, var2641=$r15, var3842=$r16, var279=$r17, var488=java.lang.Throwable, var2930=$r33}
; {java.io.File=var1353, r0=var2415, r1=var806, null_type=var2912, z1=var2720, java.lang.Exception=var2822, $r18=var3543, org.jboss.logging.Logger=var207, org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile=var3169, $r20=var1432, $r26=var824, $r21=var1389, java.lang.Object=var729, $r22=var1182, $r23=var3184, java.io.OutputStreamWriter=var658, $r28=var1528, $r24=var2165, java.io.FileOutputStream=var3287, $r27=var3445, java.io.IOException=var1854, $r12=var2861, org.hibernate.tool.schema.spi.SchemaManagementException=var3085, $r32=var3683, $r31=var886, $r15=var2641, $r16=var3842, $r17=var279, java.lang.Throwable=var488, $r33=var2930}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$r18 := @caughtexception;	$r20 = <org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile: org.jboss.logging.Logger log>;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception calling File#createNewFile : ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r20.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r23);	if r1 == null goto $r30 = new java.io.OutputStreamWriter;	$r28 = new java.io.OutputStreamWriter;	$r24 = $r28;	$r27 = new java.io.FileOutputStream;	$r12 := @caughtexception;	$r32 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open specified script target file for writing : ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r12);	$r33 = (java.lang.Throwable) $r32;	throw $r33
;block_num 5