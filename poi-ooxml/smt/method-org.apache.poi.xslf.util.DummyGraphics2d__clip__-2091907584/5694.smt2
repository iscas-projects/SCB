(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3694 0)
(declare-sort var2199 0)
(declare-sort var1891 0)
(declare-sort var889 0)
(declare-sort var133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1891) String)
(declare-fun cast-from-var2199-to-var1891 (var2199) var1891)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3694) var889)
(declare-fun println/1773605060 (var889 String) void)
(declare-fun g2D/-1110529256 (var3694) var133)
(declare-fun clip/-1919159831 (var133 var2199) void)
(declare-const null-var3694 var3694)
(declare-const null-var2199 var2199)
(declare-const var2029 var3694) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2029 null-var3694)))
(declare-const var2341 var2199) ; Statement: r1 := @parameter0: java.awt.Shape 
(assert (not (= var2341 null-var2199)))
(define-const var878 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var878)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var878!1 String)
(assert (= var878!1 ""))
(assert true)
(define-const var2650 String (append/672562846 var878!1 "clip(Shape):\n  s = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clip(Shape):\n  s = ") 
(declare-const var878!2 String)
(assert (= var878!2 (str.++ var878!1 "clip(Shape):\n  s = ")))
(assert true)
(define-const var2927 String (append/-1031950772 var2650 (cast-from-var2199-to-var1891 var2341))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2650!1 String)
(assert (str.prefixof var2650 var2650!1))
(assert true)
(define-const var345 String (toString/-2075883882 var2927)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2829 var889 (log/-1110529256 var2029)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2829 var345)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var2829!1 var889)
(declare-const var345!1 String)
(define-const var226 var133 (g2D/-1110529256 var2029)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (clip/-1919159831 var226 var2341)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void clip(java.awt.Shape)>(r1) 

(declare-const var226!1 var133)
(declare-const var2341!1 var2199)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2199-to-var1891=([java.awt.Shape], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), clip/-1919159831=([java.awt.Graphics2D, java.awt.Shape], void)}
; {var3694=org.apache.poi.xslf.util.DummyGraphics2d, var2029=r5, var2199=java.awt.Shape, var2341=r1, var878=$r0, var2650=$r2, var1891=java.lang.Object, var2927=$r3, var345=r4, var889=java.io.PrintStream, var2829=$r6, var133=java.awt.Graphics2D, var226=$r7}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3694, r5=var2029, java.awt.Shape=var2199, r1=var2341, $r0=var878, $r2=var2650, java.lang.Object=var1891, $r3=var2927, r4=var345, java.io.PrintStream=var889, $r6=var2829, java.awt.Graphics2D=var133, $r7=var226}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Shape;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clip(Shape):\n  s = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void clip(java.awt.Shape)>(r1);	return
;block_num 1