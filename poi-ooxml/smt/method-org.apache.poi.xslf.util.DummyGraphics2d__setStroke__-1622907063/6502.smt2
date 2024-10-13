(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1291 0)
(declare-sort var3876 0)
(declare-sort var80 0)
(declare-sort var167 0)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var80) String)
(declare-fun cast-from-var3876-to-var80 (var3876) var80)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1291) var167)
(declare-fun println/1773605060 (var167 String) void)
(declare-fun g2D/-1110529256 (var1291) var2001)
(declare-fun setStroke/54526066 (var2001 var3876) void)
(declare-const null-var1291 var1291)
(declare-const null-var3876 var3876)
(declare-const var3537 var1291) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3537 null-var1291)))
(declare-const var1422 var3876) ; Statement: r0 := @parameter0: java.awt.Stroke 
(assert (not (= var1422 null-var3876)))
(define-const var3358 Bool true) ; Statement: $z0 = r0 instanceof java.awt.BasicStroke 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3358 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1363 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1363)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1363!1 String)
(assert (= var1363!1 ""))
(assert true)
(define-const var796 String (append/672562846 var1363!1 "g.setStroke(")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setStroke(") 
(declare-const var1363!2 String)
(assert (= var1363!2 (str.++ var1363!1 "g.setStroke(")))
(assert true)
(define-const var4 String (append/-1031950772 var796 (cast-from-var3876-to-var80 var1422))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var796!1 String)
(assert (str.prefixof var796 var796!1))
(assert true)
(define-const var1708 String (append/672562846 var4 ");")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var4!1 String)
(assert (= var4!1 (str.++ var4 ");")))
(assert true)
(define-const var1174 String (toString/-2075883882 var1708)) ; Statement: r29 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2906 var167 (log/-1110529256 var3537)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2906 var1174)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r29) 

(declare-const var2906!1 var167)
(declare-const var1174!1 String)
(define-const var686 var2001 (g2D/-1110529256 var3537)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setStroke/54526066 var686 var1422)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void setStroke(java.awt.Stroke)>(r0) 

(declare-const var686!1 var2001)
(declare-const var1422!1 var3876)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3876-to-var80=([java.awt.Stroke], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setStroke/54526066=([java.awt.Graphics2D, java.awt.Stroke], void)}
; {var1291=org.apache.poi.xslf.util.DummyGraphics2d, var3537=r5, var3876=java.awt.Stroke, var1422=r0, var3358=$z0, var1363=$r1, var796=$r2, var80=java.lang.Object, var4=$r3, var1708=$r4, var1174=r29, var167=java.io.PrintStream, var2906=$r6, var2001=java.awt.Graphics2D, var686=$r7}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1291, r5=var3537, java.awt.Stroke=var3876, r0=var1422, $z0=var3358, $r1=var1363, $r2=var796, java.lang.Object=var80, $r3=var4, $r4=var1708, r29=var1174, java.io.PrintStream=var167, $r6=var2906, java.awt.Graphics2D=var2001, $r7=var686}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Stroke;	$z0 = r0 instanceof java.awt.BasicStroke;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setStroke(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	r29 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r29);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void setStroke(java.awt.Stroke)>(r0);	return
;block_num 3