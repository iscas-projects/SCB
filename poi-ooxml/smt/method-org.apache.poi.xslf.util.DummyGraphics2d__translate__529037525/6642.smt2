(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1579 0)
(declare-sort var2145 0)
(declare-sort var1597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1579) var2145)
(declare-fun println/1773605060 (var2145 String) void)
(declare-fun g2D/-1110529256 (var1579) var1597)
(declare-fun translate/146425918 (var1597 Float64 Float64) void)
(declare-const null-var1579 var1579)
(declare-const null-Float64 Float64)
(declare-const var2589 var1579) ; Statement: r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2589 null-var1579)))
(declare-const var2988 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var2988 null-Float64)))
(declare-const var2793 Float64) ; Statement: d1 := @parameter1: double 
(assert (not (= var2793 null-Float64)))
(define-const var3132 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3132)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3132!1 String)
(assert (= var3132!1 ""))
(assert true)
(define-const var1376 String (append/672562846 var3132!1 "translate(double, double):\n  tx = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("translate(double, double):\n  tx = ") 
(declare-const var3132!2 String)
(assert (= var3132!2 (str.++ var3132!1 "translate(double, double):\n  tx = ")))
(assert true)
(define-const var2141 String (append/33611274 var1376 var2988)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var1376!1 String)
(assert (str.prefixof var1376 var1376!1))
(assert true)
(define-const var3151 String (append/672562846 var2141 "\n  ty = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  ty = ") 
(declare-const var2141!1 String)
(assert (= var2141!1 (str.++ var2141 "\n  ty = ")))
(assert true)
(define-const var2734 String (append/33611274 var3151 var2793)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d1) 
(declare-const var3151!1 String)
(assert (str.prefixof var3151 var3151!1))
(assert true)
(define-const var666 String (toString/-2075883882 var2734)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3466 var2145 (log/-1110529256 var2589)) ; Statement: $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3466 var666)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r5) 

(declare-const var3466!1 var2145)
(declare-const var666!1 String)
(define-const var1436 var1597 (g2D/-1110529256 var2589)) ; Statement: $r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (translate/146425918 var1436 var2988 var2793)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void translate(double,double)>(d0, d1) 

(declare-const var1436!1 var1597)
(declare-const var2988!1 Float64)
(declare-const var2793!1 Float64)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), translate/146425918=([java.awt.Graphics2D, double, double], void)}
; {var1579=org.apache.poi.xslf.util.DummyGraphics2d, var2589=r6, var2988=d0, var2793=d1, var3132=$r0, var1376=$r1, var2141=$r2, var3151=$r3, var2734=$r4, var666=r5, var2145=java.io.PrintStream, var3466=$r7, var1597=java.awt.Graphics2D, var1436=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1579, r6=var2589, d0=var2988, d1=var2793, $r0=var3132, $r1=var1376, $r2=var2141, $r3=var3151, $r4=var2734, r5=var666, java.io.PrintStream=var2145, $r7=var3466, java.awt.Graphics2D=var1597, $r8=var1436}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	d0 := @parameter0: double;	d1 := @parameter1: double;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("translate(double, double):\n  tx = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  ty = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d1);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r5);	$r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void translate(double,double)>(d0, d1);	return
;block_num 1