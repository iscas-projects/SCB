(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2439 0)
(declare-sort var3640 0)
(declare-sort var1618 0)
(declare-sort var2844 0)
(declare-sort var2296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var3640) Bool)
(declare-fun var1618-init () var1618)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2844) String)
(declare-fun cast-from-var3640-to-var2844 (var3640) var2844)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/251655487 (var1618 String) void)
(declare-fun cast-from-var1618-to-var2296 (var1618) var2296)
(declare-const null-var2439 var2439)
(declare-const null-var3640 var3640)
(declare-const var3369 var2439) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask 
(assert (not (= var3369 null-var2439)))
(declare-const var3605 var3640) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3605 null-var3640)))
(assert true)
(define-const var621 Bool (exists/1072868559 var3605)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r15 = new java.lang.StringBuilder 
(assert (not (not (= (ite var621 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2093 var1618 var1618-init) ; Statement: $r14 = new org.apache.tools.ant.BuildException 
(define-const var62 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var62)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var62!1 String)
(assert (= var62!1 ""))
(assert true)
(define-const var3120 String (append/672562846 var62!1 "Configuration file [")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Configuration file [") 
(declare-const var62!2 String)
(assert (= var62!2 (str.++ var62!1 "Configuration file [")))
(assert true)
(define-const var2473 String (append/-1031950772 var3120 (cast-from-var3640-to-var2844 var3605))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3120!1 String)
(assert (str.prefixof var3120 var3120!1))
(assert true)
(define-const var48 String (append/672562846 var2473 "] does not exist.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not exist.") 
(declare-const var2473!1 String)
(assert (= var2473!1 (str.++ var2473 "] does not exist.")))
(assert true)
(define-const var1220 String (toString/-2075883882 var48)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/251655487 var2093 var1220)) ; Statement: specialinvoke $r14.<org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r12) 

(declare-const var2093!1 var1618)
(declare-const var1220!1 String)
(define-const var458 var2296 (cast-from-var1618-to-var2296 var2093!1)) ; Statement: $r16 = (java.lang.Throwable) $r14 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var1618-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3640-to-var2844=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/251655487=([org.apache.tools.ant.BuildException, java.lang.String], void), cast-from-var1618-to-var2296=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var2439=org.hibernate.tool.hbm2ddl.SchemaValidatorTask, var3369=r1, var3640=java.io.File, var3605=r0, var621=$z0, var1618=org.apache.tools.ant.BuildException, var2093=$r14, var62=$r13, var3120=$r9, var2844=java.lang.Object, var2473=$r10, var48=$r11, var1220=$r12, var2296=java.lang.Throwable, var458=$r16}
; {org.hibernate.tool.hbm2ddl.SchemaValidatorTask=var2439, r1=var3369, java.io.File=var3640, r0=var3605, $z0=var621, org.apache.tools.ant.BuildException=var1618, $r14=var2093, $r13=var62, $r9=var3120, java.lang.Object=var2844, $r10=var2473, $r11=var48, $r12=var1220, java.lang.Throwable=var2296, $r16=var458}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r15 = new java.lang.StringBuilder;	$r14 = new org.apache.tools.ant.BuildException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Configuration file [");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not exist.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r12);	$r16 = (java.lang.Throwable) $r14;	throw $r16
;block_num 2