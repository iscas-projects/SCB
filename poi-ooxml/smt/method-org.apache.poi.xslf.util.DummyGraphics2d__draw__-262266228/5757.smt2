(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var4 0)
(declare-sort var3521 0)
(declare-sort var136 0)
(declare-sort var2842 0)
(declare-sort var3411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-var4-to-var3521 (var4) var3521)
(declare-fun pathToString/-1201228355 (var742 String var3521) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun log/-1110529256 (var742) var136)
(declare-fun println/69091442 (var136 var2842) void)
(declare-fun cast-from-String-to-var2842 (String) var2842)
(declare-fun g2D/-1110529256 (var742) var3411)
(declare-fun draw/-89518475 (var3411 var4) void)
(declare-const null-var742 var742)
(declare-const null-var4 var4)
(declare-const var3435 var742) ; Statement: r1 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3435 null-var742)))
(declare-const var1886 var4) ; Statement: r0 := @parameter0: java.awt.Shape 
(assert (not (= var1886 null-var4)))
(define-const var2253 Bool true) ; Statement: $z0 = r0 instanceof java.awt.geom.Path2D 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert (not (= (ite var2253 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var726 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var726)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var726!1 String)
(assert (= var726!1 ""))
(define-const var3093 var3521 (cast-from-var4-to-var3521 var1886)) ; Statement: $r10 = (java.awt.geom.Path2D) r0 
(assert true)
;(assert (pathToString/-1201228355 var3435 var726!1 var3093)) ; Statement: specialinvoke r1.<org.apache.poi.xslf.util.DummyGraphics2d: void pathToString(java.lang.StringBuilder,java.awt.geom.Path2D)>($r9, $r10) 

(declare-const var3435!1 var742)
(declare-const var726!2 String)
(declare-const var3093!1 var3521)
(assert true)
;(assert (append/672562846 var726!2 "g.draw(p);")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.draw(p);") 
(declare-const var726!3 String)
(assert (= var726!3 (str.++ var726!2 "g.draw(p);")))
(define-const var1132 var136 (log/-1110529256 var3435!1)) ; Statement: $r11 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/69091442 var1132 (cast-from-String-to-var2842 var726!3))) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.Object)>($r9) 

(declare-const var1132!1 var136)
(declare-const var726!4 String)
 ; Statement: goto [?= $r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>] 
(assert true) ; Non Conditional
(define-const var2775 var3411 (g2D/-1110529256 var3435!1)) ; Statement: $r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (draw/-89518475 var2775 var1886)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void draw(java.awt.Shape)>(r0) 

(declare-const var2775!1 var3411)
(declare-const var1886!1 var4)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-var4-to-var3521=([java.awt.Shape], java.awt.geom.Path2D), pathToString/-1201228355=([org.apache.poi.xslf.util.DummyGraphics2d, java.lang.StringBuilder, java.awt.geom.Path2D], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/69091442=([java.io.PrintStream, java.lang.Object], void), cast-from-String-to-var2842=([java.lang.StringBuilder], java.lang.Object), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), draw/-89518475=([java.awt.Graphics2D, java.awt.Shape], void)}
; {var742=org.apache.poi.xslf.util.DummyGraphics2d, var3435=r1, var4=java.awt.Shape, var1886=r0, var2253=$z0, var726=$r9, var3521=java.awt.geom.Path2D, var3093=$r10, var136=java.io.PrintStream, var1132=$r11, var2842=java.lang.Object, var3411=java.awt.Graphics2D, var2775=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var742, r1=var3435, java.awt.Shape=var4, r0=var1886, $z0=var2253, $r9=var726, java.awt.geom.Path2D=var3521, $r10=var3093, java.io.PrintStream=var136, $r11=var1132, java.lang.Object=var2842, java.awt.Graphics2D=var3411, $r8=var2775}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Shape;	$z0 = r0 instanceof java.awt.geom.Path2D;	if $z0 == 0 goto $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = (java.awt.geom.Path2D) r0;	specialinvoke r1.<org.apache.poi.xslf.util.DummyGraphics2d: void pathToString(java.lang.StringBuilder,java.awt.geom.Path2D)>($r9, $r10);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.draw(p);");	$r11 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.Object)>($r9);	goto [?= $r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>];	$r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void draw(java.awt.Shape)>(r0);	return
;block_num 3