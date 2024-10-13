(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1526 0)
(declare-sort var199 0)
(declare-sort var3883 0)
(declare-sort var1533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var1526-to-var199 (var1526) var199)
(declare-fun var1533_getDelay/1315303833 (var1533 var3883) Int)
(declare-fun cast-from-var199-to-var1533 (var199) var1533)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1526 var1526)
(declare-const var3883-MILLISECONDS var3883)
(declare-const var3255 var1526) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var3255 null-var1526)))
(define-const var1172 Bool true) ; Statement: $z0 = r0 instanceof java.util.concurrent.ScheduledFuture 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1172 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2771 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2771)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2771!1 String)
(assert (= var2771!1 ""))
(assert true)
(define-const var2206 String (append/672562846 var2771!1 "remaining delay=[")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("remaining delay=[") 
(declare-const var2771!2 String)
(assert (= var2771!2 (str.++ var2771!1 "remaining delay=[")))
(define-const var1994 var199 (cast-from-var1526-to-var199 var3255)) ; Statement: $r3 = (java.util.concurrent.ScheduledFuture) r0 
(define-const var3953 var3883 var3883-MILLISECONDS) ; Statement: $r2 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit MILLISECONDS> 
(define-const var2502 Int (var1533_getDelay/1315303833 (cast-from-var199-to-var1533 var1994) var3953)) ; Statement: $l0 = interfaceinvoke $r3.<java.util.concurrent.ScheduledFuture: long getDelay(java.util.concurrent.TimeUnit)>($r2) 
(assert true)
(define-const var115 String (append/-901862667 var2206 var2502)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2206!1 String)
(assert (str.prefixof var2206 var2206!1))
(assert true)
(define-const var1440 String (append/672562846 var115 " ms]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms]") 
(declare-const var115!1 String)
(assert (= var115!1 (str.++ var115 " ms]")))
(assert true)
(define-const var1198 String (toString/-2075883882 var1440)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var1526-to-var199=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.util.concurrent.ScheduledFuture), var1533_getDelay/1315303833=([java.util.concurrent.Delayed, java.util.concurrent.TimeUnit], long), cast-from-var199-to-var1533=([java.util.concurrent.ScheduledFuture], java.util.concurrent.Delayed), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1526=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var3255=r0, var1172=$z0, var2771=$r1, var2206=$r4, var199=java.util.concurrent.ScheduledFuture, var1994=$r3, var3883=java.util.concurrent.TimeUnit, var3953=$r2, var1533=java.util.concurrent.Delayed, var2502=$l0, var115=$r5, var1440=$r6, var1198=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var1526, r0=var3255, $z0=var1172, $r1=var2771, $r4=var2206, java.util.concurrent.ScheduledFuture=var199, $r3=var1994, java.util.concurrent.TimeUnit=var3883, $r2=var3953, java.util.concurrent.Delayed=var1533, $l0=var2502, $r5=var115, $r6=var1440, $r7=var1198}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	$z0 = r0 instanceof java.util.concurrent.ScheduledFuture;	if $z0 == 0 goto return null;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("remaining delay=[");	$r3 = (java.util.concurrent.ScheduledFuture) r0;	$r2 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit MILLISECONDS>;	$l0 = interfaceinvoke $r3.<java.util.concurrent.ScheduledFuture: long getDelay(java.util.concurrent.TimeUnit)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2