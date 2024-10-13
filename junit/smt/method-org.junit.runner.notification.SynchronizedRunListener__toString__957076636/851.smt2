(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1664 0)
(declare-sort var1798 0)
(declare-sort var1580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun listener/1399296252 (var1664) var1798)
(declare-fun toString/-522406933 (var1580) String)
(declare-fun cast-from-var1798-to-var1580 (var1798) var1580)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1664 var1664)
(declare-const var3147 var1664) ; Statement: r1 := @this: org.junit.runner.notification.SynchronizedRunListener 
(assert (not (= var3147 null-var1664)))
(define-const var2903 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2903)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2903!1 String)
(assert (= var2903!1 ""))
(define-const var1626 var1798 (listener/1399296252 var3147)) ; Statement: $r2 = r1.<org.junit.runner.notification.SynchronizedRunListener: org.junit.runner.notification.RunListener listener> 
(assert true)
(define-const var3900 String (toString/-522406933 (cast-from-var1798-to-var1580 var1626))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2375 String (append/672562846 var2903!1 var3900)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2903!2 String)
(assert (= var2903!2 (str.++ var2903!1 var3900)))
(assert true)
(define-const var2296 String (append/672562846 var2375 " (with synchronization wrapper)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (with synchronization wrapper)") 
(declare-const var2375!1 String)
(assert (= var2375!1 (str.++ var2375 " (with synchronization wrapper)")))
(assert true)
(define-const var2978 String (toString/-2075883882 var2296)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), listener/1399296252=([org.junit.runner.notification.SynchronizedRunListener], org.junit.runner.notification.RunListener), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1798-to-var1580=([org.junit.runner.notification.RunListener], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1664=org.junit.runner.notification.SynchronizedRunListener, var3147=r1, var2903=$r0, var1798=org.junit.runner.notification.RunListener, var1626=$r2, var1580=java.lang.Object, var3900=$r3, var2375=$r4, var2296=$r5, var2978=$r6}
; {org.junit.runner.notification.SynchronizedRunListener=var1664, r1=var3147, $r0=var2903, org.junit.runner.notification.RunListener=var1798, $r2=var1626, java.lang.Object=var1580, $r3=var3900, $r4=var2375, $r5=var2296, $r6=var2978}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.runner.notification.SynchronizedRunListener;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.junit.runner.notification.SynchronizedRunListener: org.junit.runner.notification.RunListener listener>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (with synchronization wrapper)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1