(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2047 0)
(declare-sort var232 0)
(declare-sort var1533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var232) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1533_fail/1175601834 (String) void)
(declare-const null-String String)
(declare-const null-var232 var232)
(declare-const var2387 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2387 null-String)))
(declare-const var141 var232) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var141 null-var232)))
(declare-const var981 var232) ; Statement: r6 := @parameter2: java.lang.Object 
(assert (not (= var981 null-var232)))
(define-const var3222 String "") ; Statement: r14 = "" 
 ; Statement: if r0 == null goto $r1 = new java.lang.StringBuilder 
(assert (= var2387 null-String)) ; Cond: r0 == null 
(define-const var1964 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1964)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1964!1 String)
(assert (= var1964!1 ""))
(assert true)
(define-const var2310 String (append/672562846 var1964!1 var3222)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1964!2 String)
(assert (= var1964!2 (str.++ var1964!1 var3222)))
(assert true)
(define-const var2158 String (append/672562846 var2310 "expected same:<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected same:<") 
(declare-const var2310!1 String)
(assert (= var2310!1 (str.++ var2310 "expected same:<")))
(assert true)
(define-const var1294 String (append/-1031950772 var2158 var141)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2158!1 String)
(assert (str.prefixof var2158 var2158!1))
(assert true)
(define-const var713 String (append/672562846 var1294 "> was not:<")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> was not:<") 
(declare-const var1294!1 String)
(assert (= var1294!1 (str.++ var1294 "> was not:<")))
(assert true)
(define-const var1078 String (append/-1031950772 var713 var981)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var713!1 String)
(assert (str.prefixof var713 var713!1))
(assert true)
(define-const var3219 String (append/672562846 var1078 ">")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1078!1 String)
(assert (= var1078!1 (str.++ var1078 ">")))
(assert true)
(define-const var2452 String (toString/-2075883882 var3219)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1533_fail/1175601834 var2452)) ; Statement: staticinvoke <org.junit.Assert: void fail(java.lang.String)>($r10) 

(declare-const var2452!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1533_fail/1175601834=([java.lang.String], void)}
; {var2387=r0, var2047=null_type, var232=java.lang.Object, var141=r3, var981=r6, var3222=r14, var1964=$r1, var2310=$r2, var2158=$r4, var1294=$r5, var713=$r7, var1078=$r8, var3219=$r9, var2452=$r10, var1533=org.junit.Assert}
; {r0=var2387, null_type=var2047, java.lang.Object=var232, r3=var141, r6=var981, r14=var3222, $r1=var1964, $r2=var2310, $r4=var2158, $r5=var1294, $r7=var713, $r8=var1078, $r9=var3219, $r10=var2452, org.junit.Assert=var1533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	r6 := @parameter2: java.lang.Object;	r14 = "";	if r0 == null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected same:<");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> was not:<");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.junit.Assert: void fail(java.lang.String)>($r10);	return
;block_num 2