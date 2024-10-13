(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1508 0)
(declare-sort var3926 0)
(declare-sort var976 0)
(declare-sort var3221 0)
(declare-sort var1729 0)
(declare-sort var1151 0)
(declare-sort var1511 0)
(declare-sort var45 0)
(declare-sort var2739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1729) String)
(declare-fun cast-from-var1508-to-var1729 (var1508) var1729)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var976 var1729) void)
(declare-fun cast-from-String-to-var1729 (String) var1729)
(declare-fun var1151-init () var1151)
(declare-fun var45-init () var45)
(declare-fun arr-var1729-init () (Array Int var1729))
(declare-fun String_format/1339386452 (String (Array Int var1729)) String)
(declare-fun <init>/335245530 (var45 String var2739) void)
(declare-fun cast-from-var1511-to-var2739 (var1511) var2739)
(declare-fun cast-from-var45-to-var2739 (var45) var2739)
(declare-const null-var1508 var1508)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3221-log var976)
(declare-const null-var1511 var1511)
(declare-const null-__Array__Int__var1729__ (Array Int var1729))
(declare-const var3678 var1508) ; Statement: r2 := @parameter0: java.net.URL 
(assert (not (= var3678 null-var1508)))
(declare-const var2896 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2896 null-String)))
(declare-const var2516 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2516 null-Bool)))
(define-const var3921 var976 var3221-log) ; Statement: $r1 = <org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToUrl: org.jboss.logging.Logger log> 
(define-const var2424 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2424)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2424!1 String)
(assert (= var2424!1 ""))
(assert true)
(define-const var513 String (append/672562846 var2424!1 "Attempting to resolve writer for URL : ")) ; Statement: $r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempting to resolve writer for URL : ") 
(declare-const var2424!2 String)
(assert (= var2424!2 (str.++ var2424!1 "Attempting to resolve writer for URL : ")))
(assert true)
(define-const var732 String (append/-1031950772 var513 (cast-from-var1508-to-var1729 var3678))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var513!1 String)
(assert (str.prefixof var513 var513!1))
(assert true)
(define-const var2507 String (toString/-2075883882 var732)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var3921 (cast-from-String-to-var1729 var2507))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r5) 

(declare-const var3921!1 var976)
(declare-const var2507!1 String)
(define-const var3170 var1151 var1151-init) ; Statement: $r15 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var664 var1511) ; Statement: $r10 := @caughtexception 
(assert (not (= var664 null-var1511)))
(define-const var1961 var45 var45-init) ; Statement: $r16 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var1094 (Array Int var1729) arr-var1729-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var1094!1 (Array Int var1729))
(assert (not (= var1094!1 null-__Array__Int__var1729__)))
(assert (= (select var1094!1 0) (cast-from-var1508-to-var1729 var3678))) ; Statement: $r12[0] = r2 
(define-const var2139 String (String_format/1339386452 "Could not convert specified URL[%s] to a File reference" var1094!1)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not convert specified URL[%s] to a File reference", $r12) 
(assert true)
;(assert (<init>/335245530 var1961 var2139 (cast-from-var1511-to-var2739 var664))) ; Statement: specialinvoke $r16.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r10) 

(declare-const var1961!1 var45)
(declare-const var2139!1 String)
(declare-const var664!1 var1511)
(define-const var3712 var2739 (cast-from-var45-to-var2739 var1961!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1508-to-var1729=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var1729=([java.lang.String], java.lang.Object), var1151-init=([], java.io.File), var45-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), arr-var1729-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/335245530=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String, java.lang.Throwable], void), cast-from-var1511-to-var2739=([java.net.URISyntaxException], java.lang.Throwable), cast-from-var45-to-var2739=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var1508=java.net.URL, var3678=r2, var2896=r8, var3926=null_type, var2516=z0, var976=org.jboss.logging.Logger, var3221=org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToUrl, var3921=$r1, var2424=$r14, var513=$r3, var1729=java.lang.Object, var732=$r4, var2507=$r5, var1151=java.io.File, var3170=$r15, var1511=java.net.URISyntaxException, var664=$r10, var45=org.hibernate.tool.schema.spi.SchemaManagementException, var1961=$r16, var1094=$r12, var2139=$r13, var2739=java.lang.Throwable, var3712=$r17}
; {java.net.URL=var1508, r2=var3678, r8=var2896, null_type=var3926, z0=var2516, org.jboss.logging.Logger=var976, org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToUrl=var3221, $r1=var3921, $r14=var2424, $r3=var513, java.lang.Object=var1729, $r4=var732, $r5=var2507, java.io.File=var1151, $r15=var3170, java.net.URISyntaxException=var1511, $r10=var664, org.hibernate.tool.schema.spi.SchemaManagementException=var45, $r16=var1961, $r12=var1094, $r13=var2139, java.lang.Throwable=var2739, $r17=var3712}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @parameter0: java.net.URL;	r8 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r1 = <org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToUrl: org.jboss.logging.Logger log>;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempting to resolve writer for URL : ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r5);	$r15 = new java.io.File;	$r10 := @caughtexception;	$r16 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r12 = newarray (java.lang.Object)[1];	$r12[0] = r2;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not convert specified URL[%s] to a File reference", $r12);	specialinvoke $r16.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r10);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2