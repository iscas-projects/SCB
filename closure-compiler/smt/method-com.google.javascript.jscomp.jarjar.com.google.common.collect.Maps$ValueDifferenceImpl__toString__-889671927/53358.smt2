(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3873 0)
(declare-sort var1135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun left/-2034165199 (var3873) var1135)
(declare-fun append/-1031950772 (String var1135) String)
(declare-fun right/-2034165199 (var3873) var1135)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3873 var3873)
(declare-const var2269 var3873) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl 
(assert (not (= var2269 null-var3873)))
(define-const var2568 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2568)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2568!1 String)
(assert (= var2568!1 ""))
(assert true)
(define-const var216 String (append/672562846 var2568!1 "(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2568!2 String)
(assert (= var2568!2 (str.++ var2568!1 "(")))
(define-const var3169 var1135 (left/-2034165199 var2269)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl: java.lang.Object left> 
(assert true)
(define-const var2715 String (append/-1031950772 var216 var3169)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var216!1 String)
(assert (str.prefixof var216 var216!1))
(assert true)
(define-const var1770 String (append/672562846 var2715 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2715!1 String)
(assert (= var2715!1 (str.++ var2715 ", ")))
(define-const var2490 var1135 (right/-2034165199 var2269)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl: java.lang.Object right> 
(assert true)
(define-const var3788 String (append/-1031950772 var1770 var2490)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1770!1 String)
(assert (str.prefixof var1770 var1770!1))
(assert true)
(define-const var3884 String (append/672562846 var3788 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3788!1 String)
(assert (= var3788!1 (str.++ var3788 ")")))
(assert true)
(define-const var1146 String (toString/-2075883882 var3884)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), left/-2034165199=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), right/-2034165199=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3873=com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl, var2269=r1, var2568=$r0, var216=$r3, var1135=java.lang.Object, var3169=$r2, var2715=$r4, var1770=$r6, var2490=$r5, var3788=$r7, var3884=$r8, var1146=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl=var3873, r1=var2269, $r0=var2568, $r3=var216, java.lang.Object=var1135, $r2=var3169, $r4=var2715, $r6=var1770, $r5=var2490, $r7=var3788, $r8=var3884, $r9=var1146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl: java.lang.Object left>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$ValueDifferenceImpl: java.lang.Object right>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1