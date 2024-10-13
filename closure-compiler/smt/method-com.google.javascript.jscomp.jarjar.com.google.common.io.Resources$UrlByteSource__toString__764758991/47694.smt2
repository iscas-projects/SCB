(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort var2095 0)
(declare-sort var1761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/-233826185 (var2338) var2095)
(declare-fun append/-1031950772 (String var1761) String)
(declare-fun cast-from-var2095-to-var1761 (var2095) var1761)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2338 var2338)
(declare-const var2425 var2338) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.Resources$UrlByteSource 
(assert (not (= var2425 null-var2338)))
(define-const var2524 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2524)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2524!1 String)
(assert (= var2524!1 ""))
(assert true)
(define-const var585 String (append/672562846 var2524!1 "Resources.asByteSource(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resources.asByteSource(") 
(declare-const var2524!2 String)
(assert (= var2524!2 (str.++ var2524!1 "Resources.asByteSource(")))
(define-const var2248 var2095 (url/-233826185 var2425)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.Resources$UrlByteSource: java.net.URL url> 
(assert true)
(define-const var1231 String (append/-1031950772 var585 (cast-from-var2095-to-var1761 var2248))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var585!1 String)
(assert (str.prefixof var585 var585!1))
(assert true)
(define-const var897 String (append/672562846 var1231 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1231!1 String)
(assert (= var1231!1 (str.++ var1231 ")")))
(assert true)
(define-const var1385 String (toString/-2075883882 var897)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/-233826185=([com.google.javascript.jscomp.jarjar.com.google.common.io.Resources$UrlByteSource], java.net.URL), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2095-to-var1761=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2338=com.google.javascript.jscomp.jarjar.com.google.common.io.Resources$UrlByteSource, var2425=r1, var2524=$r0, var585=$r3, var2095=java.net.URL, var2248=$r2, var1761=java.lang.Object, var1231=$r4, var897=$r5, var1385=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.Resources$UrlByteSource=var2338, r1=var2425, $r0=var2524, $r3=var585, java.net.URL=var2095, $r2=var2248, java.lang.Object=var1761, $r4=var1231, $r5=var897, $r6=var1385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.Resources$UrlByteSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resources.asByteSource(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.Resources$UrlByteSource: java.net.URL url>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1