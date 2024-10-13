(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2856 0)
(declare-sort var2336 0)
(declare-sort var3104 0)
(declare-sort var1620 0)
(declare-sort var3278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2336_toString/1240813769 ((Array Int Int)) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2856) var3104)
(declare-fun println/1773605060 (var3104 String) void)
(declare-fun g2D/-1110529256 (var2856) var1620)
(declare-fun drawPolygon/1728109153 (var3278 (Array Int Int) (Array Int Int) Int) void)
(declare-fun cast-from-var1620-to-var3278 (var1620) var3278)
(declare-const null-var2856 var2856)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1245 var2856) ; Statement: r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1245 null-var2856)))
(declare-const var153 (Array Int Int)) ; Statement: r1 := @parameter0: int[] 
(assert (not (= var153 null-__Array__Int__Int__)))
(declare-const var1061 (Array Int Int)) ; Statement: r5 := @parameter1: int[] 
(assert (not (= var1061 null-__Array__Int__Int__)))
(declare-const var3793 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3793 null-Int)))
(define-const var1921 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1921)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1921!1 String)
(assert (= var1921!1 ""))
(assert true)
(define-const var3888 String (append/672562846 var1921!1 "drawPolygon(int[],int[],int):\n  xPoints = ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawPolygon(int[],int[],int):\n  xPoints = ") 
(declare-const var1921!2 String)
(assert (= var1921!2 (str.++ var1921!1 "drawPolygon(int[],int[],int):\n  xPoints = ")))
(define-const var604 String (var2336_toString/1240813769 var153)) ; Statement: $r2 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r1) 
(assert true)
(define-const var132 String (append/672562846 var3888 var604)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3888!1 String)
(assert (= var3888!1 (str.++ var3888 var604)))
(assert true)
(define-const var967 String (append/672562846 var132 "\n  yPoints = ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  yPoints = ") 
(declare-const var132!1 String)
(assert (= var132!1 (str.++ var132 "\n  yPoints = ")))
(define-const var1359 String (var2336_toString/1240813769 var1061)) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r5) 
(assert true)
(define-const var2119 String (append/672562846 var967 var1359)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var967!1 String)
(assert (= var967!1 (str.++ var967 var1359)))
(assert true)
(define-const var3978 String (append/672562846 var2119 "\n  nPoints = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  nPoints = ") 
(declare-const var2119!1 String)
(assert (= var2119!1 (str.++ var2119 "\n  nPoints = ")))
(assert true)
(define-const var2908 String (append/-1001720160 var3978 var3793)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3978!1 String)
(assert (str.prefixof var3978 var3978!1))
(assert true)
(define-const var1851 String (toString/-2075883882 var2908)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2126 var3104 (log/-1110529256 var1245)) ; Statement: $r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2126 var1851)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11) 

(declare-const var2126!1 var3104)
(declare-const var1851!1 String)
(define-const var2739 var1620 (g2D/-1110529256 var1245)) ; Statement: $r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawPolygon/1728109153 (cast-from-var1620-to-var3278 var2739) var153 var1061 var3793)) ; Statement: virtualinvoke $r14.<java.awt.Graphics2D: void drawPolygon(int[],int[],int)>(r1, r5, i0) 

(declare-const var2739!1 var1620)
(declare-const var153!1 (Array Int Int))
(declare-const var1061!1 (Array Int Int))
(declare-const var3793!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2336_toString/1240813769=([int[]], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawPolygon/1728109153=([java.awt.Graphics, int[], int[], int], void), cast-from-var1620-to-var3278=([java.awt.Graphics2D], java.awt.Graphics)}
; {var2856=org.apache.poi.xslf.util.DummyGraphics2d, var1245=r12, var153=r1, var1061=r5, var3793=i0, var1921=$r0, var3888=$r3, var2336=java.util.Arrays, var604=$r2, var132=$r4, var967=$r7, var1359=$r6, var2119=$r8, var3978=$r9, var2908=$r10, var1851=r11, var3104=java.io.PrintStream, var2126=$r13, var1620=java.awt.Graphics2D, var2739=$r14, var3278=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2856, r12=var1245, r1=var153, r5=var1061, i0=var3793, $r0=var1921, $r3=var3888, java.util.Arrays=var2336, $r2=var604, $r4=var132, $r7=var967, $r6=var1359, $r8=var2119, $r9=var3978, $r10=var2908, r11=var1851, java.io.PrintStream=var3104, $r13=var2126, java.awt.Graphics2D=var1620, $r14=var2739, java.awt.Graphics=var3278}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: int[];	r5 := @parameter1: int[];	i0 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawPolygon(int[],int[],int):\n  xPoints = ");	$r2 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  yPoints = ");	$r6 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  nPoints = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11);	$r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r14.<java.awt.Graphics2D: void drawPolygon(int[],int[],int)>(r1, r5, i0);	return
;block_num 1