(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1985 0)
(declare-sort var1265 0)
(declare-sort var3753 0)
(declare-sort var622 0)
(declare-sort var1737 0)
(declare-sort var3667 0)
(declare-sort var2999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var622) String)
(declare-fun cast-from-var1265-to-var622 (var1265) var622)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun cast-from-var3753-to-var622 (var3753) var622)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1985) var1737)
(declare-fun println/1773605060 (var1737 String) void)
(declare-fun g2D/-1110529256 (var1985) var3667)
(declare-fun drawImage/2019306564 (var2999 var1265 Int Int var3753) Bool)
(declare-fun cast-from-var3667-to-var2999 (var3667) var2999)
(declare-const null-var1985 var1985)
(declare-const null-var1265 var1265)
(declare-const null-Int Int)
(declare-const null-var3753 var3753)
(declare-const var1318 var1985) ; Statement: r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1318 null-var1985)))
(declare-const var2890 var1265) ; Statement: r1 := @parameter0: java.awt.Image 
(assert (not (= var2890 null-var1265)))
(declare-const var2161 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2161 null-Int)))
(declare-const var1089 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1089 null-Int)))
(declare-const var1573 var3753) ; Statement: r8 := @parameter3: java.awt.image.ImageObserver 
(assert (not (= var1573 null-var3753)))
(define-const var1897 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1897)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1897!1 String)
(assert (= var1897!1 ""))
(assert true)
(define-const var1804 String (append/672562846 var1897!1 "drawImage(Image,int,int,observer):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,observer):\n  img = ") 
(declare-const var1897!2 String)
(assert (= var1897!2 (str.++ var1897!1 "drawImage(Image,int,int,observer):\n  img = ")))
(assert true)
(define-const var3279 String (append/-1031950772 var1804 (cast-from-var1265-to-var622 var2890))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1804!1 String)
(assert (str.prefixof var1804 var1804!1))
(assert true)
(define-const var917 String (append/672562846 var3279 "\n  x = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ") 
(declare-const var3279!1 String)
(assert (= var3279!1 (str.++ var3279 "\n  x = ")))
(assert true)
(define-const var2204 String (append/-1001720160 var917 var2161)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var917!1 String)
(assert (str.prefixof var917 var917!1))
(assert true)
(define-const var1997 String (append/672562846 var2204 "\n  y = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var2204!1 String)
(assert (= var2204!1 (str.++ var2204 "\n  y = ")))
(assert true)
(define-const var186 String (append/-1001720160 var1997 var1089)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1997!1 String)
(assert (str.prefixof var1997 var1997!1))
(assert true)
(define-const var2665 String (append/672562846 var186 "\n  observer = ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ") 
(declare-const var186!1 String)
(assert (= var186!1 (str.++ var186 "\n  observer = ")))
(assert true)
(define-const var3150 String (append/-1031950772 var2665 (cast-from-var3753-to-var622 var1573))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8) 
(declare-const var2665!1 String)
(assert (str.prefixof var2665 var2665!1))
(assert true)
(define-const var1193 String (toString/-2075883882 var3150)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3493 var1737 (log/-1110529256 var1318)) ; Statement: $r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3493 var1193)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11) 

(declare-const var3493!1 var1737)
(declare-const var1193!1 String)
(define-const var2445 var3667 (g2D/-1110529256 var1318)) ; Statement: $r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var2631 Bool (drawImage/2019306564 (cast-from-var3667-to-var2999 var2445) var2890 var2161 var1089 var1573)) ; Statement: $z0 = virtualinvoke $r14.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,java.awt.image.ImageObserver)>(r1, i0, i1, r8) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1265-to-var622=([java.awt.Image], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), cast-from-var3753-to-var622=([java.awt.image.ImageObserver], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawImage/2019306564=([java.awt.Graphics, java.awt.Image, int, int, java.awt.image.ImageObserver], boolean), cast-from-var3667-to-var2999=([java.awt.Graphics2D], java.awt.Graphics)}
; {var1985=org.apache.poi.xslf.util.DummyGraphics2d, var1318=r12, var1265=java.awt.Image, var2890=r1, var2161=i0, var1089=i1, var3753=java.awt.image.ImageObserver, var1573=r8, var1897=$r0, var1804=$r2, var622=java.lang.Object, var3279=$r3, var917=$r4, var2204=$r5, var1997=$r6, var186=$r7, var2665=$r9, var3150=$r10, var1193=r11, var1737=java.io.PrintStream, var3493=$r13, var3667=java.awt.Graphics2D, var2445=$r14, var2999=java.awt.Graphics, var2631=$z0}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1985, r12=var1318, java.awt.Image=var1265, r1=var2890, i0=var2161, i1=var1089, java.awt.image.ImageObserver=var3753, r8=var1573, $r0=var1897, $r2=var1804, java.lang.Object=var622, $r3=var3279, $r4=var917, $r5=var2204, $r6=var1997, $r7=var186, $r9=var2665, $r10=var3150, r11=var1193, java.io.PrintStream=var1737, $r13=var3493, java.awt.Graphics2D=var3667, $r14=var2445, java.awt.Graphics=var2999, $z0=var2631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Image;	i0 := @parameter1: int;	i1 := @parameter2: int;	r8 := @parameter3: java.awt.image.ImageObserver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,observer):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11);	$r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$z0 = virtualinvoke $r14.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,java.awt.image.ImageObserver)>(r1, i0, i1, r8);	return $z0
;block_num 1