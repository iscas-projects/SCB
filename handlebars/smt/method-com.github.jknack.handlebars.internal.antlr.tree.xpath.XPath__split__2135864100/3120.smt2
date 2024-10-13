(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1230 0)
(declare-sort var346 0)
(declare-sort var3493 0)
(declare-sort var514 0)
(declare-sort var3359 0)
(declare-sort var3948 0)
(declare-sort var259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3493-init () var3493)
(declare-fun var514-init () var514)
(declare-fun var3948-init () var3948)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var3948 String var259) void)
(declare-fun cast-from-var3359-to-var259 (var3359) var259)
(declare-const null-var1230 var1230)
(declare-const null-String String)
(declare-const null-var3359 var3359)
(declare-const var3358 var1230) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.antlr.tree.xpath.XPath 
(assert (not (= var3358 null-var1230)))
(declare-const var3942 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3942 null-String)))
(define-const var2804 var3493 var3493-init) ; Statement: $r0 = new com.github.jknack.handlebars.internal.antlr.ANTLRInputStream 
(define-const var3824 var514 var514-init) ; Statement: $r1 = new java.io.StringReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1574 var3359) ; Statement: $r31 := @caughtexception 
(assert (not (= var1574 null-var3359)))
(define-const var877 var3948 var3948-init) ; Statement: $r32 = new java.lang.IllegalArgumentException 
(define-const var1686 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1686)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1686!1 String)
(assert (= var1686!1 ""))
(assert true)
(define-const var1447 String (append/672562846 var1686!1 "Could not read path: ")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not read path: ") 
(declare-const var1686!2 String)
(assert (= var1686!2 (str.++ var1686!1 "Could not read path: ")))
(assert true)
(define-const var2499 String (append/672562846 var1447 var3942)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1447!1 String)
(assert (= var1447!1 (str.++ var1447 var3942)))
(assert true)
(define-const var2554 String (toString/-2075883882 var2499)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var877 var2554 (cast-from-var3359-to-var259 var1574))) ; Statement: specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r36, $r31) 

(declare-const var877!1 var3948)
(declare-const var2554!1 String)
(declare-const var1574!1 var3359)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var3493-init=([], com.github.jknack.handlebars.internal.antlr.ANTLRInputStream), var514-init=([], java.io.StringReader), var3948-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var3359-to-var259=([java.io.IOException], java.lang.Throwable)}
; {var1230=com.github.jknack.handlebars.internal.antlr.tree.xpath.XPath, var3358=r4, var3942=r2, var346=null_type, var3493=com.github.jknack.handlebars.internal.antlr.ANTLRInputStream, var2804=$r0, var514=java.io.StringReader, var3824=$r1, var3359=java.io.IOException, var1574=$r31, var3948=java.lang.IllegalArgumentException, var877=$r32, var1686=$r33, var1447=$r34, var2499=$r35, var2554=$r36, var259=java.lang.Throwable}
; {com.github.jknack.handlebars.internal.antlr.tree.xpath.XPath=var1230, r4=var3358, r2=var3942, null_type=var346, com.github.jknack.handlebars.internal.antlr.ANTLRInputStream=var3493, $r0=var2804, java.io.StringReader=var514, $r1=var3824, java.io.IOException=var3359, $r31=var1574, java.lang.IllegalArgumentException=var3948, $r32=var877, $r33=var1686, $r34=var1447, $r35=var2499, $r36=var2554, java.lang.Throwable=var259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.antlr.tree.xpath.XPath;	r2 := @parameter0: java.lang.String;	$r0 = new com.github.jknack.handlebars.internal.antlr.ANTLRInputStream;	$r1 = new java.io.StringReader;	$r31 := @caughtexception;	$r32 = new java.lang.IllegalArgumentException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not read path: ");	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r36, $r31);	throw $r32
;block_num 2