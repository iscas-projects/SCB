(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3185 0)
(declare-sort var1788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun charset/427714934 (var3185) var1788)
(declare-fun name/1362759805 (var1788) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3185 var3185)
(declare-const var2010 var3185) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$StringCharsetFunnel 
(assert (not (= var2010 null-var3185)))
(define-const var3493 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3493)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3493!1 String)
(assert (= var3493!1 ""))
(assert true)
(define-const var2498 String (append/672562846 var3493!1 "Funnels.stringFunnel(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Funnels.stringFunnel(") 
(declare-const var3493!2 String)
(assert (= var3493!2 (str.++ var3493!1 "Funnels.stringFunnel(")))
(define-const var255 var1788 (charset/427714934 var2010)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$StringCharsetFunnel: java.nio.charset.Charset charset> 
(assert true)
(define-const var3216 String (name/1362759805 var255)) ; Statement: $r3 = virtualinvoke $r2.<java.nio.charset.Charset: java.lang.String name()>() 
(assert true)
(define-const var1140 String (append/672562846 var2498 var3216)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 var3216)))
(assert true)
(define-const var3438 String (append/672562846 var1140 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1140!1 String)
(assert (= var1140!1 (str.++ var1140 ")")))
(assert true)
(define-const var3213 String (toString/-2075883882 var3438)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charset/427714934=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$StringCharsetFunnel], java.nio.charset.Charset), name/1362759805=([java.nio.charset.Charset], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3185=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$StringCharsetFunnel, var2010=r1, var3493=$r0, var2498=$r4, var1788=java.nio.charset.Charset, var255=$r2, var3216=$r3, var1140=$r5, var3438=$r6, var3213=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$StringCharsetFunnel=var3185, r1=var2010, $r0=var3493, $r4=var2498, java.nio.charset.Charset=var1788, $r2=var255, $r3=var3216, $r5=var1140, $r6=var3438, $r7=var3213}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$StringCharsetFunnel;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Funnels.stringFunnel(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$StringCharsetFunnel: java.nio.charset.Charset charset>;	$r3 = virtualinvoke $r2.<java.nio.charset.Charset: java.lang.String name()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1