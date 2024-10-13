(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var164 0)
(declare-sort var1324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$string/-2063532512 (var164) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1324_appendText/1556729331 (var1324 String) var1324)
(declare-const null-var164 var164)
(declare-const null-var1324 var1324)
(declare-const var3197 var164) ; Statement: r2 := @this: org.junit.experimental.results.ResultMatchers$2 
(assert (not (= var3197 null-var164)))
(declare-const var704 var1324) ; Statement: r0 := @parameter0: org.hamcrest.Description 
(assert (not (= var704 null-var1324)))
(define-const var1655 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1655)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1655!1 String)
(assert (= var1655!1 ""))
(assert true)
(define-const var1386 String (append/672562846 var1655!1 "has single failure containing ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has single failure containing ") 
(declare-const var1655!2 String)
(assert (= var1655!2 (str.++ var1655!1 "has single failure containing ")))
(define-const var538 String (val$string/-2063532512 var3197)) ; Statement: $r3 = r2.<org.junit.experimental.results.ResultMatchers$2: java.lang.String val$string> 
(assert true)
(define-const var1116 String (append/672562846 var1386 var538)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1386!1 String)
(assert (= var1386!1 (str.++ var1386 var538)))
(assert true)
(define-const var1987 String (toString/-2075883882 var1116)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1324_appendText/1556729331 var704 var1987)) ; Statement: interfaceinvoke r0.<org.hamcrest.Description: org.hamcrest.Description appendText(java.lang.String)>($r6) 

(declare-const var704!1 var1324)
(declare-const var1987!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$string/-2063532512=([org.junit.experimental.results.ResultMatchers$2], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1324_appendText/1556729331=([org.hamcrest.Description, java.lang.String], org.hamcrest.Description)}
; {var164=org.junit.experimental.results.ResultMatchers$2, var3197=r2, var1324=org.hamcrest.Description, var704=r0, var1655=$r1, var1386=$r4, var538=$r3, var1116=$r5, var1987=$r6}
; {org.junit.experimental.results.ResultMatchers$2=var164, r2=var3197, org.hamcrest.Description=var1324, r0=var704, $r1=var1655, $r4=var1386, $r3=var538, $r5=var1116, $r6=var1987}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.junit.experimental.results.ResultMatchers$2;	r0 := @parameter0: org.hamcrest.Description;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has single failure containing ");	$r3 = r2.<org.junit.experimental.results.ResultMatchers$2: java.lang.String val$string>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.hamcrest.Description: org.hamcrest.Description appendText(java.lang.String)>($r6);	return
;block_num 1