(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1416 0)
(declare-sort var2316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun val$first/-1028590236 (var1416) var2316)
(declare-fun describe/-1732091346 (var2316) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$second/-1028590236 (var1416) var2316)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1416 var1416)
(declare-const var2421 var1416) ; Statement: r1 := @this: org.junit.runner.manipulation.Filter$3 
(assert (not (= var2421 null-var1416)))
(define-const var3838 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3838)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3838!1 String)
(assert (= var3838!1 ""))
(define-const var3759 var2316 (val$first/-1028590236 var2421)) ; Statement: $r2 = r1.<org.junit.runner.manipulation.Filter$3: org.junit.runner.manipulation.Filter val$first> 
(assert true)
(define-const var2074 String (describe/-1732091346 var3759)) ; Statement: $r3 = virtualinvoke $r2.<org.junit.runner.manipulation.Filter: java.lang.String describe()>() 
(assert true)
(define-const var15 String (append/672562846 var3838!1 var2074)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3838!2 String)
(assert (= var3838!2 (str.++ var3838!1 var2074)))
(assert true)
(define-const var226 String (append/672562846 var15 " and ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var15!1 String)
(assert (= var15!1 (str.++ var15 " and ")))
(define-const var2001 var2316 (val$second/-1028590236 var2421)) ; Statement: $r5 = r1.<org.junit.runner.manipulation.Filter$3: org.junit.runner.manipulation.Filter val$second> 
(assert true)
(define-const var839 String (describe/-1732091346 var2001)) ; Statement: $r6 = virtualinvoke $r5.<org.junit.runner.manipulation.Filter: java.lang.String describe()>() 
(assert true)
(define-const var2829 String (append/672562846 var226 var839)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var226!1 String)
(assert (= var226!1 (str.++ var226 var839)))
(assert true)
(define-const var475 String (toString/-2075883882 var2829)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), val$first/-1028590236=([org.junit.runner.manipulation.Filter$3], org.junit.runner.manipulation.Filter), describe/-1732091346=([org.junit.runner.manipulation.Filter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$second/-1028590236=([org.junit.runner.manipulation.Filter$3], org.junit.runner.manipulation.Filter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1416=org.junit.runner.manipulation.Filter$3, var2421=r1, var3838=$r0, var2316=org.junit.runner.manipulation.Filter, var3759=$r2, var2074=$r3, var15=$r4, var226=$r7, var2001=$r5, var839=$r6, var2829=$r8, var475=$r9}
; {org.junit.runner.manipulation.Filter$3=var1416, r1=var2421, $r0=var3838, org.junit.runner.manipulation.Filter=var2316, $r2=var3759, $r3=var2074, $r4=var15, $r7=var226, $r5=var2001, $r6=var839, $r8=var2829, $r9=var475}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.runner.manipulation.Filter$3;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.junit.runner.manipulation.Filter$3: org.junit.runner.manipulation.Filter val$first>;	$r3 = virtualinvoke $r2.<org.junit.runner.manipulation.Filter: java.lang.String describe()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r5 = r1.<org.junit.runner.manipulation.Filter$3: org.junit.runner.manipulation.Filter val$second>;	$r6 = virtualinvoke $r5.<org.junit.runner.manipulation.Filter: java.lang.String describe()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1