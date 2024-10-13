(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2175 0)
(declare-sort var3155 0)
(declare-sort var2871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var3155) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2871_getAOrAn/1506292159 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2175 var2175)
(declare-const null-var3155 var3155)
(declare-const var3526 var2175) ; Statement: r8 := @this: freemarker.core._DelayedAOrAn 
(assert (not (= var3526 null-var2175)))
(declare-const var1412 var3155) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1412 null-var3155)))
(assert true)
(define-const var2036 String (toString/-522406933 var1412)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(define-const var2943 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2943)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2943!1 String)
(assert (= var2943!1 ""))
(define-const var1066 String (var2871_getAOrAn/1506292159 var2036)) ; Statement: $r3 = staticinvoke <freemarker.core._MessageUtil: java.lang.String getAOrAn(java.lang.String)>(r1) 
(assert true)
(define-const var3347 String (append/672562846 var2943!1 var1066)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2943!2 String)
(assert (= var2943!2 (str.++ var2943!1 var1066)))
(assert true)
(define-const var3495 String (append/672562846 var3347 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 " ")))
(assert true)
(define-const var3415 String (append/672562846 var3495 var2036)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3495!1 String)
(assert (= var3495!1 (str.++ var3495 var2036)))
(assert true)
(define-const var126 String (toString/-2075883882 var3415)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2871_getAOrAn/1506292159=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2175=freemarker.core._DelayedAOrAn, var3526=r8, var3155=java.lang.Object, var1412=r0, var2036=r1, var2943=$r2, var2871=freemarker.core._MessageUtil, var1066=$r3, var3347=$r4, var3495=$r5, var3415=$r6, var126=$r7}
; {freemarker.core._DelayedAOrAn=var2175, r8=var3526, java.lang.Object=var3155, r0=var1412, r1=var2036, $r2=var2943, freemarker.core._MessageUtil=var2871, $r3=var1066, $r4=var3347, $r5=var3495, $r6=var3415, $r7=var126}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: freemarker.core._DelayedAOrAn;	r0 := @parameter0: java.lang.Object;	r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <freemarker.core._MessageUtil: java.lang.String getAOrAn(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1