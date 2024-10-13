(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3370 0)
(declare-sort var1427 0)
(declare-sort var2133 0)
(declare-sort var1527 0)
(declare-sort var2108 0)
(declare-sort var3854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-var1427-to-var2133 (var1427) var2133)
(declare-fun pathToString/-1201228355 (var3370 String var2133) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun log/-1110529256 (var3370) var1527)
(declare-fun println/69091442 (var1527 var2108) void)
(declare-fun cast-from-String-to-var2108 (String) var2108)
(declare-fun g2D/-1110529256 (var3370) var3854)
(declare-fun fill/1396239382 (var3854 var1427) void)
(declare-const null-var3370 var3370)
(declare-const null-var1427 var1427)
(declare-const var846 var3370) ; Statement: r1 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var846 null-var3370)))
(declare-const var3480 var1427) ; Statement: r0 := @parameter0: java.awt.Shape 
(assert (not (= var3480 null-var1427)))
(define-const var1036 Bool true) ; Statement: $z0 = r0 instanceof java.awt.geom.Path2D 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert (not (= (ite var1036 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var214 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var214)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var214!1 String)
(assert (= var214!1 ""))
(define-const var3390 var2133 (cast-from-var1427-to-var2133 var3480)) ; Statement: $r10 = (java.awt.geom.Path2D) r0 
(assert true)
;(assert (pathToString/-1201228355 var846 var214!1 var3390)) ; Statement: specialinvoke r1.<org.apache.poi.xslf.util.DummyGraphics2d: void pathToString(java.lang.StringBuilder,java.awt.geom.Path2D)>($r9, $r10) 

(declare-const var846!1 var3370)
(declare-const var214!2 String)
(declare-const var3390!1 var2133)
(assert true)
;(assert (append/672562846 var214!2 "g.fill(p);")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.fill(p);") 
(declare-const var214!3 String)
(assert (= var214!3 (str.++ var214!2 "g.fill(p);")))
(define-const var2252 var1527 (log/-1110529256 var846!1)) ; Statement: $r11 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/69091442 var2252 (cast-from-String-to-var2108 var214!3))) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.Object)>($r9) 

(declare-const var2252!1 var1527)
(declare-const var214!4 String)
 ; Statement: goto [?= $r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>] 
(assert true) ; Non Conditional
(define-const var2657 var3854 (g2D/-1110529256 var846!1)) ; Statement: $r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (fill/1396239382 var2657 var3480)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void fill(java.awt.Shape)>(r0) 

(declare-const var2657!1 var3854)
(declare-const var3480!1 var1427)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-var1427-to-var2133=([java.awt.Shape], java.awt.geom.Path2D), pathToString/-1201228355=([org.apache.poi.xslf.util.DummyGraphics2d, java.lang.StringBuilder, java.awt.geom.Path2D], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/69091442=([java.io.PrintStream, java.lang.Object], void), cast-from-String-to-var2108=([java.lang.StringBuilder], java.lang.Object), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), fill/1396239382=([java.awt.Graphics2D, java.awt.Shape], void)}
; {var3370=org.apache.poi.xslf.util.DummyGraphics2d, var846=r1, var1427=java.awt.Shape, var3480=r0, var1036=$z0, var214=$r9, var2133=java.awt.geom.Path2D, var3390=$r10, var1527=java.io.PrintStream, var2252=$r11, var2108=java.lang.Object, var3854=java.awt.Graphics2D, var2657=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3370, r1=var846, java.awt.Shape=var1427, r0=var3480, $z0=var1036, $r9=var214, java.awt.geom.Path2D=var2133, $r10=var3390, java.io.PrintStream=var1527, $r11=var2252, java.lang.Object=var2108, java.awt.Graphics2D=var3854, $r8=var2657}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Shape;	$z0 = r0 instanceof java.awt.geom.Path2D;	if $z0 == 0 goto $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = (java.awt.geom.Path2D) r0;	specialinvoke r1.<org.apache.poi.xslf.util.DummyGraphics2d: void pathToString(java.lang.StringBuilder,java.awt.geom.Path2D)>($r9, $r10);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.fill(p);");	$r11 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.Object)>($r9);	goto [?= $r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>];	$r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void fill(java.awt.Shape)>(r0);	return
;block_num 3