(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var862 0)
(declare-sort var1631 0)
(declare-sort var326 0)
(declare-sort var2017 0)
(declare-sort var1551 0)
(declare-sort var921 0)
(declare-sort var2489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2017) String)
(declare-fun cast-from-var1631-to-var2017 (var1631) var2017)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun cast-from-var326-to-var2017 (var326) var2017)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var862) var1551)
(declare-fun println/1773605060 (var1551 String) void)
(declare-fun g2D/-1110529256 (var862) var921)
(declare-fun drawImage/1332388734 (var2489 var1631 Int Int Int Int var326) Bool)
(declare-fun cast-from-var921-to-var2489 (var921) var2489)
(declare-const null-var862 var862)
(declare-const null-var1631 var1631)
(declare-const null-Int Int)
(declare-const null-var326 var326)
(declare-const var1272 var862) ; Statement: r16 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1272 null-var862)))
(declare-const var3114 var1631) ; Statement: r1 := @parameter0: java.awt.Image 
(assert (not (= var3114 null-var1631)))
(declare-const var3820 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3820 null-Int)))
(declare-const var3322 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3322 null-Int)))
(declare-const var847 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var847 null-Int)))
(declare-const var1902 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var1902 null-Int)))
(declare-const var1055 var326) ; Statement: r12 := @parameter5: java.awt.image.ImageObserver 
(assert (not (= var1055 null-var326)))
(define-const var3976 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3976)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3976!1 String)
(assert (= var3976!1 ""))
(assert true)
(define-const var3414 String (append/672562846 var3976!1 "drawImage(Image,int,int,width,height,observer):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,width,height,observer):\n  img = ") 
(declare-const var3976!2 String)
(assert (= var3976!2 (str.++ var3976!1 "drawImage(Image,int,int,width,height,observer):\n  img = ")))
(assert true)
(define-const var560 String (append/-1031950772 var3414 (cast-from-var1631-to-var2017 var3114))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3414!1 String)
(assert (str.prefixof var3414 var3414!1))
(assert true)
(define-const var3261 String (append/672562846 var560 "\n  x = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ") 
(declare-const var560!1 String)
(assert (= var560!1 (str.++ var560 "\n  x = ")))
(assert true)
(define-const var1855 String (append/-1001720160 var3261 var3820)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3261!1 String)
(assert (str.prefixof var3261 var3261!1))
(assert true)
(define-const var3225 String (append/672562846 var1855 "\n  y = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var1855!1 String)
(assert (= var1855!1 (str.++ var1855 "\n  y = ")))
(assert true)
(define-const var857 String (append/-1001720160 var3225 var3322)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3225!1 String)
(assert (str.prefixof var3225 var3225!1))
(assert true)
(define-const var910 String (append/672562846 var857 "\n  width = ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var857!1 String)
(assert (= var857!1 (str.++ var857 "\n  width = ")))
(assert true)
(define-const var2234 String (append/-1001720160 var910 var847)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var910!1 String)
(assert (str.prefixof var910 var910!1))
(assert true)
(define-const var787 String (append/672562846 var2234 "\n  height = ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var2234!1 String)
(assert (= var2234!1 (str.++ var2234 "\n  height = ")))
(assert true)
(define-const var1560 String (append/-1001720160 var787 var1902)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var787!1 String)
(assert (str.prefixof var787 var787!1))
(assert true)
(define-const var1878 String (append/672562846 var1560 "\n  observer = ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ") 
(declare-const var1560!1 String)
(assert (= var1560!1 (str.++ var1560 "\n  observer = ")))
(assert true)
(define-const var3528 String (append/-1031950772 var1878 (cast-from-var326-to-var2017 var1055))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r12) 
(declare-const var1878!1 String)
(assert (str.prefixof var1878 var1878!1))
(assert true)
(define-const var3839 String (toString/-2075883882 var3528)) ; Statement: r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3591 var1551 (log/-1110529256 var1272)) ; Statement: $r17 = r16.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3591 var3839)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>(r15) 

(declare-const var3591!1 var1551)
(declare-const var3839!1 String)
(define-const var976 var921 (g2D/-1110529256 var1272)) ; Statement: $r18 = r16.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var1212 Bool (drawImage/1332388734 (cast-from-var921-to-var2489 var976) var3114 var3820 var3322 var847 var1902 var1055)) ; Statement: $z0 = virtualinvoke $r18.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,int,int,java.awt.image.ImageObserver)>(r1, i0, i1, i2, i3, r12) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1631-to-var2017=([java.awt.Image], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), cast-from-var326-to-var2017=([java.awt.image.ImageObserver], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawImage/1332388734=([java.awt.Graphics, java.awt.Image, int, int, int, int, java.awt.image.ImageObserver], boolean), cast-from-var921-to-var2489=([java.awt.Graphics2D], java.awt.Graphics)}
; {var862=org.apache.poi.xslf.util.DummyGraphics2d, var1272=r16, var1631=java.awt.Image, var3114=r1, var3820=i0, var3322=i1, var847=i2, var1902=i3, var326=java.awt.image.ImageObserver, var1055=r12, var3976=$r0, var3414=$r2, var2017=java.lang.Object, var560=$r3, var3261=$r4, var1855=$r5, var3225=$r6, var857=$r7, var910=$r8, var2234=$r9, var787=$r10, var1560=$r11, var1878=$r13, var3528=$r14, var3839=r15, var1551=java.io.PrintStream, var3591=$r17, var921=java.awt.Graphics2D, var976=$r18, var2489=java.awt.Graphics, var1212=$z0}
; {org.apache.poi.xslf.util.DummyGraphics2d=var862, r16=var1272, java.awt.Image=var1631, r1=var3114, i0=var3820, i1=var3322, i2=var847, i3=var1902, java.awt.image.ImageObserver=var326, r12=var1055, $r0=var3976, $r2=var3414, java.lang.Object=var2017, $r3=var560, $r4=var3261, $r5=var1855, $r6=var3225, $r7=var857, $r8=var910, $r9=var2234, $r10=var787, $r11=var1560, $r13=var1878, $r14=var3528, r15=var3839, java.io.PrintStream=var1551, $r17=var3591, java.awt.Graphics2D=var921, $r18=var976, java.awt.Graphics=var2489, $z0=var1212}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Image;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	r12 := @parameter5: java.awt.image.ImageObserver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,width,height,observer):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r12);	r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = r16.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>(r15);	$r18 = r16.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$z0 = virtualinvoke $r18.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,int,int,java.awt.image.ImageObserver)>(r1, i0, i1, i2, i3, r12);	return $z0
;block_num 1