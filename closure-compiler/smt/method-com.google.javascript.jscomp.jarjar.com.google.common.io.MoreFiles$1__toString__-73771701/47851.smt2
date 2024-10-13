(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2173 0)
(declare-sort var2137 0)
(declare-sort var1417 0)
(declare-sort var1313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$optionsCopy/-1535891213 (var2173) (Array Int var2137))
(declare-fun var1417_toString/-575966009 ((Array Int var1313)) String)
(declare-fun cast-from-__Array__Int__var2137__-to-__Array__Int__var1313__ ((Array Int var2137)) (Array Int var1313))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2173 var2173)
(declare-const var2932 var2173) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$1 
(assert (not (= var2932 null-var2173)))
(define-const var211 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var211)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var211!1 String)
(assert (= var211!1 ""))
(assert true)
(define-const var1508 String (append/672562846 var211!1 "MoreFiles.isDirectory(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoreFiles.isDirectory(") 
(declare-const var211!2 String)
(assert (= var211!2 (str.++ var211!1 "MoreFiles.isDirectory(")))
(define-const var2941 (Array Int var2137) (val$optionsCopy/-1535891213 var2932)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$1: java.nio.file.LinkOption[] val$optionsCopy> 
(define-const var2826 String (var1417_toString/-575966009 (cast-from-__Array__Int__var2137__-to-__Array__Int__var1313__ var2941))) ; Statement: $r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2) 
(assert true)
(define-const var2333 String (append/672562846 var1508 var2826)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1508!1 String)
(assert (= var1508!1 (str.++ var1508 var2826)))
(assert true)
(define-const var353 String (append/672562846 var2333 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2333!1 String)
(assert (= var2333!1 (str.++ var2333 ")")))
(assert true)
(define-const var1716 String (toString/-2075883882 var353)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$optionsCopy/-1535891213=([com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$1], java.nio.file.LinkOption[]), var1417_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var2137__-to-__Array__Int__var1313__=([java.nio.file.LinkOption[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2173=com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$1, var2932=r1, var211=$r0, var1508=$r4, var2137=java.nio.file.LinkOption, var2941=$r2, var1417=java.util.Arrays, var1313=java.lang.Object, var2826=$r3, var2333=$r5, var353=$r6, var1716=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$1=var2173, r1=var2932, $r0=var211, $r4=var1508, java.nio.file.LinkOption=var2137, $r2=var2941, java.util.Arrays=var1417, java.lang.Object=var1313, $r3=var2826, $r5=var2333, $r6=var353, $r7=var1716}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoreFiles.isDirectory(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$1: java.nio.file.LinkOption[] val$optionsCopy>;	$r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1