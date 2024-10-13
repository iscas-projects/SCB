(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1865 0)
(declare-sort var955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1865!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1865_getBestValidator/596080015 () var955)
(define-const var3054 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3054)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3054!1 String)
(assert (= var3054!1 ""))
(define-const var3898 ClassObject var1865!class) ; Statement: $r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;" 
(assert true)
(define-const var465 String (getName/-1958580599 var3898)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1695 String (append/672562846 var3054!1 var465)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3054!2 String)
(assert (= var3054!2 (str.++ var3054!1 var465)))
(assert true)
(define-const var2974 String (append/672562846 var1695 "$ClassValueValidator")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$ClassValueValidator") 
(declare-const var1695!1 String)
(assert (= var1695!1 (str.++ var1695 "$ClassValueValidator")))
(assert true)
(define-const var1205 String (toString/-2075883882 var2974)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2690 String var1205) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: java.lang.String CLASS_VALUE_VALIDATOR_NAME> = $r5 
(define-const var2999 var955 var1865_getBestValidator/596080015) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator getBestValidator()>() 
(define-const var1631 var955 var2999) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator BEST_VALIDATOR> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1865_getBestValidator/596080015=([], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator)}
; {var3054=$r0, var1865=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder, var3898=$r1, var465=$r2, var1695=$r3, var2974=$r4, var1205=$r5, var2690=<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: java.lang.String CLASS_VALUE_VALIDATOR_NAME>, var955=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator, var2999=$r6, var1631=<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator BEST_VALIDATOR>}
; {$r0=var3054, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder=var1865, $r1=var3898, $r2=var465, $r3=var1695, $r4=var2974, $r5=var1205, <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: java.lang.String CLASS_VALUE_VALIDATOR_NAME>=var2690, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator=var955, $r6=var2999, <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator BEST_VALIDATOR>=var1631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$ClassValueValidator");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: java.lang.String CLASS_VALUE_VALIDATOR_NAME> = $r5;	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator getBestValidator()>();	<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidator BEST_VALIDATOR> = $r6;	return
;block_num 1