(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2749 0)
(declare-sort var3232 0)
(declare-sort var586 0)
(declare-sort var2999 0)
(declare-sort var2328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2999-init () var2999)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-138622904 (var2999 String var586) void)
(declare-fun cast-from-var2999-to-var2328 (var2999) var2328)
(declare-const null-var2749 var2749)
(declare-const null-String String)
(declare-const null-var586 var586)
(declare-const var3164 var2749) ; Statement: r14 := @this: freemarker.ext.dom.JaxenXPathSupport$5 
(assert (not (= var3164 null-var2749)))
(declare-const var859 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var859 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var467 var586) ; Statement: $r8 := @caughtexception 
(assert (not (= var467 null-var586)))
(define-const var123 var2999 var2999-init) ; Statement: $r19 = new org.jaxen.FunctionCallException 
(define-const var1511 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1511)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1511!1 String)
(assert (= var1511!1 ""))
(assert true)
(define-const var2979 String (append/672562846 var1511!1 "Failed to parse document for URI: ")) ; Statement: $r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse document for URI: ") 
(declare-const var1511!2 String)
(assert (= var1511!2 (str.++ var1511!1 "Failed to parse document for URI: ")))
(assert true)
(define-const var2772 String (append/672562846 var2979 var859)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2979!1 String)
(assert (= var2979!1 (str.++ var2979 var859)))
(assert true)
(define-const var1935 String (toString/-2075883882 var2772)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-138622904 var123 var1935 var467)) ; Statement: specialinvoke $r19.<org.jaxen.FunctionCallException: void <init>(java.lang.String,java.lang.Exception)>($r13, $r8) 

(declare-const var123!1 var2999)
(declare-const var1935!1 String)
(declare-const var467!1 var586)
(define-const var2989 var2328 (cast-from-var2999-to-var2328 var123!1)) ; Statement: $r20 = (java.lang.Throwable) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2999-init=([], org.jaxen.FunctionCallException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-138622904=([org.jaxen.FunctionCallException, java.lang.String, java.lang.Exception], void), cast-from-var2999-to-var2328=([org.jaxen.FunctionCallException], java.lang.Throwable)}
; {var2749=freemarker.ext.dom.JaxenXPathSupport$5, var3164=r14, var859=r0, var3232=null_type, var586=java.lang.Exception, var467=$r8, var2999=org.jaxen.FunctionCallException, var123=$r19, var1511=$r18, var2979=$r11, var2772=$r12, var1935=$r13, var2328=java.lang.Throwable, var2989=$r20}
; {freemarker.ext.dom.JaxenXPathSupport$5=var2749, r14=var3164, r0=var859, null_type=var3232, java.lang.Exception=var586, $r8=var467, org.jaxen.FunctionCallException=var2999, $r19=var123, $r18=var1511, $r11=var2979, $r12=var2772, $r13=var1935, java.lang.Throwable=var2328, $r20=var2989}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: freemarker.ext.dom.JaxenXPathSupport$5;	r0 := @parameter0: java.lang.String;	$r8 := @caughtexception;	$r19 = new org.jaxen.FunctionCallException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse document for URI: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.jaxen.FunctionCallException: void <init>(java.lang.String,java.lang.Exception)>($r13, $r8);	$r20 = (java.lang.Throwable) $r19;	throw $r20
;block_num 2