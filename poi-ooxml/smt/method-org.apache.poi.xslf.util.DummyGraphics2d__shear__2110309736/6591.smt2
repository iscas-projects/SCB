(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3568 0)
(declare-sort var3435 0)
(declare-sort var3254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3568) var3435)
(declare-fun println/1773605060 (var3435 String) void)
(declare-fun g2D/-1110529256 (var3568) var3254)
(declare-fun shear/-2011909807 (var3254 Float64 Float64) void)
(declare-const null-var3568 var3568)
(declare-const null-Float64 Float64)
(declare-const var3270 var3568) ; Statement: r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3270 null-var3568)))
(declare-const var1461 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var1461 null-Float64)))
(declare-const var3883 Float64) ; Statement: d1 := @parameter1: double 
(assert (not (= var3883 null-Float64)))
(define-const var3267 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3267)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3267!1 String)
(assert (= var3267!1 ""))
(assert true)
(define-const var3134 String (append/672562846 var3267!1 "shear(shx, dhy):\n  shx = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("shear(shx, dhy):\n  shx = ") 
(declare-const var3267!2 String)
(assert (= var3267!2 (str.++ var3267!1 "shear(shx, dhy):\n  shx = ")))
(assert true)
(define-const var377 String (append/33611274 var3134 var1461)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var3134!1 String)
(assert (str.prefixof var3134 var3134!1))
(assert true)
(define-const var414 String (append/672562846 var377 "\n  shy = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  shy = ") 
(declare-const var377!1 String)
(assert (= var377!1 (str.++ var377 "\n  shy = ")))
(assert true)
(define-const var2394 String (append/33611274 var414 var3883)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d1) 
(declare-const var414!1 String)
(assert (str.prefixof var414 var414!1))
(assert true)
(define-const var2066 String (toString/-2075883882 var2394)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2226 var3435 (log/-1110529256 var3270)) ; Statement: $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2226 var2066)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r5) 

(declare-const var2226!1 var3435)
(declare-const var2066!1 String)
(define-const var1598 var3254 (g2D/-1110529256 var3270)) ; Statement: $r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (shear/-2011909807 var1598 var1461 var3883)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void shear(double,double)>(d0, d1) 

(declare-const var1598!1 var3254)
(declare-const var1461!1 Float64)
(declare-const var3883!1 Float64)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), shear/-2011909807=([java.awt.Graphics2D, double, double], void)}
; {var3568=org.apache.poi.xslf.util.DummyGraphics2d, var3270=r6, var1461=d0, var3883=d1, var3267=$r0, var3134=$r1, var377=$r2, var414=$r3, var2394=$r4, var2066=r5, var3435=java.io.PrintStream, var2226=$r7, var3254=java.awt.Graphics2D, var1598=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3568, r6=var3270, d0=var1461, d1=var3883, $r0=var3267, $r1=var3134, $r2=var377, $r3=var414, $r4=var2394, r5=var2066, java.io.PrintStream=var3435, $r7=var2226, java.awt.Graphics2D=var3254, $r8=var1598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	d0 := @parameter0: double;	d1 := @parameter1: double;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("shear(shx, dhy):\n  shx = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  shy = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d1);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r5);	$r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void shear(double,double)>(d0, d1);	return
;block_num 1