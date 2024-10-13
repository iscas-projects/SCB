(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun c/-1196673876 (var151) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun d/-1196673876 (var151) Int)
(declare-fun k0/-1196673876 (var151) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun k1/-1196673876 (var151) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var151 var151)
(declare-const var901 var151) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction 
(assert (not (= var901 null-var151)))
(define-const var1825 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1825)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1825!1 String)
(assert (= var1825!1 ""))
(assert true)
(define-const var958 String (append/672562846 var1825!1 "Hashing.sipHash")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hashing.sipHash") 
(declare-const var1825!2 String)
(assert (= var1825!2 (str.++ var1825!1 "Hashing.sipHash")))
(define-const var2796 Int (c/-1196673876 var901)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction: int c> 
(assert true)
(define-const var2572 String (append/-1001720160 var958 var2796)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var958!1 String)
(assert (str.prefixof var958 var958!1))
(assert true)
(define-const var3465 String (append/672562846 var2572 "")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var2572!1 String)
(assert (= var2572!1 (str.++ var2572 "")))
(define-const var968 Int (d/-1196673876 var901)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction: int d> 
(assert true)
(define-const var2325 String (append/-1001720160 var3465 var968)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3465!1 String)
(assert (str.prefixof var3465 var3465!1))
(assert true)
(define-const var1940 String (append/672562846 var2325 "(")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2325!1 String)
(assert (= var2325!1 (str.++ var2325 "(")))
(define-const var1474 Int (k0/-1196673876 var901)) ; Statement: $l2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction: long k0> 
(assert true)
(define-const var3320 String (append/-901862667 var1940 var1474)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var1940!1 String)
(assert (str.prefixof var1940 var1940!1))
(assert true)
(define-const var416 String (append/672562846 var3320 ", ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3320!1 String)
(assert (= var3320!1 (str.++ var3320 ", ")))
(define-const var2651 Int (k1/-1196673876 var901)) ; Statement: $l3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction: long k1> 
(assert true)
(define-const var3120 String (append/-901862667 var416 var2651)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var416!1 String)
(assert (str.prefixof var416 var416!1))
(assert true)
(define-const var585 String (append/672562846 var3120 ")")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3120!1 String)
(assert (= var3120!1 (str.++ var3120 ")")))
(assert true)
(define-const var2687 String (toString/-2075883882 var585)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), c/-1196673876=([com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), d/-1196673876=([com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction], int), k0/-1196673876=([com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), k1/-1196673876=([com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var151=com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction, var901=r1, var1825=$r0, var958=$r2, var2796=$i0, var2572=$r3, var3465=$r4, var968=$i1, var2325=$r5, var1940=$r6, var1474=$l2, var3320=$r7, var416=$r8, var2651=$l3, var3120=$r9, var585=$r10, var2687=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction=var151, r1=var901, $r0=var1825, $r2=var958, $i0=var2796, $r3=var2572, $r4=var3465, $i1=var968, $r5=var2325, $r6=var1940, $l2=var1474, $r7=var3320, $r8=var416, $l3=var2651, $r9=var3120, $r10=var585, $r11=var2687}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hashing.sipHash");	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction: int c>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction: int d>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$l2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction: long k0>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$l3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.SipHashFunction: long k1>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1