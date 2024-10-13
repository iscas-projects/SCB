(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3987 0)
(declare-sort var1279 0)
(declare-sort var731 0)
(declare-sort var2803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun endpoint/-1106376398 (var731) var1279)
(declare-fun cast-from-var3987-to-var731 (var3987) var731)
(declare-fun append/-1031950772 (String var2803) String)
(declare-fun cast-from-var1279-to-var2803 (var1279) var2803)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3987 var3987)
(declare-const var513 var3987) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue 
(assert (not (= var513 null-var3987)))
(define-const var1667 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1667)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1667!1 String)
(assert (= var1667!1 ""))
(assert true)
(define-const var1921 String (append/672562846 var1667!1 "\u005c")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\") 
(declare-const var1667!2 String)
(assert (= var1667!2 (str.++ var1667!1 "\u005c")))
(define-const var855 var1279 (endpoint/-1106376398 (cast-from-var3987-to-var731 var513))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue: java.lang.Comparable endpoint> 
(assert true)
(define-const var3587 String (append/-1031950772 var1921 (cast-from-var1279-to-var2803 var855))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1921!1 String)
(assert (str.prefixof var1921 var1921!1))
(assert true)
(define-const var1054 String (append/672562846 var3587 "/")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3587!1 String)
(assert (= var3587!1 (str.++ var3587 "/")))
(assert true)
(define-const var3484 String (toString/-2075883882 var1054)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), endpoint/-1106376398=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], java.lang.Comparable), cast-from-var3987-to-var731=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1279-to-var2803=([java.lang.Comparable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3987=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue, var513=r1, var1667=$r0, var1921=$r3, var1279=java.lang.Comparable, var731=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var855=$r2, var2803=java.lang.Object, var3587=$r4, var1054=$r5, var3484=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue=var3987, r1=var513, $r0=var1667, $r3=var1921, java.lang.Comparable=var1279, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var731, $r2=var855, java.lang.Object=var2803, $r4=var3587, $r5=var1054, $r6=var3484}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue: java.lang.Comparable endpoint>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1