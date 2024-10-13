(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3317 0)
(declare-sort var2224 0)
(declare-sort var984 0)
(declare-sort var1701 0)
(declare-sort var1371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2224_toString/1240813769 ((Array Int Int)) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3317) var984)
(declare-fun println/1773605060 (var984 String) void)
(declare-fun g2D/-1110529256 (var3317) var1701)
(declare-fun drawPolyline/-1630319675 (var1371 (Array Int Int) (Array Int Int) Int) void)
(declare-fun cast-from-var1701-to-var1371 (var1701) var1371)
(declare-const null-var3317 var3317)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1748 var3317) ; Statement: r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1748 null-var3317)))
(declare-const var3016 (Array Int Int)) ; Statement: r1 := @parameter0: int[] 
(assert (not (= var3016 null-__Array__Int__Int__)))
(declare-const var853 (Array Int Int)) ; Statement: r5 := @parameter1: int[] 
(assert (not (= var853 null-__Array__Int__Int__)))
(declare-const var2011 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2011 null-Int)))
(define-const var3614 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3614)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3614!1 String)
(assert (= var3614!1 ""))
(assert true)
(define-const var1432 String (append/672562846 var3614!1 "drawPolyline(int[],int[],int):\n  xPoints = ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawPolyline(int[],int[],int):\n  xPoints = ") 
(declare-const var3614!2 String)
(assert (= var3614!2 (str.++ var3614!1 "drawPolyline(int[],int[],int):\n  xPoints = ")))
(define-const var1279 String (var2224_toString/1240813769 var3016)) ; Statement: $r2 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r1) 
(assert true)
(define-const var2280 String (append/672562846 var1432 var1279)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1432!1 String)
(assert (= var1432!1 (str.++ var1432 var1279)))
(assert true)
(define-const var1849 String (append/672562846 var2280 "\n  yPoints = ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  yPoints = ") 
(declare-const var2280!1 String)
(assert (= var2280!1 (str.++ var2280 "\n  yPoints = ")))
(define-const var2471 String (var2224_toString/1240813769 var853)) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r5) 
(assert true)
(define-const var2866 String (append/672562846 var1849 var2471)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1849!1 String)
(assert (= var1849!1 (str.++ var1849 var2471)))
(assert true)
(define-const var2445 String (append/672562846 var2866 "\n  nPoints = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  nPoints = ") 
(declare-const var2866!1 String)
(assert (= var2866!1 (str.++ var2866 "\n  nPoints = ")))
(assert true)
(define-const var2982 String (append/-1001720160 var2445 var2011)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2445!1 String)
(assert (str.prefixof var2445 var2445!1))
(assert true)
(define-const var2390 String (toString/-2075883882 var2982)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1976 var984 (log/-1110529256 var1748)) ; Statement: $r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1976 var2390)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11) 

(declare-const var1976!1 var984)
(declare-const var2390!1 String)
(define-const var1343 var1701 (g2D/-1110529256 var1748)) ; Statement: $r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawPolyline/-1630319675 (cast-from-var1701-to-var1371 var1343) var3016 var853 var2011)) ; Statement: virtualinvoke $r14.<java.awt.Graphics2D: void drawPolyline(int[],int[],int)>(r1, r5, i0) 

(declare-const var1343!1 var1701)
(declare-const var3016!1 (Array Int Int))
(declare-const var853!1 (Array Int Int))
(declare-const var2011!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2224_toString/1240813769=([int[]], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawPolyline/-1630319675=([java.awt.Graphics, int[], int[], int], void), cast-from-var1701-to-var1371=([java.awt.Graphics2D], java.awt.Graphics)}
; {var3317=org.apache.poi.xslf.util.DummyGraphics2d, var1748=r12, var3016=r1, var853=r5, var2011=i0, var3614=$r0, var1432=$r3, var2224=java.util.Arrays, var1279=$r2, var2280=$r4, var1849=$r7, var2471=$r6, var2866=$r8, var2445=$r9, var2982=$r10, var2390=r11, var984=java.io.PrintStream, var1976=$r13, var1701=java.awt.Graphics2D, var1343=$r14, var1371=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3317, r12=var1748, r1=var3016, r5=var853, i0=var2011, $r0=var3614, $r3=var1432, java.util.Arrays=var2224, $r2=var1279, $r4=var2280, $r7=var1849, $r6=var2471, $r8=var2866, $r9=var2445, $r10=var2982, r11=var2390, java.io.PrintStream=var984, $r13=var1976, java.awt.Graphics2D=var1701, $r14=var1343, java.awt.Graphics=var1371}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: int[];	r5 := @parameter1: int[];	i0 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawPolyline(int[],int[],int):\n  xPoints = ");	$r2 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  yPoints = ");	$r6 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  nPoints = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11);	$r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r14.<java.awt.Graphics2D: void drawPolyline(int[],int[],int)>(r1, r5, i0);	return
;block_num 1