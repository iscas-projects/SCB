(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClasspath/1117000264 (var1769) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1769 var1769)
(declare-const var2256 var1769) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var2256 null-var1769)))
(define-const var1972 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1972)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1972!1 String)
(assert (= var1972!1 ""))
(assert true)
(define-const var1401 String (append/672562846 var1972!1 "AntClassLoader[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AntClassLoader[") 
(declare-const var1972!2 String)
(assert (= var1972!2 (str.++ var1972!1 "AntClassLoader[")))
(assert true)
(define-const var2624 String (getClasspath/1117000264 var2256)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.String getClasspath()>() 
(assert true)
(define-const var136 String (append/672562846 var1401 var2624)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1401!1 String)
(assert (= var1401!1 (str.++ var1401 var2624)))
(assert true)
(define-const var3684 String (append/672562846 var136 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var136!1 String)
(assert (= var136!1 (str.++ var136 "]")))
(assert true)
(define-const var813 String (toString/-2075883882 var3684)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClasspath/1117000264=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1769=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var2256=r1, var1972=$r0, var1401=$r3, var2624=$r2, var136=$r4, var3684=$r5, var813=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var1769, r1=var2256, $r0=var1972, $r3=var1401, $r2=var2624, $r4=var136, $r5=var3684, $r6=var813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AntClassLoader[");	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.String getClasspath()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1