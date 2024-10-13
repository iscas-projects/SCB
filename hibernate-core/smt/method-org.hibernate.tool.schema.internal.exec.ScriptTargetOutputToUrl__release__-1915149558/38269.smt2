(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3131 0)
(declare-sort var2044 0)
(declare-sort var1231 0)
(declare-sort var2993 0)
(declare-sort var1719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1231-init () var1231)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2993) String)
(declare-fun cast-from-var2044-to-var2993 (var2044) var2993)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2079914650 (var1231 String) void)
(declare-fun cast-from-var1231-to-var1719 (var1231) var1719)
(declare-const null-var3131 var3131)
(declare-const null-var2044 var2044)
(declare-const var2078 var3131) ; Statement: r0 := @this: org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToUrl 
(assert (not (= var2078 null-var3131)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3016 var2044) ; Statement: $r2 := @caughtexception 
(assert (not (= var3016 null-var2044)))
(define-const var2180 var1231 var1231-init) ; Statement: $r9 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var2480 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2480)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2480!1 String)
(assert (= var2480!1 ""))
(assert true)
(define-const var3646 String (append/672562846 var2480!1 "Unable to close file writer : ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to close file writer : ") 
(declare-const var2480!2 String)
(assert (= var2480!2 (str.++ var2480!1 "Unable to close file writer : ")))
(assert true)
(define-const var2630 String (append/-1031950772 var3646 (cast-from-var2044-to-var2993 var3016))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3646!1 String)
(assert (str.prefixof var3646 var3646!1))
(assert true)
(define-const var2529 String (toString/-2075883882 var2630)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2079914650 var2180 var2529)) ; Statement: specialinvoke $r9.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r7) 

(declare-const var2180!1 var1231)
(declare-const var2529!1 String)
(define-const var3919 var1719 (cast-from-var1231-to-var1719 var2180!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1231-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2044-to-var2993=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var1231-to-var1719=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var3131=org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToUrl, var2078=r0, var2044=java.io.IOException, var3016=$r2, var1231=org.hibernate.tool.schema.spi.SchemaManagementException, var2180=$r9, var2480=$r8, var3646=$r5, var2993=java.lang.Object, var2630=$r6, var2529=$r7, var1719=java.lang.Throwable, var3919=$r10}
; {org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToUrl=var3131, r0=var2078, java.io.IOException=var2044, $r2=var3016, org.hibernate.tool.schema.spi.SchemaManagementException=var1231, $r9=var2180, $r8=var2480, $r5=var3646, java.lang.Object=var2993, $r6=var2630, $r7=var2529, java.lang.Throwable=var1719, $r10=var3919}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToUrl;	$r2 := @caughtexception;	$r9 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to close file writer : ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2