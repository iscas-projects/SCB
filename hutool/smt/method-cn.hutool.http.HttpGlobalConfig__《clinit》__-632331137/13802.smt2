(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1380_randomString/2053512737 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-const var2283 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(define-const var3105 Int var2283) ; Statement: <cn.hutool.http.HttpGlobalConfig: int timeout> = $i1 
(define-const var1246 Bool (ite (= 1 0) true false)) ; Statement: <cn.hutool.http.HttpGlobalConfig: boolean isAllowPatch> = 0 
(define-const var1538 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1538)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1538!1 String)
(assert (= var1538!1 ""))
(assert true)
(define-const var2912 String (append/672562846 var1538!1 "--------------------Hutool_")) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("--------------------Hutool_") 
(declare-const var1538!2 String)
(assert (= var1538!2 (str.++ var1538!1 "--------------------Hutool_")))
(define-const var98 String (var1380_randomString/2053512737 16)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.RandomUtil: java.lang.String randomString(int)>(16) 
(assert true)
(define-const var1154 String (append/672562846 var2912 var98)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2912!1 String)
(assert (= var2912!1 (str.++ var2912 var98)))
(assert true)
(define-const var2270 String (toString/-2075883882 var1154)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var586 String var2270) ; Statement: <cn.hutool.http.HttpGlobalConfig: java.lang.String boundary> = $r4 
(define-const var3754 Int 0) ; Statement: <cn.hutool.http.HttpGlobalConfig: int maxRedirectCount> = 0 
(define-const var3351 Bool (ite (= 1 1) true false)) ; Statement: <cn.hutool.http.HttpGlobalConfig: boolean ignoreEOFError> = 1 
(define-const var132 Bool (ite (= 1 0) true false)) ; Statement: <cn.hutool.http.HttpGlobalConfig: boolean decodeUrl> = 0 
(define-const var2991 Bool (ite (= 1 1) true false)) ; Statement: <cn.hutool.http.HttpGlobalConfig: boolean trustAnyHost> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1380_randomString/2053512737=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2283=$i1, var3105=<cn.hutool.http.HttpGlobalConfig: int timeout>, var1246=<cn.hutool.http.HttpGlobalConfig: boolean isAllowPatch>, var1538=$r5, var2912=$r2, var1380=cn.hutool.core.util.RandomUtil, var98=$r1, var1154=$r3, var2270=$r4, var586=<cn.hutool.http.HttpGlobalConfig: java.lang.String boundary>, var3754=<cn.hutool.http.HttpGlobalConfig: int maxRedirectCount>, var3351=<cn.hutool.http.HttpGlobalConfig: boolean ignoreEOFError>, var132=<cn.hutool.http.HttpGlobalConfig: boolean decodeUrl>, var2991=<cn.hutool.http.HttpGlobalConfig: boolean trustAnyHost>}
; {$i1=var2283, <cn.hutool.http.HttpGlobalConfig: int timeout>=var3105, <cn.hutool.http.HttpGlobalConfig: boolean isAllowPatch>=var1246, $r5=var1538, $r2=var2912, cn.hutool.core.util.RandomUtil=var1380, $r1=var98, $r3=var1154, $r4=var2270, <cn.hutool.http.HttpGlobalConfig: java.lang.String boundary>=var586, <cn.hutool.http.HttpGlobalConfig: int maxRedirectCount>=var3754, <cn.hutool.http.HttpGlobalConfig: boolean ignoreEOFError>=var3351, <cn.hutool.http.HttpGlobalConfig: boolean decodeUrl>=var132, <cn.hutool.http.HttpGlobalConfig: boolean trustAnyHost>=var2991}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $i1 = (int) -1;	<cn.hutool.http.HttpGlobalConfig: int timeout> = $i1;	<cn.hutool.http.HttpGlobalConfig: boolean isAllowPatch> = 0;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("--------------------Hutool_");	$r1 = staticinvoke <cn.hutool.core.util.RandomUtil: java.lang.String randomString(int)>(16);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	<cn.hutool.http.HttpGlobalConfig: java.lang.String boundary> = $r4;	<cn.hutool.http.HttpGlobalConfig: int maxRedirectCount> = 0;	<cn.hutool.http.HttpGlobalConfig: boolean ignoreEOFError> = 1;	<cn.hutool.http.HttpGlobalConfig: boolean decodeUrl> = 0;	<cn.hutool.http.HttpGlobalConfig: boolean trustAnyHost> = 1;	return
;block_num 1