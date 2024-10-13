(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3928 0)
(declare-sort var1953 0)
(declare-sort var679 0)
(declare-sort var397 0)
(declare-sort var3674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var1953) Bool)
(declare-fun var679-init () var679)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var397) String)
(declare-fun cast-from-var1953-to-var397 (var1953) var397)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/251655487 (var679 String) void)
(declare-fun cast-from-var679-to-var3674 (var679) var3674)
(declare-const null-var3928 var3928)
(declare-const null-var1953 var1953)
(declare-const var1221 var3928) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask 
(assert (not (= var1221 null-var3928)))
(declare-const var1530 var1953) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1530 null-var1953)))
(assert true)
(define-const var781 Bool (exists/1072868559 var1530)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (not (= (ite var781 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3503 var679 var679-init) ; Statement: $r13 = new org.apache.tools.ant.BuildException 
(define-const var1730 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1730)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1730!1 String)
(assert (= var1730!1 ""))
(assert true)
(define-const var3399 String (append/672562846 var1730!1 "Properties file [")) ; Statement: $r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties file [") 
(declare-const var1730!2 String)
(assert (= var1730!2 (str.++ var1730!1 "Properties file [")))
(assert true)
(define-const var2511 String (append/-1031950772 var3399 (cast-from-var1953-to-var397 var1530))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3399!1 String)
(assert (str.prefixof var3399 var3399!1))
(assert true)
(define-const var2762 String (append/672562846 var2511 "] does not exist.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not exist.") 
(declare-const var2511!1 String)
(assert (= var2511!1 (str.++ var2511 "] does not exist.")))
(assert true)
(define-const var406 String (toString/-2075883882 var2762)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/251655487 var3503 var406)) ; Statement: specialinvoke $r13.<org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11) 

(declare-const var3503!1 var679)
(declare-const var406!1 String)
(define-const var2114 var3674 (cast-from-var679-to-var3674 var3503!1)) ; Statement: $r15 = (java.lang.Throwable) $r13 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var679-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1953-to-var397=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/251655487=([org.apache.tools.ant.BuildException, java.lang.String], void), cast-from-var679-to-var3674=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var3928=org.hibernate.tool.hbm2ddl.SchemaValidatorTask, var1221=r1, var1953=java.io.File, var1530=r0, var781=$z0, var679=org.apache.tools.ant.BuildException, var3503=$r13, var1730=$r12, var3399=$r8, var397=java.lang.Object, var2511=$r9, var2762=$r10, var406=$r11, var3674=java.lang.Throwable, var2114=$r15}
; {org.hibernate.tool.hbm2ddl.SchemaValidatorTask=var3928, r1=var1221, java.io.File=var1953, r0=var1530, $z0=var781, org.apache.tools.ant.BuildException=var679, $r13=var3503, $r12=var1730, $r8=var3399, java.lang.Object=var397, $r9=var2511, $r10=var2762, $r11=var406, java.lang.Throwable=var3674, $r15=var2114}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r14 = new java.lang.StringBuilder;	$r13 = new org.apache.tools.ant.BuildException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties file [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not exist.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r13;	throw $r15
;block_num 2