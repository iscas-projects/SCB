(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var713 0)
(declare-sort var3397 0)
(declare-sort var2824 0)
(declare-sort var452 0)
(declare-sort var2256 0)
(declare-sort var1083 0)
(declare-sort var1760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun subdirPath/-1498075858 (var713) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun attemptFileAccess/-1498075858 (var713) Bool)
(declare-fun servletContext/-1498075858 (var713) var2824)
(declare-fun var1083_jQuoteNoXSS/34347637 (String) String)
(declare-fun warn/-449434436 (var2256 String var1760) void)
(declare-fun cast-from-var452-to-var1760 (var452) var1760)
(declare-const null-var713 var713)
(declare-const null-String String)
(declare-const null-var452 var452)
(declare-const var713-LOG var2256)
(declare-const var3176 var713) ; Statement: r1 := @this: freemarker.cache.WebappTemplateLoader 
(assert (not (= var3176 null-var713)))
(declare-const var2927 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2927 null-String)))
(define-const var1930 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1930)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1930!1 String)
(assert (= var1930!1 ""))
(define-const var1755 String (subdirPath/-1498075858 var3176)) ; Statement: $r2 = r1.<freemarker.cache.WebappTemplateLoader: java.lang.String subdirPath> 
(assert true)
(define-const var2805 String (append/672562846 var1930!1 var1755)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1930!2 String)
(assert (= var1930!2 (str.++ var1930!1 var1755)))
(assert true)
(define-const var2160 String (append/672562846 var2805 var2927)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2805!1 String)
(assert (= var2805!1 (str.++ var2805 var2927)))
(assert true)
(define-const var1993 String (toString/-2075883882 var2160)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var182 Bool (attemptFileAccess/-1498075858 var3176)) ; Statement: $z0 = r1.<freemarker.cache.WebappTemplateLoader: boolean attemptFileAccess> 
 ; Statement: if $z0 == 0 goto $r19 = r1.<freemarker.cache.WebappTemplateLoader: javax.servlet.ServletContext servletContext> 
(assert (= (ite var182 1 0) 0)) ; Cond: $z0 == 0 
(define-const var870 var2824 (servletContext/-1498075858 var3176)) ; Statement: $r19 = r1.<freemarker.cache.WebappTemplateLoader: javax.servlet.ServletContext servletContext> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var263 var452) ; Statement: $r10 := @caughtexception 
(assert (not (= var263 null-var452)))
(define-const var141 var2256 var713-LOG) ; Statement: $r12 = <freemarker.cache.WebappTemplateLoader: freemarker.log.Logger LOG> 
(define-const var1935 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1935)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1935!1 String)
(assert (= var1935!1 ""))
(assert true)
(define-const var1672 String (append/672562846 var1935!1 "Could not retrieve resource ")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not retrieve resource ") 
(declare-const var1935!2 String)
(assert (= var1935!2 (str.++ var1935!1 "Could not retrieve resource ")))
(define-const var905 String (var1083_jQuoteNoXSS/34347637 var1993)) ; Statement: $r13 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r6) 
(assert true)
(define-const var2667 String (append/672562846 var1672 var905)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1672!1 String)
(assert (= var1672!1 (str.++ var1672 var905)))
(assert true)
(define-const var2333 String (toString/-2075883882 var2667)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warn/-449434436 var141 var2333 (cast-from-var452-to-var1760 var263))) ; Statement: virtualinvoke $r12.<freemarker.log.Logger: void warn(java.lang.String,java.lang.Throwable)>($r16, $r10) 

(declare-const var141!1 var2256)
(declare-const var2333!1 String)
(declare-const var263!1 var452)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), subdirPath/-1498075858=([freemarker.cache.WebappTemplateLoader], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), attemptFileAccess/-1498075858=([freemarker.cache.WebappTemplateLoader], boolean), servletContext/-1498075858=([freemarker.cache.WebappTemplateLoader], javax.servlet.ServletContext), var1083_jQuoteNoXSS/34347637=([java.lang.String], java.lang.String), warn/-449434436=([freemarker.log.Logger, java.lang.String, java.lang.Throwable], void), cast-from-var452-to-var1760=([java.net.MalformedURLException], java.lang.Throwable)}
; {var713=freemarker.cache.WebappTemplateLoader, var3176=r1, var2927=r3, var3397=null_type, var1930=$r0, var1755=$r2, var2805=$r4, var2160=$r5, var1993=r6, var182=$z0, var2824=javax.servlet.ServletContext, var870=$r19, var452=java.net.MalformedURLException, var263=$r10, var2256=freemarker.log.Logger, var141=$r12, var1935=$r11, var1672=$r14, var1083=freemarker.template.utility.StringUtil, var905=$r13, var2667=$r15, var2333=$r16, var1760=java.lang.Throwable}
; {freemarker.cache.WebappTemplateLoader=var713, r1=var3176, r3=var2927, null_type=var3397, $r0=var1930, $r2=var1755, $r4=var2805, $r5=var2160, r6=var1993, $z0=var182, javax.servlet.ServletContext=var2824, $r19=var870, java.net.MalformedURLException=var452, $r10=var263, freemarker.log.Logger=var2256, $r12=var141, $r11=var1935, $r14=var1672, freemarker.template.utility.StringUtil=var1083, $r13=var905, $r15=var2667, $r16=var2333, java.lang.Throwable=var1760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: freemarker.cache.WebappTemplateLoader;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.cache.WebappTemplateLoader: java.lang.String subdirPath>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = r1.<freemarker.cache.WebappTemplateLoader: boolean attemptFileAccess>;	if $z0 == 0 goto $r19 = r1.<freemarker.cache.WebappTemplateLoader: javax.servlet.ServletContext servletContext>;	$r19 = r1.<freemarker.cache.WebappTemplateLoader: javax.servlet.ServletContext servletContext>;	$r10 := @caughtexception;	$r12 = <freemarker.cache.WebappTemplateLoader: freemarker.log.Logger LOG>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not retrieve resource ");	$r13 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r6);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r12.<freemarker.log.Logger: void warn(java.lang.String,java.lang.Throwable)>($r16, $r10);	return null
;block_num 3