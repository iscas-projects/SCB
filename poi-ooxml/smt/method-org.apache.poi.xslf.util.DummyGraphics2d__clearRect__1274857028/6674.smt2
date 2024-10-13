(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var252 0)
(declare-sort var840 0)
(declare-sort var546 0)
(declare-sort var3497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var252) var840)
(declare-fun println/1773605060 (var840 String) void)
(declare-fun g2D/-1110529256 (var252) var546)
(declare-fun clearRect/394976347 (var3497 Int Int Int Int) void)
(declare-fun cast-from-var546-to-var3497 (var546) var3497)
(declare-const null-var252 var252)
(declare-const null-Int Int)
(declare-const var2408 var252) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2408 null-var252)))
(declare-const var3685 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3685 null-Int)))
(declare-const var2975 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2975 null-Int)))
(declare-const var3671 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3671 null-Int)))
(declare-const var2502 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2502 null-Int)))
(define-const var2009 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2009)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2009!1 String)
(assert (= var2009!1 ""))
(assert true)
(define-const var1468 String (append/672562846 var2009!1 "clearRect(int,int,int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clearRect(int,int,int,int):\n  x = ") 
(declare-const var2009!2 String)
(assert (= var2009!2 (str.++ var2009!1 "clearRect(int,int,int,int):\n  x = ")))
(assert true)
(define-const var2266 String (append/-1001720160 var1468 var3685)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1468!1 String)
(assert (str.prefixof var1468 var1468!1))
(assert true)
(define-const var2794 String (append/672562846 var2266 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var2266!1 String)
(assert (= var2266!1 (str.++ var2266 "\n  y = ")))
(assert true)
(define-const var2442 String (append/-1001720160 var2794 var2975)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2794!1 String)
(assert (str.prefixof var2794 var2794!1))
(assert true)
(define-const var3891 String (append/672562846 var2442 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var2442!1 String)
(assert (= var2442!1 (str.++ var2442 "\n  width = ")))
(assert true)
(define-const var815 String (append/-1001720160 var3891 var3671)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3891!1 String)
(assert (str.prefixof var3891 var3891!1))
(assert true)
(define-const var1409 String (append/672562846 var815 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var815!1 String)
(assert (= var815!1 (str.++ var815 "\n  height = ")))
(assert true)
(define-const var3387 String (append/-1001720160 var1409 var2502)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var1409!1 String)
(assert (str.prefixof var1409 var1409!1))
(assert true)
(define-const var232 String (toString/-2075883882 var3387)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3956 var840 (log/-1110529256 var2408)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3956 var232)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var3956!1 var840)
(declare-const var232!1 String)
(define-const var1188 var546 (g2D/-1110529256 var2408)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (clearRect/394976347 (cast-from-var546-to-var3497 var1188) var3685 var2975 var3671 var2502)) ; Statement: virtualinvoke $r12.<java.awt.Graphics2D: void clearRect(int,int,int,int)>(i0, i1, i2, i3) 

(declare-const var1188!1 var546)
(declare-const var3685!1 Int)
(declare-const var2975!1 Int)
(declare-const var3671!1 Int)
(declare-const var2502!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), clearRect/394976347=([java.awt.Graphics, int, int, int, int], void), cast-from-var546-to-var3497=([java.awt.Graphics2D], java.awt.Graphics)}
; {var252=org.apache.poi.xslf.util.DummyGraphics2d, var2408=r10, var3685=i0, var2975=i1, var3671=i2, var2502=i3, var2009=$r0, var1468=$r1, var2266=$r2, var2794=$r3, var2442=$r4, var3891=$r5, var815=$r6, var1409=$r7, var3387=$r8, var232=r9, var840=java.io.PrintStream, var3956=$r11, var546=java.awt.Graphics2D, var1188=$r12, var3497=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var252, r10=var2408, i0=var3685, i1=var2975, i2=var3671, i3=var2502, $r0=var2009, $r1=var1468, $r2=var2266, $r3=var2794, $r4=var2442, $r5=var3891, $r6=var815, $r7=var1409, $r8=var3387, r9=var232, java.io.PrintStream=var840, $r11=var3956, java.awt.Graphics2D=var546, $r12=var1188, java.awt.Graphics=var3497}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clearRect(int,int,int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r12.<java.awt.Graphics2D: void clearRect(int,int,int,int)>(i0, i1, i2, i3);	return
;block_num 1