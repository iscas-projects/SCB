(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1193 0)
(declare-sort var1881 0)
(declare-sort var2225 0)
(declare-sort var822 0)
(declare-sort var1557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-1110529256 (var1193) var822)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1193_mapHint/1839162926 (var2225) String)
(declare-fun cast-from-var1881-to-var2225 (var1881) var2225)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var822 String) void)
(declare-fun g2D/-1110529256 (var1193) var1557)
(declare-fun setRenderingHint/63402731 (var1557 var1881 var2225) void)
(declare-const null-var1193 var1193)
(declare-const null-var1881 var1881)
(declare-const null-var2225 var2225)
(declare-const var1866 var1193) ; Statement: r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1866 null-var1193)))
(declare-const var2726 var1881) ; Statement: r3 := @parameter0: java.awt.RenderingHints$Key 
(assert (not (= var2726 null-var1881)))
(declare-const var2540 var2225) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var2540 null-var2225)))
(define-const var2892 var822 (log/-1110529256 var1866)) ; Statement: $r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(define-const var1500 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1500)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1500!1 String)
(assert (= var1500!1 ""))
(assert true)
(define-const var2281 String (append/672562846 var1500!1 "g.setRenderingHint(")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setRenderingHint(") 
(declare-const var1500!2 String)
(assert (= var1500!2 (str.++ var1500!1 "g.setRenderingHint(")))
(define-const var3400 String (var1193_mapHint/1839162926 (cast-from-var1881-to-var2225 var2726))) ; Statement: $r4 = staticinvoke <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String mapHint(java.lang.Object)>(r3) 
(assert true)
(define-const var1030 String (append/672562846 var2281 var3400)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2281!1 String)
(assert (= var2281!1 (str.++ var2281 var3400)))
(assert true)
(define-const var3902 String (append/672562846 var1030 ", ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1030!1 String)
(assert (= var1030!1 (str.++ var1030 ", ")))
(define-const var3072 String (var1193_mapHint/1839162926 var2540)) ; Statement: $r8 = staticinvoke <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String mapHint(java.lang.Object)>(r7) 
(assert true)
(define-const var3459 String (append/672562846 var3902 var3072)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3902!1 String)
(assert (= var3902!1 (str.++ var3902 var3072)))
(assert true)
(define-const var1663 String (append/672562846 var3459 ");")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var3459!1 String)
(assert (= var3459!1 (str.++ var3459 ");")))
(assert true)
(define-const var851 String (toString/-2075883882 var1663)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2892 var851)) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r12) 

(declare-const var2892!1 var822)
(declare-const var851!1 String)
(define-const var199 var1557 (g2D/-1110529256 var1866)) ; Statement: $r13 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setRenderingHint/63402731 var199 var2726 var2540)) ; Statement: virtualinvoke $r13.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>(r3, r7) 

(declare-const var199!1 var1557)
(declare-const var2726!1 var1881)
(declare-const var2540!1 var2225)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1193_mapHint/1839162926=([java.lang.Object], java.lang.String), cast-from-var1881-to-var2225=([java.awt.RenderingHints$Key], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setRenderingHint/63402731=([java.awt.Graphics2D, java.awt.RenderingHints$Key, java.lang.Object], void)}
; {var1193=org.apache.poi.xslf.util.DummyGraphics2d, var1866=r0, var1881=java.awt.RenderingHints$Key, var2726=r3, var2225=java.lang.Object, var2540=r7, var822=java.io.PrintStream, var2892=$r2, var1500=$r1, var2281=$r5, var3400=$r4, var1030=$r6, var3902=$r9, var3072=$r8, var3459=$r10, var1663=$r11, var851=$r12, var1557=java.awt.Graphics2D, var199=$r13}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1193, r0=var1866, java.awt.RenderingHints$Key=var1881, r3=var2726, java.lang.Object=var2225, r7=var2540, java.io.PrintStream=var822, $r2=var2892, $r1=var1500, $r5=var2281, $r4=var3400, $r6=var1030, $r9=var3902, $r8=var3072, $r10=var3459, $r11=var1663, $r12=var851, java.awt.Graphics2D=var1557, $r13=var199}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r3 := @parameter0: java.awt.RenderingHints$Key;	r7 := @parameter1: java.lang.Object;	$r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setRenderingHint(");	$r4 = staticinvoke <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String mapHint(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r8 = staticinvoke <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String mapHint(java.lang.Object)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r12);	$r13 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r13.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>(r3, r7);	return
;block_num 1