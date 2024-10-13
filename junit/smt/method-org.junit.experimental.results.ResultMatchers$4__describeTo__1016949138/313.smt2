(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1754 0)
(declare-sort var947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$string/-2063532510 (var1754) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var947_appendText/1556729331 (var947 String) var947)
(declare-const null-var1754 var1754)
(declare-const null-var947 var947)
(declare-const var3690 var1754) ; Statement: r2 := @this: org.junit.experimental.results.ResultMatchers$4 
(assert (not (= var3690 null-var1754)))
(declare-const var1652 var947) ; Statement: r0 := @parameter0: org.hamcrest.Description 
(assert (not (= var1652 null-var947)))
(define-const var3874 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3874)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3874!1 String)
(assert (= var3874!1 ""))
(assert true)
(define-const var1690 String (append/672562846 var3874!1 "has failure containing ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has failure containing ") 
(declare-const var3874!2 String)
(assert (= var3874!2 (str.++ var3874!1 "has failure containing ")))
(define-const var656 String (val$string/-2063532510 var3690)) ; Statement: $r3 = r2.<org.junit.experimental.results.ResultMatchers$4: java.lang.String val$string> 
(assert true)
(define-const var910 String (append/672562846 var1690 var656)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1690!1 String)
(assert (= var1690!1 (str.++ var1690 var656)))
(assert true)
(define-const var3703 String (toString/-2075883882 var910)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var947_appendText/1556729331 var1652 var3703)) ; Statement: interfaceinvoke r0.<org.hamcrest.Description: org.hamcrest.Description appendText(java.lang.String)>($r6) 

(declare-const var1652!1 var947)
(declare-const var3703!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$string/-2063532510=([org.junit.experimental.results.ResultMatchers$4], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var947_appendText/1556729331=([org.hamcrest.Description, java.lang.String], org.hamcrest.Description)}
; {var1754=org.junit.experimental.results.ResultMatchers$4, var3690=r2, var947=org.hamcrest.Description, var1652=r0, var3874=$r1, var1690=$r4, var656=$r3, var910=$r5, var3703=$r6}
; {org.junit.experimental.results.ResultMatchers$4=var1754, r2=var3690, org.hamcrest.Description=var947, r0=var1652, $r1=var3874, $r4=var1690, $r3=var656, $r5=var910, $r6=var3703}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.junit.experimental.results.ResultMatchers$4;	r0 := @parameter0: org.hamcrest.Description;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has failure containing ");	$r3 = r2.<org.junit.experimental.results.ResultMatchers$4: java.lang.String val$string>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.hamcrest.Description: org.hamcrest.Description appendText(java.lang.String)>($r6);	return
;block_num 1