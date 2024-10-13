(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun min/1845770612 (var3785) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun max/1845770612 (var3785) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3785 var3785)
(declare-const var2395 var3785) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector 
(assert (not (= var2395 null-var3785)))
(define-const var3268 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3268)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3268!1 String)
(assert (= var3268!1 ""))
(assert true)
(define-const var1379 String (append/672562846 var3268!1 "{depthselector min: ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{depthselector min: ") 
(declare-const var3268!2 String)
(assert (= var3268!2 (str.++ var3268!1 "{depthselector min: ")))
(define-const var3608 Int (min/1845770612 var2395)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector: int min> 
(assert true)
(define-const var3389 String (append/-1001720160 var1379 var3608)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1379!1 String)
(assert (str.prefixof var1379 var1379!1))
(assert true)
(define-const var1526 String (append/672562846 var3389 " max: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" max: ") 
(declare-const var3389!1 String)
(assert (= var3389!1 (str.++ var3389 " max: ")))
(define-const var2540 Int (max/1845770612 var2395)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector: int max> 
(assert true)
(define-const var1904 String (append/-1001720160 var1526 var2540)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1526!1 String)
(assert (str.prefixof var1526 var1526!1))
(assert true)
(define-const var2501 String (append/672562846 var1904 "}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1904!1 String)
(assert (= var1904!1 (str.++ var1904 "}")))
(assert true)
(define-const var717 String (toString/-2075883882 var2501)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), min/1845770612=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), max/1845770612=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3785=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector, var2395=r1, var3268=$r0, var1379=$r2, var3608=$i0, var3389=$r3, var1526=$r4, var2540=$i1, var1904=$r5, var2501=$r6, var717=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector=var3785, r1=var2395, $r0=var3268, $r2=var1379, $i0=var3608, $r3=var3389, $r4=var1526, $i1=var2540, $r5=var1904, $r6=var2501, $r7=var717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{depthselector min: ");	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector: int min>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" max: ");	$i1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DepthSelector: int max>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1