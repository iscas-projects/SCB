(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var423 0)
(declare-sort var1494 0)
(declare-sort var3860 0)
(declare-sort var3230 0)
(declare-sort var1740 0)
(declare-sort var3754 0)
(declare-sort var978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1740) String)
(declare-fun cast-from-var1494-to-var1740 (var1494) var1740)
(declare-fun cast-from-var3860-to-var1740 (var3860) var1740)
(declare-fun cast-from-var3230-to-var1740 (var3230) var1740)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var423) var3754)
(declare-fun println/1773605060 (var3754 String) void)
(declare-fun g2D/-1110529256 (var423) var978)
(declare-fun drawImage/-1427046643 (var978 var1494 var3860 var3230) Bool)
(declare-const null-var423 var423)
(declare-const null-var1494 var1494)
(declare-const null-var3860 var3860)
(declare-const null-var3230 var3230)
(declare-const var2420 var423) ; Statement: r11 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2420 null-var423)))
(declare-const var1971 var1494) ; Statement: r1 := @parameter0: java.awt.Image 
(assert (not (= var1971 null-var1494)))
(declare-const var1572 var3860) ; Statement: r4 := @parameter1: java.awt.geom.AffineTransform 
(assert (not (= var1572 null-var3860)))
(declare-const var3757 var3230) ; Statement: r7 := @parameter2: java.awt.image.ImageObserver 
(assert (not (= var3757 null-var3230)))
(define-const var2903 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2903)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2903!1 String)
(assert (= var2903!1 ""))
(assert true)
(define-const var3257 String (append/672562846 var2903!1 "drawImage(Image,AfflineTransform,ImageObserver):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,AfflineTransform,ImageObserver):\n  img = ") 
(declare-const var2903!2 String)
(assert (= var2903!2 (str.++ var2903!1 "drawImage(Image,AfflineTransform,ImageObserver):\n  img = ")))
(assert true)
(define-const var3410 String (append/-1031950772 var3257 (cast-from-var1494-to-var1740 var1971))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3257!1 String)
(assert (str.prefixof var3257 var3257!1))
(assert true)
(define-const var32 String (append/672562846 var3410 "\n  xform = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  xform = ") 
(declare-const var3410!1 String)
(assert (= var3410!1 (str.++ var3410 "\n  xform = ")))
(assert true)
(define-const var708 String (append/-1031950772 var32 (cast-from-var3860-to-var1740 var1572))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var32!1 String)
(assert (str.prefixof var32 var32!1))
(assert true)
(define-const var519 String (append/672562846 var708 "\n  obs = ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  obs = ") 
(declare-const var708!1 String)
(assert (= var708!1 (str.++ var708 "\n  obs = ")))
(assert true)
(define-const var870 String (append/-1031950772 var519 (cast-from-var3230-to-var1740 var3757))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var519!1 String)
(assert (str.prefixof var519 var519!1))
(assert true)
(define-const var925 String (toString/-2075883882 var870)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2650 var3754 (log/-1110529256 var2420)) ; Statement: $r12 = r11.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2650 var925)) ; Statement: virtualinvoke $r12.<java.io.PrintStream: void println(java.lang.String)>(r10) 

(declare-const var2650!1 var3754)
(declare-const var925!1 String)
(define-const var3273 var978 (g2D/-1110529256 var2420)) ; Statement: $r13 = r11.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var2585 Bool (drawImage/-1427046643 var3273 var1971 var1572 var3757)) ; Statement: $z0 = virtualinvoke $r13.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,java.awt.geom.AffineTransform,java.awt.image.ImageObserver)>(r1, r4, r7) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1494-to-var1740=([java.awt.Image], java.lang.Object), cast-from-var3860-to-var1740=([java.awt.geom.AffineTransform], java.lang.Object), cast-from-var3230-to-var1740=([java.awt.image.ImageObserver], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawImage/-1427046643=([java.awt.Graphics2D, java.awt.Image, java.awt.geom.AffineTransform, java.awt.image.ImageObserver], boolean)}
; {var423=org.apache.poi.xslf.util.DummyGraphics2d, var2420=r11, var1494=java.awt.Image, var1971=r1, var3860=java.awt.geom.AffineTransform, var1572=r4, var3230=java.awt.image.ImageObserver, var3757=r7, var2903=$r0, var3257=$r2, var1740=java.lang.Object, var3410=$r3, var32=$r5, var708=$r6, var519=$r8, var870=$r9, var925=r10, var3754=java.io.PrintStream, var2650=$r12, var978=java.awt.Graphics2D, var3273=$r13, var2585=$z0}
; {org.apache.poi.xslf.util.DummyGraphics2d=var423, r11=var2420, java.awt.Image=var1494, r1=var1971, java.awt.geom.AffineTransform=var3860, r4=var1572, java.awt.image.ImageObserver=var3230, r7=var3757, $r0=var2903, $r2=var3257, java.lang.Object=var1740, $r3=var3410, $r5=var32, $r6=var708, $r8=var519, $r9=var870, r10=var925, java.io.PrintStream=var3754, $r12=var2650, java.awt.Graphics2D=var978, $r13=var3273, $z0=var2585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Image;	r4 := @parameter1: java.awt.geom.AffineTransform;	r7 := @parameter2: java.awt.image.ImageObserver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,AfflineTransform,ImageObserver):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  xform = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  obs = ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = r11.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r12.<java.io.PrintStream: void println(java.lang.String)>(r10);	$r13 = r11.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$z0 = virtualinvoke $r13.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,java.awt.geom.AffineTransform,java.awt.image.ImageObserver)>(r1, r4, r7);	return $z0
;block_num 1