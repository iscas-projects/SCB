(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1403 0)
(declare-sort var1762 0)
(declare-sort var2624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/-433627804 (var1403) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun authParams/-433627804 (var1403) var1762)
(declare-fun append/-1031950772 (String var2624) String)
(declare-fun cast-from-var1762-to-var2624 (var1762) var2624)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1403 var1403)
(declare-const var3058 var1403) ; Statement: r1 := @this: okhttp3.Challenge 
(assert (not (= var3058 null-var1403)))
(define-const var265 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var265)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var265!1 String)
(assert (= var265!1 ""))
(define-const var1661 String (scheme/-433627804 var3058)) ; Statement: $r2 = r1.<okhttp3.Challenge: java.lang.String scheme> 
(assert true)
(define-const var2429 String (append/672562846 var265!1 var1661)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var265!2 String)
(assert (= var265!2 (str.++ var265!1 var1661)))
(assert true)
(define-const var1951 String (append/672562846 var2429 " authParams=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" authParams=") 
(declare-const var2429!1 String)
(assert (= var2429!1 (str.++ var2429 " authParams=")))
(define-const var626 var1762 (authParams/-433627804 var3058)) ; Statement: $r4 = r1.<okhttp3.Challenge: java.util.Map authParams> 
(assert true)
(define-const var2478 String (append/-1031950772 var1951 (cast-from-var1762-to-var2624 var626))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1951!1 String)
(assert (str.prefixof var1951 var1951!1))
(assert true)
(define-const var1764 String (toString/-2075883882 var2478)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/-433627804=([okhttp3.Challenge], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), authParams/-433627804=([okhttp3.Challenge], java.util.Map), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1762-to-var2624=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1403=okhttp3.Challenge, var3058=r1, var265=$r0, var1661=$r2, var2429=$r3, var1951=$r5, var1762=java.util.Map, var626=$r4, var2624=java.lang.Object, var2478=$r6, var1764=$r7}
; {okhttp3.Challenge=var1403, r1=var3058, $r0=var265, $r2=var1661, $r3=var2429, $r5=var1951, java.util.Map=var1762, $r4=var626, java.lang.Object=var2624, $r6=var2478, $r7=var1764}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Challenge;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.Challenge: java.lang.String scheme>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" authParams=");	$r4 = r1.<okhttp3.Challenge: java.util.Map authParams>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1