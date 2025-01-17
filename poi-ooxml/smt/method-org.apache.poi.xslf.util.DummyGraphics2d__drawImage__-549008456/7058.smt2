(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1160 0)
(declare-sort var2666 0)
(declare-sort var630 0)
(declare-sort var1872 0)
(declare-sort var1216 0)
(declare-sort var2869 0)
(declare-sort var653 0)
(declare-sort var2086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1216) String)
(declare-fun cast-from-var2666-to-var1216 (var2666) var1216)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun cast-from-var630-to-var1216 (var630) var1216)
(declare-fun cast-from-var1872-to-var1216 (var1872) var1216)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1160) var2869)
(declare-fun println/1773605060 (var2869 String) void)
(declare-fun g2D/-1110529256 (var1160) var653)
(declare-fun drawImage/-1438905713 (var2086 var2666 Int Int var630 var1872) Bool)
(declare-fun cast-from-var653-to-var2086 (var653) var2086)
(declare-const null-var1160 var1160)
(declare-const null-var2666 var2666)
(declare-const null-Int Int)
(declare-const null-var630 var630)
(declare-const null-var1872 var1872)
(declare-const var3424 var1160) ; Statement: r15 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3424 null-var1160)))
(declare-const var2662 var2666) ; Statement: r1 := @parameter0: java.awt.Image 
(assert (not (= var2662 null-var2666)))
(declare-const var2020 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2020 null-Int)))
(declare-const var131 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var131 null-Int)))
(declare-const var776 var630) ; Statement: r8 := @parameter3: java.awt.Color 
(assert (not (= var776 null-var630)))
(declare-const var199 var1872) ; Statement: r11 := @parameter4: java.awt.image.ImageObserver 
(assert (not (= var199 null-var1872)))
(define-const var3771 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3771)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3771!1 String)
(assert (= var3771!1 ""))
(assert true)
(define-const var1502 String (append/672562846 var3771!1 "drawImage(Image,int,int,Color,ImageObserver):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,Color,ImageObserver):\n  img = ") 
(declare-const var3771!2 String)
(assert (= var3771!2 (str.++ var3771!1 "drawImage(Image,int,int,Color,ImageObserver):\n  img = ")))
(assert true)
(define-const var1206 String (append/-1031950772 var1502 (cast-from-var2666-to-var1216 var2662))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1502!1 String)
(assert (str.prefixof var1502 var1502!1))
(assert true)
(define-const var2213 String (append/672562846 var1206 "\n  x = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ") 
(declare-const var1206!1 String)
(assert (= var1206!1 (str.++ var1206 "\n  x = ")))
(assert true)
(define-const var1401 String (append/-1001720160 var2213 var2020)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2213!1 String)
(assert (str.prefixof var2213 var2213!1))
(assert true)
(define-const var1718 String (append/672562846 var1401 "\n  y = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var1401!1 String)
(assert (= var1401!1 (str.++ var1401 "\n  y = ")))
(assert true)
(define-const var556 String (append/-1001720160 var1718 var131)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1718!1 String)
(assert (str.prefixof var1718 var1718!1))
(assert true)
(define-const var1406 String (append/672562846 var556 "\n  bgcolor = ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  bgcolor = ") 
(declare-const var556!1 String)
(assert (= var556!1 (str.++ var556 "\n  bgcolor = ")))
(assert true)
(define-const var3643 String (append/-1031950772 var1406 (cast-from-var630-to-var1216 var776))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8) 
(declare-const var1406!1 String)
(assert (str.prefixof var1406 var1406!1))
(assert true)
(define-const var291 String (append/672562846 var3643 "\n  observer = ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ") 
(declare-const var3643!1 String)
(assert (= var3643!1 (str.++ var3643 "\n  observer = ")))
(assert true)
(define-const var2384 String (append/-1031950772 var291 (cast-from-var1872-to-var1216 var199))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r11) 
(declare-const var291!1 String)
(assert (str.prefixof var291 var291!1))
(assert true)
(define-const var2004 String (toString/-2075883882 var2384)) ; Statement: r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1740 var2869 (log/-1110529256 var3424)) ; Statement: $r16 = r15.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1740 var2004)) ; Statement: virtualinvoke $r16.<java.io.PrintStream: void println(java.lang.String)>(r14) 

(declare-const var1740!1 var2869)
(declare-const var2004!1 String)
(define-const var2242 var653 (g2D/-1110529256 var3424)) ; Statement: $r17 = r15.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var1706 Bool (drawImage/-1438905713 (cast-from-var653-to-var2086 var2242) var2662 var2020 var131 var776 var199)) ; Statement: $z0 = virtualinvoke $r17.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,java.awt.Color,java.awt.image.ImageObserver)>(r1, i0, i1, r8, r11) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2666-to-var1216=([java.awt.Image], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), cast-from-var630-to-var1216=([java.awt.Color], java.lang.Object), cast-from-var1872-to-var1216=([java.awt.image.ImageObserver], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawImage/-1438905713=([java.awt.Graphics, java.awt.Image, int, int, java.awt.Color, java.awt.image.ImageObserver], boolean), cast-from-var653-to-var2086=([java.awt.Graphics2D], java.awt.Graphics)}
; {var1160=org.apache.poi.xslf.util.DummyGraphics2d, var3424=r15, var2666=java.awt.Image, var2662=r1, var2020=i0, var131=i1, var630=java.awt.Color, var776=r8, var1872=java.awt.image.ImageObserver, var199=r11, var3771=$r0, var1502=$r2, var1216=java.lang.Object, var1206=$r3, var2213=$r4, var1401=$r5, var1718=$r6, var556=$r7, var1406=$r9, var3643=$r10, var291=$r12, var2384=$r13, var2004=r14, var2869=java.io.PrintStream, var1740=$r16, var653=java.awt.Graphics2D, var2242=$r17, var2086=java.awt.Graphics, var1706=$z0}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1160, r15=var3424, java.awt.Image=var2666, r1=var2662, i0=var2020, i1=var131, java.awt.Color=var630, r8=var776, java.awt.image.ImageObserver=var1872, r11=var199, $r0=var3771, $r2=var1502, java.lang.Object=var1216, $r3=var1206, $r4=var2213, $r5=var1401, $r6=var1718, $r7=var556, $r9=var1406, $r10=var3643, $r12=var291, $r13=var2384, r14=var2004, java.io.PrintStream=var2869, $r16=var1740, java.awt.Graphics2D=var653, $r17=var2242, java.awt.Graphics=var2086, $z0=var1706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Image;	i0 := @parameter1: int;	i1 := @parameter2: int;	r8 := @parameter3: java.awt.Color;	r11 := @parameter4: java.awt.image.ImageObserver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(Image,int,int,Color,ImageObserver):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  bgcolor = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  observer = ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r11);	r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = r15.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r16.<java.io.PrintStream: void println(java.lang.String)>(r14);	$r17 = r15.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$z0 = virtualinvoke $r17.<java.awt.Graphics2D: boolean drawImage(java.awt.Image,int,int,java.awt.Color,java.awt.image.ImageObserver)>(r1, i0, i1, r8, r11);	return $z0
;block_num 1