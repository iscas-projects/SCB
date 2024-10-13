(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var906 0)
(declare-sort var531 0)
(declare-sort var503 0)
(declare-sort var3468 0)
(declare-sort var3139 0)
(declare-sort var886 0)
(declare-sort var609 0)
(declare-sort var43 0)
(declare-sort var876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prepare/-639980001 (var531) void)
(declare-fun cast-from-var906-to-var531 (var906) var531)
(declare-fun charsetName/592779914 (var906) String)
(declare-fun var3468-init () var3468)
(declare-fun url/592779914 (var906) var3139)
(declare-fun var609-init () var609)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var43) String)
(declare-fun cast-from-var3139-to-var43 (var3139) var43)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2079914650 (var609 String) void)
(declare-fun cast-from-var609-to-var876 (var609) var876)
(declare-const null-var906 var906)
(declare-const null-String String)
(declare-const null-var886 var886)
(declare-const var2331 var906) ; Statement: r0 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl 
(assert (not (= var2331 null-var906)))
(assert true)
;(assert (prepare/-639980001 (cast-from-var906-to-var531 var2331))) ; Statement: specialinvoke r0.<org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput: void prepare()>() 

(declare-const var2331!1 var906)
(define-const var877 String (charsetName/592779914 var2331!1)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.lang.String charsetName> 
 ; Statement: if $r1 == null goto $r17 = new java.io.InputStreamReader 
(assert (= var877 null-String)) ; Cond: $r1 == null 
(define-const var3580 var3468 var3468-init) ; Statement: $r17 = new java.io.InputStreamReader 
(define-const var1308 var3468 var3580) ; Statement: $r15 = $r17 
(define-const var3561 var3139 (url/592779914 var2331!1)) ; Statement: $r2 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1591 var886) ; Statement: $r7 := @caughtexception 
(assert (not (= var1591 null-var886)))
(define-const var1263 var609 var609-init) ; Statement: $r19 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var639 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var639)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var639!1 String)
(assert (= var639!1 ""))
(assert true)
(define-const var2284 String (append/672562846 var639!1 "Unable to open specified script source url [")) ; Statement: $r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open specified script source url [") 
(declare-const var639!2 String)
(assert (= var639!2 (str.++ var639!1 "Unable to open specified script source url [")))
(define-const var1255 var3139 (url/592779914 var2331!1)) ; Statement: $r10 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url> 
(assert true)
(define-const var1091 String (append/-1031950772 var2284 (cast-from-var3139-to-var43 var1255))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2284!1 String)
(assert (str.prefixof var2284 var2284!1))
(assert true)
(define-const var1631 String (append/672562846 var1091 "] for reading")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for reading") 
(declare-const var1091!1 String)
(assert (= var1091!1 (str.++ var1091 "] for reading")))
(assert true)
(define-const var3007 String (toString/-2075883882 var1631)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2079914650 var1263 var3007)) ; Statement: specialinvoke $r19.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r14) 

(declare-const var1263!1 var609)
(declare-const var3007!1 String)
(define-const var1772 var876 (cast-from-var609-to-var876 var1263!1)) ; Statement: $r20 = (java.lang.Throwable) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {prepare/-639980001=([org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput], void), cast-from-var906-to-var531=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl], org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput), charsetName/592779914=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl], java.lang.String), var3468-init=([], java.io.InputStreamReader), url/592779914=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl], java.net.URL), var609-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3139-to-var43=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var609-to-var876=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var906=org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl, var2331=r0, var531=org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput, var877=$r1, var503=null_type, var3468=java.io.InputStreamReader, var3580=$r17, var1308=$r15, var3139=java.net.URL, var3561=$r2, var886=java.io.IOException, var1591=$r7, var609=org.hibernate.tool.schema.spi.SchemaManagementException, var1263=$r19, var639=$r18, var2284=$r11, var1255=$r10, var43=java.lang.Object, var1091=$r12, var1631=$r13, var3007=$r14, var876=java.lang.Throwable, var1772=$r20}
; {org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl=var906, r0=var2331, org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput=var531, $r1=var877, null_type=var503, java.io.InputStreamReader=var3468, $r17=var3580, $r15=var1308, java.net.URL=var3139, $r2=var3561, java.io.IOException=var886, $r7=var1591, org.hibernate.tool.schema.spi.SchemaManagementException=var609, $r19=var1263, $r18=var639, $r11=var2284, $r10=var1255, java.lang.Object=var43, $r12=var1091, $r13=var1631, $r14=var3007, java.lang.Throwable=var876, $r20=var1772}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl;	specialinvoke r0.<org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput: void prepare()>();	$r1 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.lang.String charsetName>;	if $r1 == null goto $r17 = new java.io.InputStreamReader;	$r17 = new java.io.InputStreamReader;	$r15 = $r17;	$r2 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url>;	$r7 := @caughtexception;	$r19 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open specified script source url [");	$r10 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for reading");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r14);	$r20 = (java.lang.Throwable) $r19;	throw $r20
;block_num 3