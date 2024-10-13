(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3823 0)
(declare-sort var3863 0)
(declare-sort var3558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$service/1139337906 (var3823) var3863)
(declare-fun append/-1031950772 (String var3558) String)
(declare-fun cast-from-var3863-to-var3558 (var3863) var3558)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3823 var3823)
(declare-const var3133 var3823) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ServiceManager$ServiceManagerState$2 
(assert (not (= var3133 null-var3823)))
(define-const var454 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var454)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var454!1 String)
(assert (= var454!1 ""))
(assert true)
(define-const var81 String (append/672562846 var454!1 "failed({service=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed({service=") 
(declare-const var454!2 String)
(assert (= var454!2 (str.++ var454!1 "failed({service=")))
(define-const var1178 var3863 (val$service/1139337906 var3133)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ServiceManager$ServiceManagerState$2: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service val$service> 
(assert true)
(define-const var3907 String (append/-1031950772 var81 (cast-from-var3863-to-var3558 var1178))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var81!1 String)
(assert (str.prefixof var81 var81!1))
(assert true)
(define-const var1156 String (append/672562846 var3907 "})")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(declare-const var3907!1 String)
(assert (= var3907!1 (str.++ var3907 "})")))
(assert true)
(define-const var1688 String (toString/-2075883882 var1156)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$service/1139337906=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ServiceManager$ServiceManagerState$2], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3863-to-var3558=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3823=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ServiceManager$ServiceManagerState$2, var3133=r1, var454=$r0, var81=$r3, var3863=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service, var1178=$r2, var3558=java.lang.Object, var3907=$r4, var1156=$r5, var1688=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ServiceManager$ServiceManagerState$2=var3823, r1=var3133, $r0=var454, $r3=var81, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service=var3863, $r2=var1178, java.lang.Object=var3558, $r4=var3907, $r5=var1156, $r6=var1688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ServiceManager$ServiceManagerState$2;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed({service=");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ServiceManager$ServiceManagerState$2: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service val$service>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1