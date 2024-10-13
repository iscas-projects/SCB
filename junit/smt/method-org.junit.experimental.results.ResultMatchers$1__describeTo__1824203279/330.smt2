(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3419 0)
(declare-sort var1373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$count/-2063532513 (var3419) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1373_appendText/1556729331 (var1373 String) var1373)
(declare-const null-var3419 var3419)
(declare-const null-var1373 var1373)
(declare-const var3189 var3419) ; Statement: r2 := @this: org.junit.experimental.results.ResultMatchers$1 
(assert (not (= var3189 null-var3419)))
(declare-const var219 var1373) ; Statement: r0 := @parameter0: org.hamcrest.Description 
(assert (not (= var219 null-var1373)))
(define-const var3817 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3817)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3817!1 String)
(assert (= var3817!1 ""))
(assert true)
(define-const var3120 String (append/672562846 var3817!1 "has ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has ") 
(declare-const var3817!2 String)
(assert (= var3817!2 (str.++ var3817!1 "has ")))
(define-const var1349 Int (val$count/-2063532513 var3189)) ; Statement: $i0 = r2.<org.junit.experimental.results.ResultMatchers$1: int val$count> 
(assert true)
(define-const var3285 String (append/-1001720160 var3120 var1349)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3120!1 String)
(assert (str.prefixof var3120 var3120!1))
(assert true)
(define-const var1158 String (append/672562846 var3285 " failures")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" failures") 
(declare-const var3285!1 String)
(assert (= var3285!1 (str.++ var3285 " failures")))
(assert true)
(define-const var2795 String (toString/-2075883882 var1158)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1373_appendText/1556729331 var219 var2795)) ; Statement: interfaceinvoke r0.<org.hamcrest.Description: org.hamcrest.Description appendText(java.lang.String)>($r6) 

(declare-const var219!1 var1373)
(declare-const var2795!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$count/-2063532513=([org.junit.experimental.results.ResultMatchers$1], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1373_appendText/1556729331=([org.hamcrest.Description, java.lang.String], org.hamcrest.Description)}
; {var3419=org.junit.experimental.results.ResultMatchers$1, var3189=r2, var1373=org.hamcrest.Description, var219=r0, var3817=$r1, var3120=$r3, var1349=$i0, var3285=$r4, var1158=$r5, var2795=$r6}
; {org.junit.experimental.results.ResultMatchers$1=var3419, r2=var3189, org.hamcrest.Description=var1373, r0=var219, $r1=var3817, $r3=var3120, $i0=var1349, $r4=var3285, $r5=var1158, $r6=var2795}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.junit.experimental.results.ResultMatchers$1;	r0 := @parameter0: org.hamcrest.Description;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has ");	$i0 = r2.<org.junit.experimental.results.ResultMatchers$1: int val$count>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" failures");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.hamcrest.Description: org.hamcrest.Description appendText(java.lang.String)>($r6);	return
;block_num 1