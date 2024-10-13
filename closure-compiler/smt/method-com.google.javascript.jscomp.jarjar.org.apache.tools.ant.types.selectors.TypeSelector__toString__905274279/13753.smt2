(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/992707911 (var471) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var471 var471)
(declare-const var2852 var471) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector 
(assert (not (= var2852 null-var471)))
(define-const var24 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var24)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var24!1 String)
(assert (= var24!1 ""))
(assert true)
(define-const var1321 String (append/672562846 var24!1 "{typeselector type: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{typeselector type: ") 
(declare-const var24!2 String)
(assert (= var24!2 (str.++ var24!1 "{typeselector type: ")))
(define-const var1960 String (type/992707911 var2852)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type> 
(assert true)
(define-const var2054 String (append/672562846 var1321 var1960)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1321!1 String)
(assert (= var1321!1 (str.++ var1321 var1960)))
(assert true)
(define-const var646 String (append/672562846 var2054 "}")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2054!1 String)
(assert (= var2054!1 (str.++ var2054 "}")))
(assert true)
(define-const var3576 String (toString/-2075883882 var646)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/992707911=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var471=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector, var2852=r1, var24=$r0, var1321=$r3, var1960=$r2, var2054=$r4, var646=$r5, var3576=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector=var471, r1=var2852, $r0=var24, $r3=var1321, $r2=var1960, $r4=var2054, $r5=var646, $r6=var3576}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{typeselector type: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1