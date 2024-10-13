(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3954 0)
(declare-sort var292 0)
(declare-sort var1695 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var292-init () var292)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1695) String)
(declare-fun cast-from-var3954-to-var1695 (var3954) var1695)
(declare-fun var338_getShortClassName/646997481 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var292 String) void)
(declare-const null-var3954 var3954)
(declare-const null-ClassObject ClassObject)
(declare-const var3419 var3954) ; Statement: r2 := @parameter0: java.lang.Number 
(assert (not (= var3419 null-var3954)))
(declare-const var1644 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var1644 null-ClassObject)))
(define-const var3599 var292 var292-init) ; Statement: $r0 = new java.lang.ArithmeticException 
(define-const var3902 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3902)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3902!1 String)
(assert (= var3902!1 ""))
(assert true)
(define-const var94 String (append/672562846 var3902!1 "Can\u0027t convert ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t convert ") 
(declare-const var3902!2 String)
(assert (= var3902!2 (str.++ var3902!1 "Can\u0027t convert ")))
(assert true)
(define-const var685 String (append/-1031950772 var94 (cast-from-var3954-to-var1695 var3419))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var94!1 String)
(assert (str.prefixof var94 var94!1))
(assert true)
(define-const var3359 String (append/672562846 var685 " to type ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to type ") 
(declare-const var685!1 String)
(assert (= var685!1 (str.++ var685 " to type ")))
(define-const var521 String (var338_getShortClassName/646997481 var1644)) ; Statement: $r6 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassName(java.lang.Class)>(r5) 
(assert true)
(define-const var2617 String (append/672562846 var3359 var521)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3359!1 String)
(assert (= var3359!1 (str.++ var3359 var521)))
(assert true)
(define-const var3030 String (append/672562846 var2617 " without loss.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" without loss.") 
(declare-const var2617!1 String)
(assert (= var2617!1 (str.++ var2617 " without loss.")))
(assert true)
(define-const var1019 String (toString/-2075883882 var3030)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var3599 var1019)) ; Statement: specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r10) 

(declare-const var3599!1 var292)
(declare-const var1019!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var292-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3954-to-var1695=([java.lang.Number], java.lang.Object), var338_getShortClassName/646997481=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var3954=java.lang.Number, var3419=r2, var1644=r5, var292=java.lang.ArithmeticException, var3599=$r0, var3902=$r1, var94=$r3, var1695=java.lang.Object, var685=$r4, var3359=$r7, var338=freemarker.template.utility.ClassUtil, var521=$r6, var2617=$r8, var3030=$r9, var1019=$r10}
; {java.lang.Number=var3954, r2=var3419, r5=var1644, java.lang.ArithmeticException=var292, $r0=var3599, $r1=var3902, $r3=var94, java.lang.Object=var1695, $r4=var685, $r7=var3359, freemarker.template.utility.ClassUtil=var338, $r6=var521, $r8=var2617, $r9=var3030, $r10=var1019}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Number;	r5 := @parameter1: java.lang.Class;	$r0 = new java.lang.ArithmeticException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t convert ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to type ");	$r6 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassName(java.lang.Class)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" without loss.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r10);	return $r0
;block_num 1