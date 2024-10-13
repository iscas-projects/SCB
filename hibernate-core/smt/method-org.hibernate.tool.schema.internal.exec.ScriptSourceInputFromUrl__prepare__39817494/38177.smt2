(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var641 0)
(declare-sort var3429 0)
(declare-sort var1287 0)
(declare-sort var3431 0)
(declare-sort var3465 0)
(declare-sort var3925 0)
(declare-sort var3949 0)
(declare-sort var1582 0)
(declare-sort var3889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prepare/-639980001 (var3429) void)
(declare-fun cast-from-var641-to-var3429 (var641) var3429)
(declare-fun charsetName/592779914 (var641) String)
(declare-fun var3431-init () var3431)
(declare-fun url/592779914 (var641) var3465)
(declare-fun var3949-init () var3949)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1582) String)
(declare-fun cast-from-var3465-to-var1582 (var3465) var1582)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2079914650 (var3949 String) void)
(declare-fun cast-from-var3949-to-var3889 (var3949) var3889)
(declare-const null-var641 var641)
(declare-const null-String String)
(declare-const null-var3925 var3925)
(declare-const var2741 var641) ; Statement: r0 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl 
(assert (not (= var2741 null-var641)))
(assert true)
;(assert (prepare/-639980001 (cast-from-var641-to-var3429 var2741))) ; Statement: specialinvoke r0.<org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput: void prepare()>() 

(declare-const var2741!1 var641)
(define-const var3327 String (charsetName/592779914 var2741!1)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.lang.String charsetName> 
 ; Statement: if $r1 == null goto $r17 = new java.io.InputStreamReader 
(assert (not (= var3327 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3346 var3431 var3431-init) ; Statement: $r16 = new java.io.InputStreamReader 
(define-const var1517 var3431 var3346) ; Statement: $r15 = $r16 
(define-const var574 var3465 (url/592779914 var2741!1)) ; Statement: $r4 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2835 var3925) ; Statement: $r7 := @caughtexception 
(assert (not (= var2835 null-var3925)))
(define-const var1302 var3949 var3949-init) ; Statement: $r19 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var1022 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1022)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1022!1 String)
(assert (= var1022!1 ""))
(assert true)
(define-const var416 String (append/672562846 var1022!1 "Unable to open specified script source url [")) ; Statement: $r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open specified script source url [") 
(declare-const var1022!2 String)
(assert (= var1022!2 (str.++ var1022!1 "Unable to open specified script source url [")))
(define-const var2512 var3465 (url/592779914 var2741!1)) ; Statement: $r10 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url> 
(assert true)
(define-const var1196 String (append/-1031950772 var416 (cast-from-var3465-to-var1582 var2512))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var416!1 String)
(assert (str.prefixof var416 var416!1))
(assert true)
(define-const var53 String (append/672562846 var1196 "] for reading")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for reading") 
(declare-const var1196!1 String)
(assert (= var1196!1 (str.++ var1196 "] for reading")))
(assert true)
(define-const var1857 String (toString/-2075883882 var53)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2079914650 var1302 var1857)) ; Statement: specialinvoke $r19.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r14) 

(declare-const var1302!1 var3949)
(declare-const var1857!1 String)
(define-const var3507 var3889 (cast-from-var3949-to-var3889 var1302!1)) ; Statement: $r20 = (java.lang.Throwable) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {prepare/-639980001=([org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput], void), cast-from-var641-to-var3429=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl], org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput), charsetName/592779914=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl], java.lang.String), var3431-init=([], java.io.InputStreamReader), url/592779914=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl], java.net.URL), var3949-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3465-to-var1582=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var3949-to-var3889=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var641=org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl, var2741=r0, var3429=org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput, var3327=$r1, var1287=null_type, var3431=java.io.InputStreamReader, var3346=$r16, var1517=$r15, var3465=java.net.URL, var574=$r4, var3925=java.io.IOException, var2835=$r7, var3949=org.hibernate.tool.schema.spi.SchemaManagementException, var1302=$r19, var1022=$r18, var416=$r11, var2512=$r10, var1582=java.lang.Object, var1196=$r12, var53=$r13, var1857=$r14, var3889=java.lang.Throwable, var3507=$r20}
; {org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl=var641, r0=var2741, org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput=var3429, $r1=var3327, null_type=var1287, java.io.InputStreamReader=var3431, $r16=var3346, $r15=var1517, java.net.URL=var3465, $r4=var574, java.io.IOException=var3925, $r7=var2835, org.hibernate.tool.schema.spi.SchemaManagementException=var3949, $r19=var1302, $r18=var1022, $r11=var416, $r10=var2512, java.lang.Object=var1582, $r12=var1196, $r13=var53, $r14=var1857, java.lang.Throwable=var3889, $r20=var3507}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl;	specialinvoke r0.<org.hibernate.tool.schema.internal.exec.AbstractScriptSourceInput: void prepare()>();	$r1 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.lang.String charsetName>;	if $r1 == null goto $r17 = new java.io.InputStreamReader;	$r16 = new java.io.InputStreamReader;	$r15 = $r16;	$r4 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url>;	$r7 := @caughtexception;	$r19 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open specified script source url [");	$r10 = r0.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for reading");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r14);	$r20 = (java.lang.Throwable) $r19;	throw $r20
;block_num 3