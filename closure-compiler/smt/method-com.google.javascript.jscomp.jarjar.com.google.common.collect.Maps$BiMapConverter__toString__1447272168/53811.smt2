(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var992 0)
(declare-sort var520 0)
(declare-sort var3192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bimap/180549192 (var992) var520)
(declare-fun append/-1031950772 (String var3192) String)
(declare-fun cast-from-var520-to-var3192 (var520) var3192)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var992 var992)
(declare-const var402 var992) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$BiMapConverter 
(assert (not (= var402 null-var992)))
(define-const var1716 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1716)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1716!1 String)
(assert (= var1716!1 ""))
(assert true)
(define-const var1730 String (append/672562846 var1716!1 "Maps.asConverter(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Maps.asConverter(") 
(declare-const var1716!2 String)
(assert (= var1716!2 (str.++ var1716!1 "Maps.asConverter(")))
(define-const var1639 var520 (bimap/180549192 var402)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$BiMapConverter: com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap bimap> 
(assert true)
(define-const var1923 String (append/-1031950772 var1730 (cast-from-var520-to-var3192 var1639))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1730!1 String)
(assert (str.prefixof var1730 var1730!1))
(assert true)
(define-const var2338 String (append/672562846 var1923 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1923!1 String)
(assert (= var1923!1 (str.++ var1923 ")")))
(assert true)
(define-const var1082 String (toString/-2075883882 var2338)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bimap/180549192=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$BiMapConverter], com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var520-to-var3192=([com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var992=com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$BiMapConverter, var402=r1, var1716=$r0, var1730=$r3, var520=com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap, var1639=$r2, var3192=java.lang.Object, var1923=$r4, var2338=$r5, var1082=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$BiMapConverter=var992, r1=var402, $r0=var1716, $r3=var1730, com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap=var520, $r2=var1639, java.lang.Object=var3192, $r4=var1923, $r5=var2338, $r6=var1082}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$BiMapConverter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Maps.asConverter(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Maps$BiMapConverter: com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap bimap>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1