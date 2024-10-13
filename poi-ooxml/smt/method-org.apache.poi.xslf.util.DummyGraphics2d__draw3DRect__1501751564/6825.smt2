(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var650 0)
(declare-sort var3328 0)
(declare-sort var1804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var650) var3328)
(declare-fun println/1773605060 (var3328 String) void)
(declare-fun g2D/-1110529256 (var650) var1804)
(declare-fun draw3DRect/1145474563 (var1804 Int Int Int Int Bool) void)
(declare-const null-var650 var650)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1221 var650) ; Statement: r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1221 null-var650)))
(declare-const var3569 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3569 null-Int)))
(declare-const var3197 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3197 null-Int)))
(declare-const var2104 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2104 null-Int)))
(declare-const var1795 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var1795 null-Int)))
(declare-const var606 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var606 null-Bool)))
(define-const var3536 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3536)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3536!1 String)
(assert (= var3536!1 ""))
(assert true)
(define-const var1796 String (append/672562846 var3536!1 "draw3DRect(int,int,int,int,boolean):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("draw3DRect(int,int,int,int,boolean):\n  x = ") 
(declare-const var3536!2 String)
(assert (= var3536!2 (str.++ var3536!1 "draw3DRect(int,int,int,int,boolean):\n  x = ")))
(assert true)
(define-const var3889 String (append/-1001720160 var1796 var3569)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1796!1 String)
(assert (str.prefixof var1796 var1796!1))
(assert true)
(define-const var577 String (append/672562846 var3889 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var3889!1 String)
(assert (= var3889!1 (str.++ var3889 "\n  y = ")))
(assert true)
(define-const var136 String (append/-1001720160 var577 var3197)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var577!1 String)
(assert (str.prefixof var577 var577!1))
(assert true)
(define-const var2596 String (append/672562846 var136 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var136!1 String)
(assert (= var136!1 (str.++ var136 "\n  width = ")))
(assert true)
(define-const var2829 String (append/-1001720160 var2596 var2104)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2596!1 String)
(assert (str.prefixof var2596 var2596!1))
(assert true)
(define-const var847 String (append/672562846 var2829 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var2829!1 String)
(assert (= var2829!1 (str.++ var2829 "\n  height = ")))
(assert true)
(define-const var775 String (append/-1001720160 var847 var1795)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var847!1 String)
(assert (str.prefixof var847 var847!1))
(assert true)
(define-const var2955 String (append/672562846 var775 "\n  raised = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  raised = ") 
(declare-const var775!1 String)
(assert (= var775!1 (str.++ var775 "\n  raised = ")))
(assert true)
(define-const var1735 String (append/-388390247 var2955 var606)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var2955!1 String)
(assert (str.prefixof var2955 var2955!1))
(assert true)
(define-const var272 String (toString/-2075883882 var1735)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1486 var3328 (log/-1110529256 var1221)) ; Statement: $r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1486 var272)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11) 

(declare-const var1486!1 var3328)
(declare-const var272!1 String)
(define-const var3826 var1804 (g2D/-1110529256 var1221)) ; Statement: $r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (draw3DRect/1145474563 var3826 var3569 var3197 var2104 var1795 var606)) ; Statement: virtualinvoke $r14.<java.awt.Graphics2D: void draw3DRect(int,int,int,int,boolean)>(i0, i1, i2, i3, z0) 

(declare-const var3826!1 var1804)
(declare-const var3569!1 Int)
(declare-const var3197!1 Int)
(declare-const var2104!1 Int)
(declare-const var1795!1 Int)
(declare-const var606!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), draw3DRect/1145474563=([java.awt.Graphics2D, int, int, int, int, boolean], void)}
; {var650=org.apache.poi.xslf.util.DummyGraphics2d, var1221=r12, var3569=i0, var3197=i1, var2104=i2, var1795=i3, var606=z0, var3536=$r0, var1796=$r1, var3889=$r2, var577=$r3, var136=$r4, var2596=$r5, var2829=$r6, var847=$r7, var775=$r8, var2955=$r9, var1735=$r10, var272=r11, var3328=java.io.PrintStream, var1486=$r13, var1804=java.awt.Graphics2D, var3826=$r14}
; {org.apache.poi.xslf.util.DummyGraphics2d=var650, r12=var1221, i0=var3569, i1=var3197, i2=var2104, i3=var1795, z0=var606, $r0=var3536, $r1=var1796, $r2=var3889, $r3=var577, $r4=var136, $r5=var2596, $r6=var2829, $r7=var847, $r8=var775, $r9=var2955, $r10=var1735, r11=var272, java.io.PrintStream=var3328, $r13=var1486, java.awt.Graphics2D=var1804, $r14=var3826}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("draw3DRect(int,int,int,int,boolean):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  raised = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11);	$r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r14.<java.awt.Graphics2D: void draw3DRect(int,int,int,int,boolean)>(i0, i1, i2, i3, z0);	return
;block_num 1