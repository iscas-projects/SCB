(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2561 0)
(declare-sort var1844 0)
(declare-sort var3735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3735-init () var3735)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1844) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3735 String) void)
(declare-const null-String String)
(declare-const null-var1844 var1844)
(declare-const var538 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var538 null-String)))
(declare-const var2277 var1844) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var2277 null-var1844)))
(declare-const var3344 var1844) ; Statement: r8 := @parameter2: java.lang.Object 
(assert (not (= var3344 null-var1844)))
(define-const var249 var3735 var3735-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1516 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1516)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1516!1 String)
(assert (= var1516!1 ""))
(assert true)
(define-const var234 String (append/672562846 var1516!1 "Multiple entries with same ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple entries with same ") 
(declare-const var1516!2 String)
(assert (= var1516!2 (str.++ var1516!1 "Multiple entries with same ")))
(assert true)
(define-const var2334 String (append/672562846 var234 var538)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var234!1 String)
(assert (= var234!1 (str.++ var234 var538)))
(assert true)
(define-const var3032 String (append/672562846 var2334 ": ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2334!1 String)
(assert (= var2334!1 (str.++ var2334 ": ")))
(assert true)
(define-const var3950 String (append/-1031950772 var3032 var2277)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var3032!1 String)
(assert (str.prefixof var3032 var3032!1))
(assert true)
(define-const var3082 String (append/672562846 var3950 " and ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var3950!1 String)
(assert (= var3950!1 (str.++ var3950 " and ")))
(assert true)
(define-const var755 String (append/-1031950772 var3082 var3344)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8) 
(declare-const var3082!1 String)
(assert (str.prefixof var3082 var3082!1))
(assert true)
(define-const var2396 String (toString/-2075883882 var755)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var249 var2396)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var249!1 var3735)
(declare-const var2396!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3735-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var538=r2, var2561=null_type, var1844=java.lang.Object, var2277=r5, var3344=r8, var3735=java.lang.IllegalArgumentException, var249=$r0, var1516=$r1, var234=$r3, var2334=$r4, var3032=$r6, var3950=$r7, var3082=$r9, var755=$r10, var2396=$r11}
; {r2=var538, null_type=var2561, java.lang.Object=var1844, r5=var2277, r8=var3344, java.lang.IllegalArgumentException=var3735, $r0=var249, $r1=var1516, $r3=var234, $r4=var2334, $r6=var3032, $r7=var3950, $r9=var3082, $r10=var755, $r11=var2396}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Object;	r8 := @parameter2: java.lang.Object;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple entries with same ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	return $r0
;block_num 1