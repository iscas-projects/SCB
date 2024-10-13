(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var913 0)
(declare-sort var568 0)
(declare-sort var2501 0)
(declare-sort var901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jonasroot/760687125 (var913) var2501)
(declare-fun append/-1031950772 (String var901) String)
(declare-fun cast-from-var2501-to-var901 (var2501) var901)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun registerDTD/1731724280 (var568 String String) void)
(declare-const null-var913 var913)
(declare-const null-var568 var568)
(declare-const var2501-separator String)
(declare-const var2351 var913) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool 
(assert (not (= var2351 null-var913)))
(declare-const var165 var568) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler 
(assert (not (= var165 null-var568)))
(define-const var2646 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2646)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2646!1 String)
(assert (= var2646!1 ""))
(define-const var2293 var2501 (jonasroot/760687125 var2351)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File jonasroot> 
(assert true)
(define-const var3495 String (append/-1031950772 var2646!1 (cast-from-var2501-to-var901 var2293))) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2646!2 String)
(assert (str.prefixof var2646!1 var2646!2))
(define-const var2291 String var2501-separator) ; Statement: $r4 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var2063 String (append/672562846 var3495 var2291)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3495!1 String)
(assert (= var3495!1 (str.++ var3495 var2291)))
(assert true)
(define-const var2970 String (append/672562846 var2063 "xml")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xml") 
(declare-const var2063!1 String)
(assert (= var2063!1 (str.++ var2063 "xml")))
(define-const var1760 String var2501-separator) ; Statement: $r7 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var0 String (append/672562846 var2970 var1760)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2970!1 String)
(assert (= var2970!1 (str.++ var2970 var1760)))
(assert true)
(define-const var2968 String (append/672562846 var0 "ejb-jar_1_1.dtd")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejb-jar_1_1.dtd") 
(declare-const var0!1 String)
(assert (= var0!1 (str.++ var0 "ejb-jar_1_1.dtd")))
(assert true)
(define-const var2257 String (toString/-2075883882 var2968)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (registerDTD/1731724280 var165 "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN" var2257)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void registerDTD(java.lang.String,java.lang.String)>("-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN", $r11) 

(declare-const var165!1 var568)
(declare-const var1625 String)
(declare-const var2257!1 String)
(define-const var105 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var105)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var105!1 String)
(assert (= var105!1 ""))
(define-const var3386 var2501 (jonasroot/760687125 var2351)) ; Statement: $r13 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File jonasroot> 
(assert true)
(define-const var1006 String (append/-1031950772 var105!1 (cast-from-var2501-to-var901 var3386))) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var105!2 String)
(assert (str.prefixof var105!1 var105!2))
(define-const var45 String var2501-separator) ; Statement: $r14 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var2275 String (append/672562846 var1006 var45)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1006!1 String)
(assert (= var1006!1 (str.++ var1006 var45)))
(assert true)
(define-const var2543 String (append/672562846 var2275 "xml")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xml") 
(declare-const var2275!1 String)
(assert (= var2275!1 (str.++ var2275 "xml")))
(define-const var2352 String var2501-separator) ; Statement: $r17 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var345 String (append/672562846 var2543 var2352)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2543!1 String)
(assert (= var2543!1 (str.++ var2543 var2352)))
(assert true)
(define-const var647 String (append/672562846 var345 "ejb-jar_2_0.dtd")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejb-jar_2_0.dtd") 
(declare-const var345!1 String)
(assert (= var345!1 (str.++ var345 "ejb-jar_2_0.dtd")))
(assert true)
(define-const var767 String (toString/-2075883882 var647)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (registerDTD/1731724280 var165!1 "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN" var767)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void registerDTD(java.lang.String,java.lang.String)>("-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN", $r21) 

(declare-const var165!2 var568)
(declare-const var3707 String)
(declare-const var767!1 String)
(define-const var94 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var94)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var94!1 String)
(assert (= var94!1 ""))
(define-const var3050 var2501 (jonasroot/760687125 var2351)) ; Statement: $r23 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File jonasroot> 
(assert true)
(define-const var378 String (append/-1031950772 var94!1 (cast-from-var2501-to-var901 var3050))) ; Statement: $r25 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r23) 
(declare-const var94!2 String)
(assert (str.prefixof var94!1 var94!2))
(define-const var3920 String var2501-separator) ; Statement: $r24 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var2779 String (append/672562846 var378 var3920)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var378!1 String)
(assert (= var378!1 (str.++ var378 var3920)))
(assert true)
(define-const var1950 String (append/672562846 var2779 "xml")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xml") 
(declare-const var2779!1 String)
(assert (= var2779!1 (str.++ var2779 "xml")))
(define-const var917 String var2501-separator) ; Statement: $r27 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var2559 String (append/672562846 var1950 var917)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1950!1 String)
(assert (= var1950!1 (str.++ var1950 var917)))
(assert true)
(define-const var426 String (append/672562846 var2559 "jonas-ejb-jar_2_4.dtd")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jonas-ejb-jar_2_4.dtd") 
(declare-const var2559!1 String)
(assert (= var2559!1 (str.++ var2559 "jonas-ejb-jar_2_4.dtd")))
(assert true)
(define-const var2945 String (toString/-2075883882 var426)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (registerDTD/1731724280 var165!2 "-//ObjectWeb//DTD JOnAS 2.4//EN" var2945)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void registerDTD(java.lang.String,java.lang.String)>("-//ObjectWeb//DTD JOnAS 2.4//EN", $r31) 

(declare-const var165!3 var568)
(declare-const var3413 String)
(declare-const var2945!1 String)
(define-const var646 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var646)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var646!1 String)
(assert (= var646!1 ""))
(define-const var846 var2501 (jonasroot/760687125 var2351)) ; Statement: $r33 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File jonasroot> 
(assert true)
(define-const var1929 String (append/-1031950772 var646!1 (cast-from-var2501-to-var901 var846))) ; Statement: $r35 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r33) 
(declare-const var646!2 String)
(assert (str.prefixof var646!1 var646!2))
(define-const var260 String var2501-separator) ; Statement: $r34 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var3787 String (append/672562846 var1929 var260)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var1929!1 String)
(assert (= var1929!1 (str.++ var1929 var260)))
(assert true)
(define-const var908 String (append/672562846 var3787 "xml")) ; Statement: $r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xml") 
(declare-const var3787!1 String)
(assert (= var3787!1 (str.++ var3787 "xml")))
(define-const var1251 String var2501-separator) ; Statement: $r37 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var2999 String (append/672562846 var908 var1251)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var908!1 String)
(assert (= var908!1 (str.++ var908 var1251)))
(assert true)
(define-const var2548 String (append/672562846 var2999 "jonas-ejb-jar_2_5.dtd")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jonas-ejb-jar_2_5.dtd") 
(declare-const var2999!1 String)
(assert (= var2999!1 (str.++ var2999 "jonas-ejb-jar_2_5.dtd")))
(assert true)
(define-const var2314 String (toString/-2075883882 var2548)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (registerDTD/1731724280 var165!3 "-//ObjectWeb//DTD JOnAS 2.5//EN" var2314)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void registerDTD(java.lang.String,java.lang.String)>("-//ObjectWeb//DTD JOnAS 2.5//EN", $r41) 

(declare-const var165!4 var568)
(declare-const var2136 String)
(declare-const var2314!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jonasroot/760687125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2501-to-var901=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), registerDTD/1731724280=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler, java.lang.String, java.lang.String], void)}
; {var913=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool, var2351=r2, var568=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler, var165=r0, var2646=$r1, var2501=java.io.File, var2293=$r3, var901=java.lang.Object, var3495=$r5, var2291=$r4, var2063=$r6, var2970=$r8, var1760=$r7, var0=$r9, var2968=$r10, var2257=$r11, var1625="-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN", var105=$r12, var3386=$r13, var1006=$r15, var45=$r14, var2275=$r16, var2543=$r18, var2352=$r17, var345=$r19, var647=$r20, var767=$r21, var3707="-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN", var94=$r22, var3050=$r23, var378=$r25, var3920=$r24, var2779=$r26, var1950=$r28, var917=$r27, var2559=$r29, var426=$r30, var2945=$r31, var3413="-//ObjectWeb//DTD JOnAS 2.4//EN", var646=$r32, var846=$r33, var1929=$r35, var260=$r34, var3787=$r36, var908=$r38, var1251=$r37, var2999=$r39, var2548=$r40, var2314=$r41, var2136="-//ObjectWeb//DTD JOnAS 2.5//EN"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool=var913, r2=var2351, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler=var568, r0=var165, $r1=var2646, java.io.File=var2501, $r3=var2293, java.lang.Object=var901, $r5=var3495, $r4=var2291, $r6=var2063, $r8=var2970, $r7=var1760, $r9=var0, $r10=var2968, $r11=var2257, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"=var1625, $r12=var105, $r13=var3386, $r15=var1006, $r14=var45, $r16=var2275, $r18=var2543, $r17=var2352, $r19=var345, $r20=var647, $r21=var767, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"=var3707, $r22=var94, $r23=var3050, $r25=var378, $r24=var3920, $r26=var2779, $r28=var1950, $r27=var917, $r29=var2559, $r30=var426, $r31=var2945, "-//ObjectWeb//DTD JOnAS 2.4//EN"=var3413, $r32=var646, $r33=var846, $r35=var1929, $r34=var260, $r36=var3787, $r38=var908, $r37=var1251, $r39=var2999, $r40=var2548, $r41=var2314, "-//ObjectWeb//DTD JOnAS 2.5//EN"=var2136}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 16,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File jonasroot>;	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r4 = <java.io.File: java.lang.String separator>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xml");	$r7 = <java.io.File: java.lang.String separator>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejb-jar_1_1.dtd");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void registerDTD(java.lang.String,java.lang.String)>("-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN", $r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File jonasroot>;	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r14 = <java.io.File: java.lang.String separator>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xml");	$r17 = <java.io.File: java.lang.String separator>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejb-jar_2_0.dtd");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void registerDTD(java.lang.String,java.lang.String)>("-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN", $r21);	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File jonasroot>;	$r25 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r23);	$r24 = <java.io.File: java.lang.String separator>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xml");	$r27 = <java.io.File: java.lang.String separator>;	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jonas-ejb-jar_2_4.dtd");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void registerDTD(java.lang.String,java.lang.String)>("-//ObjectWeb//DTD JOnAS 2.4//EN", $r31);	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r33 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File jonasroot>;	$r35 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r33);	$r34 = <java.io.File: java.lang.String separator>;	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xml");	$r37 = <java.io.File: java.lang.String separator>;	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jonas-ejb-jar_2_5.dtd");	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void registerDTD(java.lang.String,java.lang.String)>("-//ObjectWeb//DTD JOnAS 2.5//EN", $r41);	return
;block_num 1