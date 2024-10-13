(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/1526797149 (var3982) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/809941835 (var3982) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3982 var3982)
(declare-const var2067 var3982) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty 
(assert (not (= var2067 null-var3982)))
(define-const var1049 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1049)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1049!1 String)
(assert (= var1049!1 ""))
(assert true)
(define-const var1850 String (key/1526797149 var2067)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty: java.lang.String key()>() 
(assert true)
(define-const var448 String (append/672562846 var1049!1 var1850)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1049!2 String)
(assert (= var1049!2 (str.++ var1049!1 var1850)))
(assert true)
(define-const var447 String (append/672562846 var448 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var448!1 String)
(assert (= var448!1 (str.++ var448 "=")))
(assert true)
(define-const var438 String (value/809941835 var2067)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty: java.lang.String value()>() 
(assert true)
(define-const var2571 String (append/672562846 var447 var438)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var447!1 String)
(assert (= var447!1 (str.++ var447 var438)))
(assert true)
(define-const var2179 String (toString/-2075883882 var2571)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/1526797149=([com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/809941835=([com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3982=com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty, var2067=r1, var1049=$r0, var1850=$r2, var448=$r3, var447=$r5, var438=$r4, var2571=$r6, var2179=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty=var3982, r1=var2067, $r0=var1049, $r2=var1850, $r3=var448, $r5=var447, $r4=var438, $r6=var2571, $r7=var2179}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty: java.lang.String key()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty: java.lang.String value()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1