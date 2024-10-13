(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1052 0)
(declare-sort var60 0)
(declare-sort var855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var60) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var855_getShortClassNameOfObject/-1665341662 (var1052) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1052 var1052)
(declare-const null-var60 var60)
(declare-const var1090 var1052) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1090 null-var1052)))
(declare-const var1306 var60) ; Statement: r0 := @parameter1: java.lang.Throwable 
(assert (not (= var1306 null-var60)))
(assert true) ; Non Conditional
(assert true)
(define-const var1225 String (toString/-1112415476 var1306)) ; Statement: r11 = virtualinvoke r0.<java.lang.Throwable: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1560 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1560)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1560!1 String)
(assert (= var1560!1 ""))
(assert true)
(define-const var238 String (append/672562846 var1560!1 "[")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1560!2 String)
(assert (= var1560!2 (str.++ var1560!1 "[")))
(define-const var325 String (var855_getShortClassNameOfObject/-1665341662 var1090)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r2) 
(assert true)
(define-const var1774 String (append/672562846 var238 var325)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var238!1 String)
(assert (= var238!1 (str.++ var238 var325)))
(assert true)
(define-const var1502 String (append/672562846 var1774 ".toString() failed: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".toString() failed: ") 
(declare-const var1774!1 String)
(assert (= var1774!1 (str.++ var1774 ".toString() failed: ")))
(assert true)
(define-const var2642 String (append/672562846 var1502 var1225)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var1502!1 String)
(assert (= var1502!1 (str.++ var1502 var1225)))
(assert true)
(define-const var1621 String (append/672562846 var2642 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2642!1 String)
(assert (= var2642!1 (str.++ var2642 "]")))
(assert true)
(define-const var1079 String (toString/-2075883882 var1621)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var855_getShortClassNameOfObject/-1665341662=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1052=java.lang.Object, var1090=r2, var60=java.lang.Throwable, var1306=r0, var1225=r11, var1560=$r1, var238=$r4, var855=freemarker.template.utility.ClassUtil, var325=$r3, var1774=$r5, var1502=$r6, var2642=$r7, var1621=$r8, var1079=$r9}
; {java.lang.Object=var1052, r2=var1090, java.lang.Throwable=var60, r0=var1306, r11=var1225, $r1=var1560, $r4=var238, freemarker.template.utility.ClassUtil=var855, $r3=var325, $r5=var1774, $r6=var1502, $r7=var2642, $r8=var1621, $r9=var1079}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Throwable;	r11 = virtualinvoke r0.<java.lang.Throwable: java.lang.String toString()>();	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".toString() failed: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 4