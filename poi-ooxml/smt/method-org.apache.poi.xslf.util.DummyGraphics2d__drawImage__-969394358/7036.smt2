(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2844 0)
(declare-sort var3895 0)
(declare-sort var934 0)
(declare-sort var3512 0)
(declare-sort var730 0)
(declare-sort var1219 0)
(declare-sort var864 0)
(declare-sort var1050 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var730) String)
(declare-fun cast-from-var3895-to-var730 (var3895) var730)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun cast-from-var934-to-var730 (var934) var730)
(declare-fun cast-from-var3512-to-var730 (var3512) var730)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2844) var1219)
(declare-fun println/1773605060 (var1219 String) void)
(declare-fun g2D/-1110529256 (var2844) var864)
(declare-fun drawImage/-110878431 (var1050 var3895 Int Int Int Int Int Int Int Int var934 var3512) Bool)
(declare-fun cast-from-var864-to-var1050 (var864) var1050)
(declare-const null-var2844 var2844)
(declare-const null-var3895 var3895)
(declare-const null-Int Int)
(declare-const null-var934 var934)
(declare-const null-var3512 var3512)
(declare-const var955 var2844) ; Statement: r27 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var955 null-var2844)))
(declare-const var1049 var3895) ; Statement: r1 := @parameter0: java.awt.Image 
(assert (not (= var1049 null-var3895)))
(declare-const var1474 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1474 null-Int)))
(declare-const var2485 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2485 null-Int)))
(declare-const var2982 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2982 null-Int)))
(declare-const var330 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var330 null-Int)))
(declare-const var3123 Int) ; Statement: i4 := @parameter5: int 
(assert (not (= var3123 null-Int)))
(declare-const var3475 Int) ; Statement: i5 := @parameter6: int 
(assert (not (= var3475 null-Int)))
(declare-const var2853 Int) ; Statement: i6 := @parameter7: int 
(assert (not (= var2853 null-Int)))
(declare-const var3500 Int) ; Statement: i7 := @parameter8: int 
(assert (not (= var3500 null-Int)))
(declare-const var438 var934) ; Statement: r20 := @parameter9: java.awt.Color 
(assert (not (= var438 null-var934)))
(declare-const var3613 var3512) ; Statement: r23 := @parameter10: java.awt.image.ImageObserver 
(assert (not (= var3613 null-var3512)))
(define-const var672 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var672)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var672!1 String)
(assert (= var672!1 ""))
(assert true)
(define-const var2124 String (append/672562846 var672!1 "drawImage(Image,int,int,int,int,int,int,int,int,Color,ImageObserver):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,int,int,int,int,int,int,Color,ImageObserver):\n  img = ") 
(declare-const var672!2 String)
(assert (= var672!2 (str.++ var672!1 "drawImage(Image,int,int,int,int,int,int,int,int,Color,ImageObserver):\n  img = ")))
(assert true)
(define-const var1080 String (append/-1031950772 var2124 (cast-from-var3895-to-var730 var1049))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2124!1 String)
(assert (str.prefixof var2124 var2124!1))
(assert true)
(define-const var444 String (append/672562846 var1080 "\n  dx1 = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dx1 = ") 
(declare-const var1080!1 String)
(assert (= var1080!1 (str.++ var1080 "\n  dx1 = ")))
(assert true)
(define-const var3465 String (append/-1001720160 var444 var1474)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var444!1 String)
(assert (str.prefixof var444 var444!1))
(assert true)
(define-const var3399 String (append/672562846 var3465 "\n  dy1 = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dy1 = ") 
(declare-const var3465!1 String)
(assert (= var3465!1 (str.++ var3465 "\n  dy1 = ")))
(assert true)
(define-const var1081 String (append/-1001720160 var3399 var2485)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3399!1 String)
(assert (str.prefixof var3399 var3399!1))
(assert true)
(define-const var116 String (append/672562846 var1081 "\n  dx2 = ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dx2 = ") 
(declare-const var1081!1 String)
(assert (= var1081!1 (str.++ var1081 "\n  dx2 = ")))
(assert true)
(define-const var716 String (append/-1001720160 var116 var2982)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var116!1 String)
(assert (str.prefixof var116 var116!1))
(assert true)
(define-const var73 String (append/672562846 var716 "\n  dy2 = ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dy2 = ") 
(declare-const var716!1 String)
(assert (= var716!1 (str.++ var716 "\n  dy2 = ")))
(assert true)
(define-const var3231 String (append/-1001720160 var73 var330)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var73!1 String)
(assert (str.prefixof var73 var73!1))
(assert true)
(define-const var3480 String (append/672562846 var3231 "\n  sx1 = ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sx1 = ") 
(declare-const var3231!1 String)
(assert (= var3231!1 (str.++ var3231 "\n  sx1 = ")))
(assert true)
(define-const var3056 String (append/-1001720160 var3480 var3123)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var3480!1 String)
(assert (str.prefixof var3480 var3480!1))
(assert true)
(define-const var2642 String (append/672562846 var3056 "\n  sy1 = ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sy1 = ") 
(declare-const var3056!1 String)
(assert (= var3056!1 (str.++ var3056 "\n  sy1 = ")))
(assert true)
(define-const var1438 String (append/-1001720160 var2642 var3475)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var2642!1 String)
(assert (str.prefixof var2642 var2642!1))
(assert true)
(define-const var3770 String (append/672562846 var1438 "\n  sx2 = ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sx2 = ") 
(declare-const var1438!1 String)
(assert (= var1438!1 (str.++ var1438 "\n  sx2 = ")))
(assert true)
(define-const var338 String (append/-1001720160 var3770 var2853)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var3770!1 String)
(assert (str.prefixof var3770 var3770!1))
(assert true)
(define-const var2690 String (append/672562846 var338 "\n  sy2 = ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sy2 = ") 
(declare-const var338!1 String)
(assert (= var338!1 (str.++ var338 "\n  sy2 = ")))
(assert true)
(define-const var2959 String (append/-1001720160 var2690 var3500)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var2690!1 String)
(assert (str.prefixof var2690 var2690!1))
(assert true)
(define-const var3835 String (append/672562846 var2959 "\n  bgcolor = ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  bgcolor = ") 
(declare-const var2959!1 String)
(assert (= var2959!1 (str.++ var2959 "\n  bgcolor = ")))
(assert true)
(define-const var1291 String (append/-1031950772 var3835 (cast-from-var934-to-var730 var438))) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r20) 
(declare-const var3835!1 String)
(assert (str.prefixof var3835 var3835!1))
(assert true)
(define-const var2863 String (append/672562846 var1291 "\n  observer = ")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ") 
(declare-const var1291!1 String)
(assert (= var1291!1 (str.++ var1291 "\n  observer = ")))
(assert true)
(define-const var2793 String (append/-1031950772 var2863 (cast-from-var3512-to-var730 var3613))) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r23) 
(declare-const var2863!1 String)
(assert (str.prefixof var2863 var2863!1))
(assert true)
(define-const var78 String (toString/-2075883882 var2793)) ; Statement: r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3441 var1219 (log/-1110529256 var955)) ; Statement: $r28 = r27.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3441 var78)) ; Statement: virtualinvoke $r28.<java.io.PrintStream: void println(java.lang.String)>(r26) 

(declare-const var3441!1 var1219)
(declare-const var78!1 String)
(define-const var2221 var864 (g2D/-1110529256 var955)) ; Statement: $r29 = r27.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var1316 Bool (drawImage/-110878431 (cast-from-var864-to-var1050 var2221) var1049 var1474 var2485 var2982 var330 var3123 var3475 var2853 var3500 var438 var3613)) ; Statement: $z0 = virtualinvoke $r29.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,int,int,int,int,int,int,java.awt.Color,java.awt.image.ImageObserver)>(r1, i0, i1, i2, i3, i4, i5, i6, i7, r20, r23) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3895-to-var730=([java.awt.Image], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), cast-from-var934-to-var730=([java.awt.Color], java.lang.Object), cast-from-var3512-to-var730=([java.awt.image.ImageObserver], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawImage/-110878431=([java.awt.Graphics, java.awt.Image, int, int, int, int, int, int, int, int, java.awt.Color, java.awt.image.ImageObserver], boolean), cast-from-var864-to-var1050=([java.awt.Graphics2D], java.awt.Graphics)}
; {var2844=org.apache.poi.xslf.util.DummyGraphics2d, var955=r27, var3895=java.awt.Image, var1049=r1, var1474=i0, var2485=i1, var2982=i2, var330=i3, var3123=i4, var3475=i5, var2853=i6, var3500=i7, var934=java.awt.Color, var438=r20, var3512=java.awt.image.ImageObserver, var3613=r23, var672=$r0, var2124=$r2, var730=java.lang.Object, var1080=$r3, var444=$r4, var3465=$r5, var3399=$r6, var1081=$r7, var116=$r8, var716=$r9, var73=$r10, var3231=$r11, var3480=$r12, var3056=$r13, var2642=$r14, var1438=$r15, var3770=$r16, var338=$r17, var2690=$r18, var2959=$r19, var3835=$r21, var1291=$r22, var2863=$r24, var2793=$r25, var78=r26, var1219=java.io.PrintStream, var3441=$r28, var864=java.awt.Graphics2D, var2221=$r29, var1050=java.awt.Graphics, var1316=$z0}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2844, r27=var955, java.awt.Image=var3895, r1=var1049, i0=var1474, i1=var2485, i2=var2982, i3=var330, i4=var3123, i5=var3475, i6=var2853, i7=var3500, java.awt.Color=var934, r20=var438, java.awt.image.ImageObserver=var3512, r23=var3613, $r0=var672, $r2=var2124, java.lang.Object=var730, $r3=var1080, $r4=var444, $r5=var3465, $r6=var3399, $r7=var1081, $r8=var116, $r9=var716, $r10=var73, $r11=var3231, $r12=var3480, $r13=var3056, $r14=var2642, $r15=var1438, $r16=var3770, $r17=var338, $r18=var2690, $r19=var2959, $r21=var3835, $r22=var1291, $r24=var2863, $r25=var2793, r26=var78, java.io.PrintStream=var1219, $r28=var3441, java.awt.Graphics2D=var864, $r29=var2221, java.awt.Graphics=var1050, $z0=var1316}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r27 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Image;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	i4 := @parameter5: int;	i5 := @parameter6: int;	i6 := @parameter7: int;	i7 := @parameter8: int;	r20 := @parameter9: java.awt.Color;	r23 := @parameter10: java.awt.image.ImageObserver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,int,int,int,int,int,int,Color,ImageObserver):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dx1 = ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dy1 = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dx2 = ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dy2 = ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sx1 = ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sy1 = ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sx2 = ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sy2 = ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  bgcolor = ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r20);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r23);	r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r27.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r28.<java.io.PrintStream: void println(java.lang.String)>(r26);	$r29 = r27.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$z0 = virtualinvoke $r29.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,int,int,int,int,int,int,java.awt.Color,java.awt.image.ImageObserver)>(r1, i0, i1, i2, i3, i4, i5, i6, i7, r20, r23);	return $z0
;block_num 1