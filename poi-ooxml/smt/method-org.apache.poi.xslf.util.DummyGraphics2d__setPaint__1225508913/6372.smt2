(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3664 0)
(declare-sort var797 0)
(declare-sort var694 0)
(declare-sort var826 0)
(declare-sort var1642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var694) String)
(declare-fun cast-from-var797-to-var694 (var797) var694)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3664) var826)
(declare-fun println/1773605060 (var826 String) void)
(declare-fun g2D/-1110529256 (var3664) var1642)
(declare-fun setPaint/842897306 (var1642 var797) void)
(declare-const null-var3664 var3664)
(declare-const null-var797 var797)
(declare-const var1573 var3664) ; Statement: r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1573 null-var3664)))
(declare-const var2095 var797) ; Statement: r0 := @parameter0: java.awt.Paint 
(assert (not (= var2095 null-var797)))
(define-const var3753 Bool true) ; Statement: $z0 = r0 instanceof java.awt.Color 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3753 1 0) 0)) ; Cond: $z0 == 0 
(define-const var206 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var206)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var206!1 String)
(assert (= var206!1 ""))
(assert true)
(define-const var35 String (append/672562846 var206!1 "g.setPaint(")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setPaint(") 
(declare-const var206!2 String)
(assert (= var206!2 (str.++ var206!1 "g.setPaint(")))
(assert true)
(define-const var3303 String (toString/-522406933 (cast-from-var797-to-var694 var2095))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var686 String (append/672562846 var35 var3303)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var35!1 String)
(assert (= var35!1 (str.++ var35 var3303)))
(assert true)
(define-const var2073 String (append/672562846 var686 ");")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var686!1 String)
(assert (= var686!1 (str.++ var686 ");")))
(assert true)
(define-const var1920 String (toString/-2075883882 var2073)) ; Statement: r17 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3951 var826 (log/-1110529256 var1573)) ; Statement: $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3951 var1920)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r17) 

(declare-const var3951!1 var826)
(declare-const var1920!1 String)
(define-const var1810 var1642 (g2D/-1110529256 var1573)) ; Statement: $r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setPaint/842897306 var1810 var2095)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void setPaint(java.awt.Paint)>(r0) 

(declare-const var1810!1 var1642)
(declare-const var2095!1 var797)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var797-to-var694=([java.awt.Paint], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setPaint/842897306=([java.awt.Graphics2D, java.awt.Paint], void)}
; {var3664=org.apache.poi.xslf.util.DummyGraphics2d, var1573=r6, var797=java.awt.Paint, var2095=r0, var3753=$z0, var206=$r1, var35=$r3, var694=java.lang.Object, var3303=$r2, var686=$r4, var2073=$r5, var1920=r17, var826=java.io.PrintStream, var3951=$r7, var1642=java.awt.Graphics2D, var1810=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3664, r6=var1573, java.awt.Paint=var797, r0=var2095, $z0=var3753, $r1=var206, $r3=var35, java.lang.Object=var694, $r2=var3303, $r4=var686, $r5=var2073, r17=var1920, java.io.PrintStream=var826, $r7=var3951, java.awt.Graphics2D=var1642, $r8=var1810}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Paint;	$z0 = r0 instanceof java.awt.Color;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setPaint(");	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	r17 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r17);	$r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void setPaint(java.awt.Paint)>(r0);	return
;block_num 3