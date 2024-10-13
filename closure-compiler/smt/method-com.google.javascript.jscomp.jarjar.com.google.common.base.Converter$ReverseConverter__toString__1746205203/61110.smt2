(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var119 0)
(declare-sort var2329 0)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun original/-1930960717 (var119) var2329)
(declare-fun append/-1031950772 (String var184) String)
(declare-fun cast-from-var2329-to-var184 (var2329) var184)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var119 var119)
(declare-const var3996 var119) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ReverseConverter 
(assert (not (= var3996 null-var119)))
(define-const var2447 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2447)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2447!1 String)
(assert (= var2447!1 ""))
(define-const var2038 var2329 (original/-1930960717 var3996)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ReverseConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter original> 
(assert true)
(define-const var3165 String (append/-1031950772 var2447!1 (cast-from-var2329-to-var184 var2038))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2447!2 String)
(assert (str.prefixof var2447!1 var2447!2))
(assert true)
(define-const var3576 String (append/672562846 var3165 ".reverse()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".reverse()") 
(declare-const var3165!1 String)
(assert (= var3165!1 (str.++ var3165 ".reverse()")))
(assert true)
(define-const var2254 String (toString/-2075883882 var3576)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), original/-1930960717=([com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ReverseConverter], com.google.javascript.jscomp.jarjar.com.google.common.base.Converter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2329-to-var184=([com.google.javascript.jscomp.jarjar.com.google.common.base.Converter], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var119=com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ReverseConverter, var3996=r1, var2447=$r0, var2329=com.google.javascript.jscomp.jarjar.com.google.common.base.Converter, var2038=$r2, var184=java.lang.Object, var3165=$r3, var3576=$r4, var2254=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ReverseConverter=var119, r1=var3996, $r0=var2447, com.google.javascript.jscomp.jarjar.com.google.common.base.Converter=var2329, $r2=var2038, java.lang.Object=var184, $r3=var3165, $r4=var3576, $r5=var2254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ReverseConverter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ReverseConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter original>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".reverse()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1