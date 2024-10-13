(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1160 0)
(declare-sort var2513 0)
(declare-sort var1154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2513) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1154_fail/1175601834 (String) void)
(declare-const null-String String)
(declare-const null-var2513 var2513)
(declare-const var3126 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3126 null-String)))
(declare-const var334 var2513) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var334 null-var2513)))
(define-const var2622 String "") ; Statement: r11 = "" 
 ; Statement: if r0 == null goto $r1 = new java.lang.StringBuilder 
(assert (= var3126 null-String)) ; Cond: r0 == null 
(define-const var2314 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2314)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2314!1 String)
(assert (= var2314!1 ""))
(assert true)
(define-const var3744 String (append/672562846 var2314!1 var2622)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var2314!2 String)
(assert (= var2314!2 (str.++ var2314!1 var2622)))
(assert true)
(define-const var2737 String (append/672562846 var3744 "expected null, but was:<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected null, but was:<") 
(declare-const var3744!1 String)
(assert (= var3744!1 (str.++ var3744 "expected null, but was:<")))
(assert true)
(define-const var1735 String (append/-1031950772 var2737 var334)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2737!1 String)
(assert (str.prefixof var2737 var2737!1))
(assert true)
(define-const var1695 String (append/672562846 var1735 ">")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1735!1 String)
(assert (= var1735!1 (str.++ var1735 ">")))
(assert true)
(define-const var901 String (toString/-2075883882 var1695)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1154_fail/1175601834 var901)) ; Statement: staticinvoke <org.junit.Assert: void fail(java.lang.String)>($r7) 

(declare-const var901!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1154_fail/1175601834=([java.lang.String], void)}
; {var3126=r0, var1160=null_type, var2513=java.lang.Object, var334=r3, var2622=r11, var2314=$r1, var3744=$r2, var2737=$r4, var1735=$r5, var1695=$r6, var901=$r7, var1154=org.junit.Assert}
; {r0=var3126, null_type=var1160, java.lang.Object=var2513, r3=var334, r11=var2622, $r1=var2314, $r2=var3744, $r4=var2737, $r5=var1735, $r6=var1695, $r7=var901, org.junit.Assert=var1154}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	r11 = "";	if r0 == null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected null, but was:<");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.junit.Assert: void fail(java.lang.String)>($r7);	return
;block_num 2