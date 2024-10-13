(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2551 0)
(declare-sort var1728 0)
(declare-sort var2165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/1669537900 (var2551) var1728)
(declare-fun append/-1031950772 (String var2165) String)
(declare-fun cast-from-var1728-to-var2165 (var1728) var2165)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun position/1669537900 (var2551) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2551 var2551)
(declare-const var2904 var2551) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter 
(assert (not (= var2904 null-var2551)))
(define-const var3100 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3100)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3100!1 String)
(assert (= var3100!1 ""))
(define-const var2264 var1728 (type/1669537900 var2904)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken type> 
(assert true)
(define-const var218 String (append/-1031950772 var3100!1 (cast-from-var1728-to-var2165 var2264))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3100!2 String)
(assert (str.prefixof var3100!1 var3100!2))
(assert true)
(define-const var1387 String (append/672562846 var218 " arg")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" arg") 
(declare-const var218!1 String)
(assert (= var218!1 (str.++ var218 " arg")))
(define-const var1613 Int (position/1669537900 var2904)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter: int position> 
(assert true)
(define-const var3239 String (append/-1001720160 var1387 var1613)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1387!1 String)
(assert (str.prefixof var1387 var1387!1))
(assert true)
(define-const var857 String (toString/-2075883882 var3239)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/1669537900=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1728-to-var2165=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), position/1669537900=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2551=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter, var2904=r1, var3100=$r0, var1728=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var2264=$r2, var2165=java.lang.Object, var218=$r3, var1387=$r4, var1613=$i0, var3239=$r5, var857=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter=var2551, r1=var2904, $r0=var3100, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var1728, $r2=var2264, java.lang.Object=var2165, $r3=var218, $r4=var1387, $i0=var1613, $r5=var3239, $r6=var857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken type>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" arg");	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Parameter: int position>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1