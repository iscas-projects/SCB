(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3709 0)
(declare-sort var970 0)
(declare-sort var1415 0)
(declare-sort var3942 0)
(declare-sort var2440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun monitor/674028316 (var3709) var970)
(declare-fun isStartable/674028316 (var3709) var1415)
(declare-fun enterIf/-1391026303 (var970 var1415) Bool)
(declare-fun var3942-init () var3942)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2440) String)
(declare-fun cast-from-var3709-to-var2440 (var3709) var2440)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3942 String) void)
(declare-const null-var3709 var3709)
(declare-const var1963 var3709) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService 
(assert (not (= var1963 null-var3709)))
(define-const var3091 var970 (monitor/674028316 var1963)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor> 
(define-const var3649 var1415 (isStartable/674028316 var1963)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard isStartable> 
(assert true)
(define-const var3568 Bool (enterIf/-1391026303 var3091 var3649)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: boolean enterIf(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.IllegalStateException 
(assert (= (ite var3568 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1489 var3942 var3942-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var3775 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3775)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3775!1 String)
(assert (= var3775!1 ""))
(assert true)
(define-const var3387 String (append/672562846 var3775!1 "Service ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Service ") 
(declare-const var3775!2 String)
(assert (= var3775!2 (str.++ var3775!1 "Service ")))
(assert true)
(define-const var66 String (append/-1031950772 var3387 (cast-from-var3709-to-var2440 var1963))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3387!1 String)
(assert (str.prefixof var3387 var3387!1))
(assert true)
(define-const var3730 String (append/672562846 var66 " has already been started")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has already been started") 
(declare-const var66!1 String)
(assert (= var66!1 (str.++ var66 " has already been started")))
(assert true)
(define-const var1303 String (toString/-2075883882 var3730)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1489 var1303)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var1489!1 var3942)
(declare-const var1303!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {monitor/674028316=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor), isStartable/674028316=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard), enterIf/-1391026303=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard], boolean), var3942-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3709-to-var2440=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3709=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService, var1963=r0, var970=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor, var3091=$r2, var1415=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard, var3649=$r1, var3568=$z0, var3942=java.lang.IllegalStateException, var1489=$r3, var3775=$r4, var3387=$r5, var2440=java.lang.Object, var66=$r6, var3730=$r7, var1303=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService=var3709, r0=var1963, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor=var970, $r2=var3091, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard=var1415, $r1=var3649, $z0=var3568, java.lang.IllegalStateException=var3942, $r3=var1489, $r4=var3775, $r5=var3387, java.lang.Object=var2440, $r6=var66, $r7=var3730, $r8=var1303}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard isStartable>;	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: boolean enterIf(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard)>($r1);	if $z0 == 0 goto $r3 = new java.lang.IllegalStateException;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Service ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has already been started");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2