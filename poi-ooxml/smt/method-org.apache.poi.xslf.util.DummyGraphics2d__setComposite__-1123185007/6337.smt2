(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3177 0)
(declare-sort var988 0)
(declare-sort var3357 0)
(declare-sort var1849 0)
(declare-sort var2094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var3357) String)
(declare-fun cast-from-var988-to-var3357 (var988) var3357)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3177) var1849)
(declare-fun println/1773605060 (var1849 String) void)
(declare-fun g2D/-1110529256 (var3177) var2094)
(declare-fun setComposite/185722106 (var2094 var988) void)
(declare-const null-var3177 var3177)
(declare-const null-var988 var988)
(declare-const var2716 var3177) ; Statement: r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2716 null-var3177)))
(declare-const var2582 var988) ; Statement: r0 := @parameter0: java.awt.Composite 
(assert (not (= var2582 null-var988)))
(define-const var2146 Bool true) ; Statement: $z0 = r0 instanceof java.awt.AlphaComposite 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2146 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1254 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1254)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1254!1 String)
(assert (= var1254!1 ""))
(assert true)
(define-const var1598 String (append/672562846 var1254!1 "g.setComposite(")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setComposite(") 
(declare-const var1254!2 String)
(assert (= var1254!2 (str.++ var1254!1 "g.setComposite(")))
(assert true)
(define-const var1250 String (toString/-522406933 (cast-from-var988-to-var3357 var2582))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2236 String (append/672562846 var1598 var1250)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1598!1 String)
(assert (= var1598!1 (str.++ var1598 var1250)))
(assert true)
(define-const var2647 String (append/672562846 var2236 ");")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var2236!1 String)
(assert (= var2236!1 (str.++ var2236 ");")))
(assert true)
(define-const var969 String (toString/-2075883882 var2647)) ; Statement: r20 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3336 var1849 (log/-1110529256 var2716)) ; Statement: $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3336 var969)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r20) 

(declare-const var3336!1 var1849)
(declare-const var969!1 String)
(define-const var3413 var2094 (g2D/-1110529256 var2716)) ; Statement: $r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setComposite/185722106 var3413 var2582)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void setComposite(java.awt.Composite)>(r0) 

(declare-const var3413!1 var2094)
(declare-const var2582!1 var988)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var988-to-var3357=([java.awt.Composite], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setComposite/185722106=([java.awt.Graphics2D, java.awt.Composite], void)}
; {var3177=org.apache.poi.xslf.util.DummyGraphics2d, var2716=r6, var988=java.awt.Composite, var2582=r0, var2146=$z0, var1254=$r1, var1598=$r3, var3357=java.lang.Object, var1250=$r2, var2236=$r4, var2647=$r5, var969=r20, var1849=java.io.PrintStream, var3336=$r7, var2094=java.awt.Graphics2D, var3413=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3177, r6=var2716, java.awt.Composite=var988, r0=var2582, $z0=var2146, $r1=var1254, $r3=var1598, java.lang.Object=var3357, $r2=var1250, $r4=var2236, $r5=var2647, r20=var969, java.io.PrintStream=var1849, $r7=var3336, java.awt.Graphics2D=var2094, $r8=var3413}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Composite;	$z0 = r0 instanceof java.awt.AlphaComposite;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setComposite(");	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	r20 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r20);	$r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void setComposite(java.awt.Composite)>(r0);	return
;block_num 3