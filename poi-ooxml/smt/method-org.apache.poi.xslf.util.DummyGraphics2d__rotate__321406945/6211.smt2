(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3361 0)
(declare-sort var1463 0)
(declare-sort var2218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3361) var1463)
(declare-fun println/1773605060 (var1463 String) void)
(declare-fun g2D/-1110529256 (var3361) var2218)
(declare-fun rotate/-1876322678 (var2218 Float64) void)
(declare-const null-var3361 var3361)
(declare-const null-Float64 Float64)
(declare-const var3203 var3361) ; Statement: r4 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3203 null-var3361)))
(declare-const var329 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var329 null-Float64)))
(define-const var147 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var147)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var147!1 String)
(assert (= var147!1 ""))
(assert true)
(define-const var191 String (append/672562846 var147!1 "rotate(theta):\n  theta = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rotate(theta):\n  theta = ") 
(declare-const var147!2 String)
(assert (= var147!2 (str.++ var147!1 "rotate(theta):\n  theta = ")))
(assert true)
(define-const var729 String (append/33611274 var191 var329)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var191!1 String)
(assert (str.prefixof var191 var191!1))
(assert true)
(define-const var3648 String (toString/-2075883882 var729)) ; Statement: r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1697 var1463 (log/-1110529256 var3203)) ; Statement: $r5 = r4.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1697 var3648)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>(r3) 

(declare-const var1697!1 var1463)
(declare-const var3648!1 String)
(define-const var3282 var2218 (g2D/-1110529256 var3203)) ; Statement: $r6 = r4.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (rotate/-1876322678 var3282 var329)) ; Statement: virtualinvoke $r6.<java.awt.Graphics2D: void rotate(double)>(d0) 

(declare-const var3282!1 var2218)
(declare-const var329!1 Float64)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), rotate/-1876322678=([java.awt.Graphics2D, double], void)}
; {var3361=org.apache.poi.xslf.util.DummyGraphics2d, var3203=r4, var329=d0, var147=$r0, var191=$r1, var729=$r2, var3648=r3, var1463=java.io.PrintStream, var1697=$r5, var2218=java.awt.Graphics2D, var3282=$r6}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3361, r4=var3203, d0=var329, $r0=var147, $r1=var191, $r2=var729, r3=var3648, java.io.PrintStream=var1463, $r5=var1697, java.awt.Graphics2D=var2218, $r6=var3282}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	d0 := @parameter0: double;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rotate(theta):\n  theta = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = r4.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>(r3);	$r6 = r4.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r6.<java.awt.Graphics2D: void rotate(double)>(d0);	return
;block_num 1