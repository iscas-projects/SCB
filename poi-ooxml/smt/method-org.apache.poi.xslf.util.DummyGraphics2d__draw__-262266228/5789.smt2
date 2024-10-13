(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3670 0)
(declare-sort var2963 0)
(declare-sort var3618 0)
(declare-sort var2974 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-1110529256 (var3670) var3618)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2974) String)
(declare-fun cast-from-var2963-to-var2974 (var2963) var2974)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3618 String) void)
(declare-fun g2D/-1110529256 (var3670) var985)
(declare-fun draw/-89518475 (var985 var2963) void)
(declare-const null-var3670 var3670)
(declare-const null-var2963 var2963)
(declare-const var803 var3670) ; Statement: r1 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var803 null-var3670)))
(declare-const var1291 var2963) ; Statement: r0 := @parameter0: java.awt.Shape 
(assert (not (= var1291 null-var2963)))
(define-const var1015 Bool true) ; Statement: $z0 = r0 instanceof java.awt.geom.Path2D 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert (= (ite var1015 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2096 var3618 (log/-1110529256 var803)) ; Statement: $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(define-const var760 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var760)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var760!1 String)
(assert (= var760!1 ""))
(assert true)
(define-const var368 String (append/672562846 var760!1 "g.draw(")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.draw(") 
(declare-const var760!2 String)
(assert (= var760!2 (str.++ var760!1 "g.draw(")))
(assert true)
(define-const var3814 String (append/-1031950772 var368 (cast-from-var2963-to-var2974 var1291))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var368!1 String)
(assert (str.prefixof var368 var368!1))
(assert true)
(define-const var288 String (append/672562846 var3814 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3814!1 String)
(assert (= var3814!1 (str.++ var3814 ")")))
(assert true)
(define-const var3542 String (toString/-2075883882 var288)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2096 var3542)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r7) 

(declare-const var2096!1 var3618)
(declare-const var3542!1 String)
(assert true) ; Non Conditional
(define-const var3316 var985 (g2D/-1110529256 var803)) ; Statement: $r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (draw/-89518475 var3316 var1291)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void draw(java.awt.Shape)>(r0) 

(declare-const var3316!1 var985)
(declare-const var1291!1 var2963)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2963-to-var2974=([java.awt.Shape], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), draw/-89518475=([java.awt.Graphics2D, java.awt.Shape], void)}
; {var3670=org.apache.poi.xslf.util.DummyGraphics2d, var803=r1, var2963=java.awt.Shape, var1291=r0, var1015=$z0, var3618=java.io.PrintStream, var2096=$r3, var760=$r2, var368=$r4, var2974=java.lang.Object, var3814=$r5, var288=$r6, var3542=$r7, var985=java.awt.Graphics2D, var3316=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3670, r1=var803, java.awt.Shape=var2963, r0=var1291, $z0=var1015, java.io.PrintStream=var3618, $r3=var2096, $r2=var760, $r4=var368, java.lang.Object=var2974, $r5=var3814, $r6=var288, $r7=var3542, java.awt.Graphics2D=var985, $r8=var3316}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Shape;	$z0 = r0 instanceof java.awt.geom.Path2D;	if $z0 == 0 goto $r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r3 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.draw(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r7);	$r8 = r1.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void draw(java.awt.Shape)>(r0);	return
;block_num 3