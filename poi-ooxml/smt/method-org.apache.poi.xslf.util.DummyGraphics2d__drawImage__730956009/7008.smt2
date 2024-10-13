(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3241 0)
(declare-sort var2310 0)
(declare-sort var1297 0)
(declare-sort var2265 0)
(declare-sort var2389 0)
(declare-sort var1117 0)
(declare-sort var3027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2265) String)
(declare-fun cast-from-var2310-to-var2265 (var2310) var2265)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun cast-from-var1297-to-var2265 (var1297) var2265)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3241) var2389)
(declare-fun println/1773605060 (var2389 String) void)
(declare-fun g2D/-1110529256 (var3241) var1117)
(declare-fun drawImage/-682621966 (var3027 var2310 Int Int Int Int Int Int Int Int var1297) Bool)
(declare-fun cast-from-var1117-to-var3027 (var1117) var3027)
(declare-const null-var3241 var3241)
(declare-const null-var2310 var2310)
(declare-const null-Int Int)
(declare-const null-var1297 var1297)
(declare-const var290 var3241) ; Statement: r24 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var290 null-var3241)))
(declare-const var3088 var2310) ; Statement: r1 := @parameter0: java.awt.Image 
(assert (not (= var3088 null-var2310)))
(declare-const var579 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var579 null-Int)))
(declare-const var2454 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2454 null-Int)))
(declare-const var1403 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1403 null-Int)))
(declare-const var3778 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3778 null-Int)))
(declare-const var356 Int) ; Statement: i4 := @parameter5: int 
(assert (not (= var356 null-Int)))
(declare-const var47 Int) ; Statement: i5 := @parameter6: int 
(assert (not (= var47 null-Int)))
(declare-const var2089 Int) ; Statement: i6 := @parameter7: int 
(assert (not (= var2089 null-Int)))
(declare-const var3653 Int) ; Statement: i7 := @parameter8: int 
(assert (not (= var3653 null-Int)))
(declare-const var1249 var1297) ; Statement: r20 := @parameter9: java.awt.image.ImageObserver 
(assert (not (= var1249 null-var1297)))
(define-const var3709 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3709)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3709!1 String)
(assert (= var3709!1 ""))
(assert true)
(define-const var1039 String (append/672562846 var3709!1 "drawImage(Image,int,int,int,int,int,int,int,int,ImageObserver):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,int,int,int,int,int,int,ImageObserver):\n  img = ") 
(declare-const var3709!2 String)
(assert (= var3709!2 (str.++ var3709!1 "drawImage(Image,int,int,int,int,int,int,int,int,ImageObserver):\n  img = ")))
(assert true)
(define-const var1947 String (append/-1031950772 var1039 (cast-from-var2310-to-var2265 var3088))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1039!1 String)
(assert (str.prefixof var1039 var1039!1))
(assert true)
(define-const var2293 String (append/672562846 var1947 "\n  dx1 = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dx1 = ") 
(declare-const var1947!1 String)
(assert (= var1947!1 (str.++ var1947 "\n  dx1 = ")))
(assert true)
(define-const var3422 String (append/-1001720160 var2293 var579)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2293!1 String)
(assert (str.prefixof var2293 var2293!1))
(assert true)
(define-const var3191 String (append/672562846 var3422 "\n  dy1 = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dy1 = ") 
(declare-const var3422!1 String)
(assert (= var3422!1 (str.++ var3422 "\n  dy1 = ")))
(assert true)
(define-const var2257 String (append/-1001720160 var3191 var2454)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3191!1 String)
(assert (str.prefixof var3191 var3191!1))
(assert true)
(define-const var3815 String (append/672562846 var2257 "\n  dx2 = ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dx2 = ") 
(declare-const var2257!1 String)
(assert (= var2257!1 (str.++ var2257 "\n  dx2 = ")))
(assert true)
(define-const var164 String (append/-1001720160 var3815 var1403)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3815!1 String)
(assert (str.prefixof var3815 var3815!1))
(assert true)
(define-const var267 String (append/672562846 var164 "\n  dy2 = ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dy2 = ") 
(declare-const var164!1 String)
(assert (= var164!1 (str.++ var164 "\n  dy2 = ")))
(assert true)
(define-const var3099 String (append/-1001720160 var267 var3778)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var267!1 String)
(assert (str.prefixof var267 var267!1))
(assert true)
(define-const var1191 String (append/672562846 var3099 "\n  sx1 = ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sx1 = ") 
(declare-const var3099!1 String)
(assert (= var3099!1 (str.++ var3099 "\n  sx1 = ")))
(assert true)
(define-const var978 String (append/-1001720160 var1191 var356)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var1191!1 String)
(assert (str.prefixof var1191 var1191!1))
(assert true)
(define-const var876 String (append/672562846 var978 "\n  sy1 = ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sy1 = ") 
(declare-const var978!1 String)
(assert (= var978!1 (str.++ var978 "\n  sy1 = ")))
(assert true)
(define-const var1816 String (append/-1001720160 var876 var47)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var876!1 String)
(assert (str.prefixof var876 var876!1))
(assert true)
(define-const var3687 String (append/672562846 var1816 "\n  sx2 = ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sx2 = ") 
(declare-const var1816!1 String)
(assert (= var1816!1 (str.++ var1816 "\n  sx2 = ")))
(assert true)
(define-const var3056 String (append/-1001720160 var3687 var2089)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var3687!1 String)
(assert (str.prefixof var3687 var3687!1))
(assert true)
(define-const var673 String (append/672562846 var3056 "\n  sy2 = ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sy2 = ") 
(declare-const var3056!1 String)
(assert (= var3056!1 (str.++ var3056 "\n  sy2 = ")))
(assert true)
(define-const var3374 String (append/-1001720160 var673 var3653)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var673!1 String)
(assert (str.prefixof var673 var673!1))
(assert true)
(define-const var1883 String (append/672562846 var3374 "\n  observer = ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ") 
(declare-const var3374!1 String)
(assert (= var3374!1 (str.++ var3374 "\n  observer = ")))
(assert true)
(define-const var3327 String (append/-1031950772 var1883 (cast-from-var1297-to-var2265 var1249))) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r20) 
(declare-const var1883!1 String)
(assert (str.prefixof var1883 var1883!1))
(assert true)
(define-const var2213 String (toString/-2075883882 var3327)) ; Statement: r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3942 var2389 (log/-1110529256 var290)) ; Statement: $r25 = r24.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3942 var2213)) ; Statement: virtualinvoke $r25.<java.io.PrintStream: void println(java.lang.String)>(r23) 

(declare-const var3942!1 var2389)
(declare-const var2213!1 String)
(define-const var3751 var1117 (g2D/-1110529256 var290)) ; Statement: $r26 = r24.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var1641 Bool (drawImage/-682621966 (cast-from-var1117-to-var3027 var3751) var3088 var579 var2454 var1403 var3778 var356 var47 var2089 var3653 var1249)) ; Statement: $z0 = virtualinvoke $r26.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,int,int,int,int,int,int,java.awt.image.ImageObserver)>(r1, i0, i1, i2, i3, i4, i5, i6, i7, r20) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2310-to-var2265=([java.awt.Image], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), cast-from-var1297-to-var2265=([java.awt.image.ImageObserver], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawImage/-682621966=([java.awt.Graphics, java.awt.Image, int, int, int, int, int, int, int, int, java.awt.image.ImageObserver], boolean), cast-from-var1117-to-var3027=([java.awt.Graphics2D], java.awt.Graphics)}
; {var3241=org.apache.poi.xslf.util.DummyGraphics2d, var290=r24, var2310=java.awt.Image, var3088=r1, var579=i0, var2454=i1, var1403=i2, var3778=i3, var356=i4, var47=i5, var2089=i6, var3653=i7, var1297=java.awt.image.ImageObserver, var1249=r20, var3709=$r0, var1039=$r2, var2265=java.lang.Object, var1947=$r3, var2293=$r4, var3422=$r5, var3191=$r6, var2257=$r7, var3815=$r8, var164=$r9, var267=$r10, var3099=$r11, var1191=$r12, var978=$r13, var876=$r14, var1816=$r15, var3687=$r16, var3056=$r17, var673=$r18, var3374=$r19, var1883=$r21, var3327=$r22, var2213=r23, var2389=java.io.PrintStream, var3942=$r25, var1117=java.awt.Graphics2D, var3751=$r26, var3027=java.awt.Graphics, var1641=$z0}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3241, r24=var290, java.awt.Image=var2310, r1=var3088, i0=var579, i1=var2454, i2=var1403, i3=var3778, i4=var356, i5=var47, i6=var2089, i7=var3653, java.awt.image.ImageObserver=var1297, r20=var1249, $r0=var3709, $r2=var1039, java.lang.Object=var2265, $r3=var1947, $r4=var2293, $r5=var3422, $r6=var3191, $r7=var2257, $r8=var3815, $r9=var164, $r10=var267, $r11=var3099, $r12=var1191, $r13=var978, $r14=var876, $r15=var1816, $r16=var3687, $r17=var3056, $r18=var673, $r19=var3374, $r21=var1883, $r22=var3327, r23=var2213, java.io.PrintStream=var2389, $r25=var3942, java.awt.Graphics2D=var1117, $r26=var3751, java.awt.Graphics=var3027, $z0=var1641}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r24 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Image;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	i4 := @parameter5: int;	i5 := @parameter6: int;	i6 := @parameter7: int;	i7 := @parameter8: int;	r20 := @parameter9: java.awt.image.ImageObserver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,int,int,int,int,int,int,ImageObserver):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dx1 = ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dy1 = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dx2 = ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  dy2 = ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sx1 = ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sy1 = ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sx2 = ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  sy2 = ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r20);	r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = r24.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r25.<java.io.PrintStream: void println(java.lang.String)>(r23);	$r26 = r24.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$z0 = virtualinvoke $r26.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,int,int,int,int,int,int,java.awt.image.ImageObserver)>(r1, i0, i1, i2, i3, i4, i5, i6, i7, r20);	return $z0
;block_num 1