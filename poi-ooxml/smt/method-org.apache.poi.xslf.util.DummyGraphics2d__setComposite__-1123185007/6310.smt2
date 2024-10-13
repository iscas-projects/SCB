(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1644 0)
(declare-sort var1983 0)
(declare-sort var3390 0)
(declare-sort var3327 0)
(declare-sort var1064 0)
(declare-sort var2337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1983-to-var3390 (var1983) var3390)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun getRule/1781129611 (var3390) Int)
(declare-fun var3327_min/-1112089438 (Int Int) Int)
(declare-fun var3327_max/1360571700 (Int Int) Int)
(declare-fun getAlpha/-942052734 (var3390) Float32)
(declare-fun append/991902413 (String Float32) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1644) var1064)
(declare-fun println/1773605060 (var1064 String) void)
(declare-fun g2D/-1110529256 (var1644) var2337)
(declare-fun setComposite/185722106 (var2337 var1983) void)
(declare-const null-var1644 var1644)
(declare-const null-var1983 var1983)
(declare-const var1644-COMPOSITE_RULES (Array Int String))
(declare-const var2563 var1644) ; Statement: r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2563 null-var1644)))
(declare-const var90 var1983) ; Statement: r0 := @parameter0: java.awt.Composite 
(assert (not (= var90 null-var1983)))
(define-const var3349 Bool true) ; Statement: $z0 = r0 instanceof java.awt.AlphaComposite 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var3349 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3892 var3390 (cast-from-var1983-to-var3390 var90)) ; Statement: r9 = (java.awt.AlphaComposite) r0 
(define-const var678 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var678)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var678!1 String)
(assert (= var678!1 ""))
(assert true)
(define-const var1071 String (append/672562846 var678!1 "g.setComposite(")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setComposite(") 
(declare-const var678!2 String)
(assert (= var678!2 (str.++ var678!1 "g.setComposite(")))
(assert true)
(define-const var3118 String (append/672562846 var1071 "AlphaComposite.getInstance(AlphaComposite.")) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AlphaComposite.getInstance(AlphaComposite.") 
(declare-const var1071!1 String)
(assert (= var1071!1 (str.++ var1071 "AlphaComposite.getInstance(AlphaComposite.")))
(define-const var2338 (Array Int String) var1644-COMPOSITE_RULES) ; Statement: $r13 = <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String[] COMPOSITE_RULES> 
(define-const var3378 (Array Int String) var1644-COMPOSITE_RULES) ; Statement: $r12 = <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String[] COMPOSITE_RULES> 
(define-const var145 Int (getLength-Arr-String-1 var3378)) ; Statement: $i0 = lengthof $r12 
(define-const var2644 Int (- var145 1)) ; Statement: $i2 = $i0 - 1 
(assert true)
(define-const var3016 Int (getRule/1781129611 var3892)) ; Statement: $i1 = virtualinvoke r9.<java.awt.AlphaComposite: int getRule()>() 
(define-const var3586 Int (var3327_min/-1112089438 var2644 var3016)) ; Statement: $i3 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1) 
(define-const var2609 Int (var3327_max/1360571700 0 var3586)) ; Statement: $i4 = staticinvoke <java.lang.Math: int max(int,int)>(0, $i3) 
(define-const var775 String (select var2338 var2609)) ; Statement: $r14 = $r13[$i4] 
(assert true)
(define-const var2828 String (append/672562846 var3118 var775)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3118!1 String)
(assert (= var3118!1 (str.++ var3118 var775)))
(assert true)
(define-const var1638 String (append/672562846 var2828 ", ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2828!1 String)
(assert (= var2828!1 (str.++ var2828 ", ")))
(assert true)
(define-const var622 Float32 (getAlpha/-942052734 var3892)) ; Statement: $f0 = virtualinvoke r9.<java.awt.AlphaComposite: float getAlpha()>() 
(assert true)
(define-const var2106 String (append/991902413 var1638 var622)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var1638!1 String)
(assert (str.prefixof var1638 var1638!1))
(assert true)
(define-const var183 String (append/672562846 var2106 "f));")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f));") 
(declare-const var2106!1 String)
(assert (= var2106!1 (str.++ var2106 "f));")))
(assert true)
(define-const var2915 String (toString/-2075883882 var183)) ; Statement: r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>] 
(assert true) ; Non Conditional
(define-const var1873 var1064 (log/-1110529256 var2563)) ; Statement: $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1873 var2915)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r20) 

(declare-const var1873!1 var1064)
(declare-const var2915!1 String)
(define-const var3446 var2337 (g2D/-1110529256 var2563)) ; Statement: $r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setComposite/185722106 var3446 var90)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void setComposite(java.awt.Composite)>(r0) 

(declare-const var3446!1 var2337)
(declare-const var90!1 var1983)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1983-to-var3390=([java.awt.Composite], java.awt.AlphaComposite), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-String-1=([java.lang.String[]], int), getRule/1781129611=([java.awt.AlphaComposite], int), var3327_min/-1112089438=([int, int], int), var3327_max/1360571700=([int, int], int), getAlpha/-942052734=([java.awt.AlphaComposite], float), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setComposite/185722106=([java.awt.Graphics2D, java.awt.Composite], void)}
; {var1644=org.apache.poi.xslf.util.DummyGraphics2d, var2563=r6, var1983=java.awt.Composite, var90=r0, var3349=$z0, var3390=java.awt.AlphaComposite, var3892=r9, var678=$r10, var1071=$r11, var3118=$r15, var2338=$r13, var3378=$r12, var145=$i0, var2644=$i2, var3016=$i1, var3327=java.lang.Math, var3586=$i3, var2609=$i4, var775=$r14, var2828=$r16, var1638=$r17, var622=$f0, var2106=$r18, var183=$r19, var2915=r20, var1064=java.io.PrintStream, var1873=$r7, var2337=java.awt.Graphics2D, var3446=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1644, r6=var2563, java.awt.Composite=var1983, r0=var90, $z0=var3349, java.awt.AlphaComposite=var3390, r9=var3892, $r10=var678, $r11=var1071, $r15=var3118, $r13=var2338, $r12=var3378, $i0=var145, $i2=var2644, $i1=var3016, java.lang.Math=var3327, $i3=var3586, $i4=var2609, $r14=var775, $r16=var2828, $r17=var1638, $f0=var622, $r18=var2106, $r19=var183, r20=var2915, java.io.PrintStream=var1064, $r7=var1873, java.awt.Graphics2D=var2337, $r8=var3446}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Composite;	$z0 = r0 instanceof java.awt.AlphaComposite;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	r9 = (java.awt.AlphaComposite) r0;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setComposite(");	$r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AlphaComposite.getInstance(AlphaComposite.");	$r13 = <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String[] COMPOSITE_RULES>;	$r12 = <org.apache.poi.xslf.util.DummyGraphics2d: java.lang.String[] COMPOSITE_RULES>;	$i0 = lengthof $r12;	$i2 = $i0 - 1;	$i1 = virtualinvoke r9.<java.awt.AlphaComposite: int getRule()>();	$i3 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1);	$i4 = staticinvoke <java.lang.Math: int max(int,int)>(0, $i3);	$r14 = $r13[$i4];	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$f0 = virtualinvoke r9.<java.awt.AlphaComposite: float getAlpha()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f));");	r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>];	$r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r20);	$r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void setComposite(java.awt.Composite)>(r0);	return
;block_num 3