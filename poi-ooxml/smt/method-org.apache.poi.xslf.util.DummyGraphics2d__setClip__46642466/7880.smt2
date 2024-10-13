(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2627 0)
(declare-sort var974 0)
(declare-sort var1448 0)
(declare-sort var3256 0)
(declare-sort var409 0)
(declare-sort var980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1448) String)
(declare-fun cast-from-var974-to-var1448 (var974) var1448)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2627) var3256)
(declare-fun println/1773605060 (var3256 String) void)
(declare-fun g2D/-1110529256 (var2627) var409)
(declare-fun setClip/-1512296853 (var980 var974) void)
(declare-fun cast-from-var409-to-var980 (var409) var980)
(declare-const null-var2627 var2627)
(declare-const null-var974 var974)
(declare-const var3456 var2627) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3456 null-var2627)))
(declare-const var2853 var974) ; Statement: r1 := @parameter0: java.awt.Shape 
(assert (not (= var2853 null-var974)))
(define-const var989 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var989)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var989!1 String)
(assert (= var989!1 ""))
(assert true)
(define-const var2606 String (append/672562846 var989!1 "setClip(Shape):\n  clip = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setClip(Shape):\n  clip = ") 
(declare-const var989!2 String)
(assert (= var989!2 (str.++ var989!1 "setClip(Shape):\n  clip = ")))
(assert true)
(define-const var907 String (append/-1031950772 var2606 (cast-from-var974-to-var1448 var2853))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2606!1 String)
(assert (str.prefixof var2606 var2606!1))
(assert true)
(define-const var2137 String (toString/-2075883882 var907)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var553 var3256 (log/-1110529256 var3456)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var553 var2137)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var553!1 var3256)
(declare-const var2137!1 String)
(define-const var1757 var409 (g2D/-1110529256 var3456)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setClip/-1512296853 (cast-from-var409-to-var980 var1757) var2853)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void setClip(java.awt.Shape)>(r1) 

(declare-const var1757!1 var409)
(declare-const var2853!1 var974)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var974-to-var1448=([java.awt.Shape], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setClip/-1512296853=([java.awt.Graphics, java.awt.Shape], void), cast-from-var409-to-var980=([java.awt.Graphics2D], java.awt.Graphics)}
; {var2627=org.apache.poi.xslf.util.DummyGraphics2d, var3456=r5, var974=java.awt.Shape, var2853=r1, var989=$r0, var2606=$r2, var1448=java.lang.Object, var907=$r3, var2137=r4, var3256=java.io.PrintStream, var553=$r6, var409=java.awt.Graphics2D, var1757=$r7, var980=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2627, r5=var3456, java.awt.Shape=var974, r1=var2853, $r0=var989, $r2=var2606, java.lang.Object=var1448, $r3=var907, r4=var2137, java.io.PrintStream=var3256, $r6=var553, java.awt.Graphics2D=var409, $r7=var1757, java.awt.Graphics=var980}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Shape;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setClip(Shape):\n  clip = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void setClip(java.awt.Shape)>(r1);	return
;block_num 1