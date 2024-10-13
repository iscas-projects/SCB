(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var224 0)
(declare-sort var3314 0)
(declare-sort var3791 0)
(declare-sort var2631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/991902413 (String Float32) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var224) var3791)
(declare-fun println/1773605060 (var3791 String) void)
(declare-fun g2D/-1110529256 (var224) var2631)
(declare-fun drawString/2075369764 (var2631 String Float32 Float32) void)
(declare-const null-var224 var224)
(declare-const null-String String)
(declare-const null-Float32 Float32)
(declare-const var3211 var224) ; Statement: r9 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3211 null-var224)))
(declare-const var1464 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1464 null-String)))
(declare-const var497 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var497 null-Float32)))
(declare-const var140 Float32) ; Statement: f1 := @parameter2: float 
(assert (not (= var140 null-Float32)))
(define-const var1672 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1672)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1672!1 String)
(assert (= var1672!1 ""))
(assert true)
(define-const var3784 String (append/672562846 var1672!1 "drawString(s,x,y):\n  s = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawString(s,x,y):\n  s = ") 
(declare-const var1672!2 String)
(assert (= var1672!2 (str.++ var1672!1 "drawString(s,x,y):\n  s = ")))
(assert true)
(define-const var3920 String (append/672562846 var3784 var1464)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3784!1 String)
(assert (= var3784!1 (str.++ var3784 var1464)))
(assert true)
(define-const var3736 String (append/672562846 var3920 "\n  x = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ") 
(declare-const var3920!1 String)
(assert (= var3920!1 (str.++ var3920 "\n  x = ")))
(assert true)
(define-const var1349 String (append/991902413 var3736 var497)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f0) 
(declare-const var3736!1 String)
(assert (str.prefixof var3736 var3736!1))
(assert true)
(define-const var3391 String (append/672562846 var1349 "\n  y = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var1349!1 String)
(assert (= var1349!1 (str.++ var1349 "\n  y = ")))
(assert true)
(define-const var19 String (append/991902413 var3391 var140)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f1) 
(declare-const var3391!1 String)
(assert (str.prefixof var3391 var3391!1))
(assert true)
(define-const var1795 String (toString/-2075883882 var19)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2831 var3791 (log/-1110529256 var3211)) ; Statement: $r10 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2831 var1795)) ; Statement: virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>(r8) 

(declare-const var2831!1 var3791)
(declare-const var1795!1 String)
(define-const var644 var2631 (g2D/-1110529256 var3211)) ; Statement: $r11 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawString/2075369764 var644 var1464 var497 var140)) ; Statement: virtualinvoke $r11.<java.awt.Graphics2D: void drawString(java.lang.String,float,float)>(r1, f0, f1) 

(declare-const var644!1 var2631)
(declare-const var1464!1 String)
(declare-const var497!1 Float32)
(declare-const var140!1 Float32)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawString/2075369764=([java.awt.Graphics2D, java.lang.String, float, float], void)}
; {var224=org.apache.poi.xslf.util.DummyGraphics2d, var3211=r9, var1464=r1, var3314=null_type, var497=f0, var140=f1, var1672=$r0, var3784=$r2, var3920=$r3, var3736=$r4, var1349=$r5, var3391=$r6, var19=$r7, var1795=r8, var3791=java.io.PrintStream, var2831=$r10, var2631=java.awt.Graphics2D, var644=$r11}
; {org.apache.poi.xslf.util.DummyGraphics2d=var224, r9=var3211, r1=var1464, null_type=var3314, f0=var497, f1=var140, $r0=var1672, $r2=var3784, $r3=var3920, $r4=var3736, $r5=var1349, $r6=var3391, $r7=var19, r8=var1795, java.io.PrintStream=var3791, $r10=var2831, java.awt.Graphics2D=var2631, $r11=var644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.lang.String;	f0 := @parameter1: float;	f1 := @parameter2: float;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawString(s,x,y):\n  s = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f1);	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>(r8);	$r11 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r11.<java.awt.Graphics2D: void drawString(java.lang.String,float,float)>(r1, f0, f1);	return
;block_num 1