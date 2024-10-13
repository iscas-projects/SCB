(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2638 0)
(declare-sort var1570 0)
(declare-sort var3497 0)
(declare-sort var565 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-1110529256 (var2638) var3497)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var565) String)
(declare-fun cast-from-var1570-to-var565 (var1570) var565)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3497 String) void)
(declare-fun g2D/-1110529256 (var2638) var3271)
(declare-fun fill/1396239382 (var3271 var1570) void)
(declare-const null-var2638 var2638)
(declare-const null-var1570 var1570)
(declare-const var2377 var2638) ; Statement: r1 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2377 null-var2638)))
(declare-const var3592 var1570) ; Statement: r0 := @parameter0: java.awt.Shape 
(assert (not (= var3592 null-var1570)))
(define-const var2400 Bool true) ; Statement: $z0 = r0 instanceof java.awt.geom.Path2D 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert (= (ite var2400 1 0) 0)) ; Cond: $z0 == 0 
(define-const var131 var3497 (log/-1110529256 var2377)) ; Statement: $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(define-const var2189 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2189)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2189!1 String)
(assert (= var2189!1 ""))
(assert true)
(define-const var3679 String (append/672562846 var2189!1 "g.fill(")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.fill(") 
(declare-const var2189!2 String)
(assert (= var2189!2 (str.++ var2189!1 "g.fill(")))
(assert true)
(define-const var561 String (append/-1031950772 var3679 (cast-from-var1570-to-var565 var3592))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3679!1 String)
(assert (str.prefixof var3679 var3679!1))
(assert true)
(define-const var3893 String (append/672562846 var561 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var561!1 String)
(assert (= var561!1 (str.++ var561 ")")))
(assert true)
(define-const var147 String (toString/-2075883882 var3893)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var131 var147)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r7) 

(declare-const var131!1 var3497)
(declare-const var147!1 String)
(assert true) ; Non Conditional
(define-const var573 var3271 (g2D/-1110529256 var2377)) ; Statement: $r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (fill/1396239382 var573 var3592)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void fill(java.awt.Shape)>(r0) 

(declare-const var573!1 var3271)
(declare-const var3592!1 var1570)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1570-to-var565=([java.awt.Shape], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), fill/1396239382=([java.awt.Graphics2D, java.awt.Shape], void)}
; {var2638=org.apache.poi.xslf.util.DummyGraphics2d, var2377=r1, var1570=java.awt.Shape, var3592=r0, var2400=$z0, var3497=java.io.PrintStream, var131=$r3, var2189=$r2, var3679=$r4, var565=java.lang.Object, var561=$r5, var3893=$r6, var147=$r7, var3271=java.awt.Graphics2D, var573=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2638, r1=var2377, java.awt.Shape=var1570, r0=var3592, $z0=var2400, java.io.PrintStream=var3497, $r3=var131, $r2=var2189, $r4=var3679, java.lang.Object=var565, $r5=var561, $r6=var3893, $r7=var147, java.awt.Graphics2D=var3271, $r8=var573}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Shape;	$z0 = r0 instanceof java.awt.geom.Path2D;	if $z0 == 0 goto $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.fill(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r7);	$r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void fill(java.awt.Shape)>(r0);	return
;block_num 3