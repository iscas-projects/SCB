(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resourcePath/924598661 (var985) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var985 var985)
(declare-const var2706 var985) ; Statement: r1 := @this: freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation 
(assert (not (= var2706 null-var985)))
(define-const var1585 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1585)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1585!1 String)
(assert (= var1585!1 ""))
(assert true)
(define-const var1969 String (append/672562846 var1585!1 "classpath:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("classpath:") 
(declare-const var1585!2 String)
(assert (= var1585!2 (str.++ var1585!1 "classpath:")))
(define-const var2103 String (resourcePath/924598661 var2706)) ; Statement: $r2 = r1.<freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation: java.lang.String resourcePath> 
(assert true)
(define-const var6 String (append/672562846 var1969 var2103)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1969!1 String)
(assert (= var1969!1 (str.++ var1969 var2103)))
(assert true)
(define-const var707 String (toString/-2075883882 var6)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resourcePath/924598661=([freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var985=freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation, var2706=r1, var1585=$r0, var1969=$r3, var2103=$r2, var6=$r4, var707=$r5}
; {freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation=var985, r1=var2706, $r0=var1585, $r3=var1969, $r2=var2103, $r4=var6, $r5=var707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("classpath:");	$r2 = r1.<freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation: java.lang.String resourcePath>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1