(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2650 0)
(declare-sort var3196 0)
(declare-sort var1706 0)
(declare-sort var2609 0)
(declare-sort var1406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1706) String)
(declare-fun cast-from-var3196-to-var1706 (var3196) var1706)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2650) var2609)
(declare-fun println/1773605060 (var2609 String) void)
(declare-fun g2D/-1110529256 (var2650) var1406)
(declare-fun transform/-520578361 (var1406 var3196) void)
(declare-const null-var2650 var2650)
(declare-const null-var3196 var3196)
(declare-const var1491 var2650) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1491 null-var2650)))
(declare-const var3607 var3196) ; Statement: r1 := @parameter0: java.awt.geom.AffineTransform 
(assert (not (= var3607 null-var3196)))
(define-const var2897 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2897)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2897!1 String)
(assert (= var2897!1 ""))
(assert true)
(define-const var2844 String (append/672562846 var2897!1 "transform(AffineTransform):\n  Tx = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("transform(AffineTransform):\n  Tx = ") 
(declare-const var2897!2 String)
(assert (= var2897!2 (str.++ var2897!1 "transform(AffineTransform):\n  Tx = ")))
(assert true)
(define-const var2071 String (append/-1031950772 var2844 (cast-from-var3196-to-var1706 var3607))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2844!1 String)
(assert (str.prefixof var2844 var2844!1))
(assert true)
(define-const var3956 String (toString/-2075883882 var2071)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2118 var2609 (log/-1110529256 var1491)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2118 var3956)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var2118!1 var2609)
(declare-const var3956!1 String)
(define-const var1220 var1406 (g2D/-1110529256 var1491)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (transform/-520578361 var1220 var3607)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void transform(java.awt.geom.AffineTransform)>(r1) 

(declare-const var1220!1 var1406)
(declare-const var3607!1 var3196)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3196-to-var1706=([java.awt.geom.AffineTransform], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), transform/-520578361=([java.awt.Graphics2D, java.awt.geom.AffineTransform], void)}
; {var2650=org.apache.poi.xslf.util.DummyGraphics2d, var1491=r5, var3196=java.awt.geom.AffineTransform, var3607=r1, var2897=$r0, var2844=$r2, var1706=java.lang.Object, var2071=$r3, var3956=r4, var2609=java.io.PrintStream, var2118=$r6, var1406=java.awt.Graphics2D, var1220=$r7}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2650, r5=var1491, java.awt.geom.AffineTransform=var3196, r1=var3607, $r0=var2897, $r2=var2844, java.lang.Object=var1706, $r3=var2071, r4=var3956, java.io.PrintStream=var2609, $r6=var2118, java.awt.Graphics2D=var1406, $r7=var1220}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.geom.AffineTransform;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("transform(AffineTransform):\n  Tx = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void transform(java.awt.geom.AffineTransform)>(r1);	return
;block_num 1