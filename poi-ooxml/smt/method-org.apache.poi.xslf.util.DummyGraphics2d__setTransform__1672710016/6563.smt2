(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2796 0)
(declare-sort var2912 0)
(declare-sort var475 0)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-1110529256 (var2796) var475)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2796_mapTransform/-1709817451 (var2912) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var475 String) void)
(declare-fun g2D/-1110529256 (var2796) var1441)
(declare-fun setTransform/-1063631497 (var1441 var2912) void)
(declare-const null-var2796 var2796)
(declare-const null-var2912 var2912)
(declare-const var1919 var2796) ; Statement: r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1919 null-var2796)))
(declare-const var3698 var2912) ; Statement: r3 := @parameter0: java.awt.geom.AffineTransform 
(assert (not (= var3698 null-var2912)))
(define-const var3870 var475 (log/-1110529256 var1919)) ; Statement: $r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(define-const var1969 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1969)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1969!1 String)
(assert (= var1969!1 ""))
(assert true)
(define-const var2257 String (append/672562846 var1969!1 "g.setTransform(")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setTransform(") 
(declare-const var1969!2 String)
(assert (= var1969!2 (str.++ var1969!1 "g.setTransform(")))
(define-const var2510 String (var2796_mapTransform/-1709817451 var3698)) ; Statement: $r4 = staticinvoke <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String mapTransform(java.awt.geom.AffineTransform)>(r3) 
(assert true)
(define-const var1314 String (append/672562846 var2257 var2510)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2257!1 String)
(assert (= var2257!1 (str.++ var2257 var2510)))
(assert true)
(define-const var3299 String (append/672562846 var1314 ");")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var1314!1 String)
(assert (= var1314!1 (str.++ var1314 ");")))
(assert true)
(define-const var112 String (toString/-2075883882 var3299)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3870 var112)) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var3870!1 var475)
(declare-const var112!1 String)
(define-const var2653 var1441 (g2D/-1110529256 var1919)) ; Statement: $r9 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setTransform/-1063631497 var2653 var3698)) ; Statement: virtualinvoke $r9.<java.awt.Graphics2D: void setTransform(java.awt.geom.AffineTransform)>(r3) 

(declare-const var2653!1 var1441)
(declare-const var3698!1 var2912)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2796_mapTransform/-1709817451=([java.awt.geom.AffineTransform], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setTransform/-1063631497=([java.awt.Graphics2D, java.awt.geom.AffineTransform], void)}
; {var2796=org.apache.poi.xslf.util.DummyGraphics2d, var1919=r0, var2912=java.awt.geom.AffineTransform, var3698=r3, var475=java.io.PrintStream, var3870=$r2, var1969=$r1, var2257=$r5, var2510=$r4, var1314=$r6, var3299=$r7, var112=$r8, var1441=java.awt.Graphics2D, var2653=$r9}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2796, r0=var1919, java.awt.geom.AffineTransform=var2912, r3=var3698, java.io.PrintStream=var475, $r2=var3870, $r1=var1969, $r5=var2257, $r4=var2510, $r6=var1314, $r7=var3299, $r8=var112, java.awt.Graphics2D=var1441, $r9=var2653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r3 := @parameter0: java.awt.geom.AffineTransform;	$r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setTransform(");	$r4 = staticinvoke <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String mapTransform(java.awt.geom.AffineTransform)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r8);	$r9 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r9.<java.awt.Graphics2D: void setTransform(java.awt.geom.AffineTransform)>(r3);	return
;block_num 1