(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2023 0)
(declare-sort var2397 0)
(declare-sort var1361 0)
(declare-sort var1998 0)
(declare-sort var3212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2397_toString/1240813769 ((Array Int Int)) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2023) var1361)
(declare-fun println/1773605060 (var1361 String) void)
(declare-fun g2D/-1110529256 (var2023) var1998)
(declare-fun fillPolygon/-1536391422 (var3212 (Array Int Int) (Array Int Int) Int) void)
(declare-fun cast-from-var1998-to-var3212 (var1998) var3212)
(declare-const null-var2023 var2023)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2766 var2023) ; Statement: r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2766 null-var2023)))
(declare-const var1946 (Array Int Int)) ; Statement: r1 := @parameter0: int[] 
(assert (not (= var1946 null-__Array__Int__Int__)))
(declare-const var2066 (Array Int Int)) ; Statement: r5 := @parameter1: int[] 
(assert (not (= var2066 null-__Array__Int__Int__)))
(declare-const var2904 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2904 null-Int)))
(define-const var1476 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1476)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1476!1 String)
(assert (= var1476!1 ""))
(assert true)
(define-const var2769 String (append/672562846 var1476!1 "fillPolygon(int[],int[],int):\n  xPoints = ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fillPolygon(int[],int[],int):\n  xPoints = ") 
(declare-const var1476!2 String)
(assert (= var1476!2 (str.++ var1476!1 "fillPolygon(int[],int[],int):\n  xPoints = ")))
(define-const var1341 String (var2397_toString/1240813769 var1946)) ; Statement: $r2 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r1) 
(assert true)
(define-const var1487 String (append/672562846 var2769 var1341)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2769!1 String)
(assert (= var2769!1 (str.++ var2769 var1341)))
(assert true)
(define-const var2126 String (append/672562846 var1487 "\n  yPoints = ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  yPoints = ") 
(declare-const var1487!1 String)
(assert (= var1487!1 (str.++ var1487 "\n  yPoints = ")))
(define-const var908 String (var2397_toString/1240813769 var2066)) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r5) 
(assert true)
(define-const var3486 String (append/672562846 var2126 var908)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2126!1 String)
(assert (= var2126!1 (str.++ var2126 var908)))
(assert true)
(define-const var2167 String (append/672562846 var3486 "\n  nPoints = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  nPoints = ") 
(declare-const var3486!1 String)
(assert (= var3486!1 (str.++ var3486 "\n  nPoints = ")))
(assert true)
(define-const var3686 String (append/-1001720160 var2167 var2904)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2167!1 String)
(assert (str.prefixof var2167 var2167!1))
(assert true)
(define-const var2897 String (toString/-2075883882 var3686)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2095 var1361 (log/-1110529256 var2766)) ; Statement: $r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2095 var2897)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11) 

(declare-const var2095!1 var1361)
(declare-const var2897!1 String)
(define-const var1534 var1998 (g2D/-1110529256 var2766)) ; Statement: $r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (fillPolygon/-1536391422 (cast-from-var1998-to-var3212 var1534) var1946 var2066 var2904)) ; Statement: virtualinvoke $r14.<java.awt.Graphics2D: void fillPolygon(int[],int[],int)>(r1, r5, i0) 

(declare-const var1534!1 var1998)
(declare-const var1946!1 (Array Int Int))
(declare-const var2066!1 (Array Int Int))
(declare-const var2904!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2397_toString/1240813769=([int[]], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), fillPolygon/-1536391422=([java.awt.Graphics, int[], int[], int], void), cast-from-var1998-to-var3212=([java.awt.Graphics2D], java.awt.Graphics)}
; {var2023=org.apache.poi.xslf.util.DummyGraphics2d, var2766=r12, var1946=r1, var2066=r5, var2904=i0, var1476=$r0, var2769=$r3, var2397=java.util.Arrays, var1341=$r2, var1487=$r4, var2126=$r7, var908=$r6, var3486=$r8, var2167=$r9, var3686=$r10, var2897=r11, var1361=java.io.PrintStream, var2095=$r13, var1998=java.awt.Graphics2D, var1534=$r14, var3212=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2023, r12=var2766, r1=var1946, r5=var2066, i0=var2904, $r0=var1476, $r3=var2769, java.util.Arrays=var2397, $r2=var1341, $r4=var1487, $r7=var2126, $r6=var908, $r8=var3486, $r9=var2167, $r10=var3686, r11=var2897, java.io.PrintStream=var1361, $r13=var2095, java.awt.Graphics2D=var1998, $r14=var1534, java.awt.Graphics=var3212}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: int[];	r5 := @parameter1: int[];	i0 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fillPolygon(int[],int[],int):\n  xPoints = ");	$r2 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  yPoints = ");	$r6 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  nPoints = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11);	$r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r14.<java.awt.Graphics2D: void fillPolygon(int[],int[],int)>(r1, r5, i0);	return
;block_num 1