(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3288 0)
(declare-sort var3300 0)
(declare-sort var2188 0)
(declare-sort var3379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-1110529256 (var3288) var3300)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3300 String) void)
(declare-fun g2D/-1110529256 (var3288) var2188)
(declare-fun fillRect/-1458492313 (var3379 Int Int Int Int) void)
(declare-fun cast-from-var2188-to-var3379 (var2188) var3379)
(declare-const null-var3288 var3288)
(declare-const null-Int Int)
(declare-const var73 var3288) ; Statement: r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var73 null-var3288)))
(declare-const var2049 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2049 null-Int)))
(declare-const var662 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var662 null-Int)))
(declare-const var329 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var329 null-Int)))
(declare-const var3663 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var3663 null-Int)))
(define-const var3470 var3300 (log/-1110529256 var73)) ; Statement: $r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(define-const var265 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var265)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var265!1 String)
(assert (= var265!1 ""))
(assert true)
(define-const var1358 String (append/672562846 var265!1 "g.fillRect(")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.fillRect(") 
(declare-const var265!2 String)
(assert (= var265!2 (str.++ var265!1 "g.fillRect(")))
(assert true)
(define-const var262 String (append/-1001720160 var1358 var2049)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1358!1 String)
(assert (str.prefixof var1358 var1358!1))
(assert true)
(define-const var2156 String (append/672562846 var262 ",")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var262!1 String)
(assert (= var262!1 (str.++ var262 ",")))
(assert true)
(define-const var469 String (append/-1001720160 var2156 var662)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2156!1 String)
(assert (str.prefixof var2156 var2156!1))
(assert true)
(define-const var3181 String (append/672562846 var469 ",")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var469!1 String)
(assert (= var469!1 (str.++ var469 ",")))
(assert true)
(define-const var842 String (append/-1001720160 var3181 var329)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3181!1 String)
(assert (str.prefixof var3181 var3181!1))
(assert true)
(define-const var1321 String (append/672562846 var842 ",")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var842!1 String)
(assert (= var842!1 (str.++ var842 ",")))
(assert true)
(define-const var3152 String (append/-1001720160 var1321 var3663)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var1321!1 String)
(assert (str.prefixof var1321 var1321!1))
(assert true)
(define-const var937 String (append/672562846 var3152 ");")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var3152!1 String)
(assert (= var3152!1 (str.++ var3152 ");")))
(assert true)
(define-const var493 String (toString/-2075883882 var937)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3470 var493)) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r12) 

(declare-const var3470!1 var3300)
(declare-const var493!1 String)
(define-const var2790 var2188 (g2D/-1110529256 var73)) ; Statement: $r13 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (fillRect/-1458492313 (cast-from-var2188-to-var3379 var2790) var2049 var662 var329 var3663)) ; Statement: virtualinvoke $r13.<java.awt.Graphics2D: void fillRect(int,int,int,int)>(i0, i1, i2, i3) 

(declare-const var2790!1 var2188)
(declare-const var2049!1 Int)
(declare-const var662!1 Int)
(declare-const var329!1 Int)
(declare-const var3663!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), fillRect/-1458492313=([java.awt.Graphics, int, int, int, int], void), cast-from-var2188-to-var3379=([java.awt.Graphics2D], java.awt.Graphics)}
; {var3288=org.apache.poi.xslf.util.DummyGraphics2d, var73=r0, var2049=i0, var662=i1, var329=i2, var3663=i3, var3300=java.io.PrintStream, var3470=$r2, var265=$r1, var1358=$r3, var262=$r4, var2156=$r5, var469=$r6, var3181=$r7, var842=$r8, var1321=$r9, var3152=$r10, var937=$r11, var493=$r12, var2188=java.awt.Graphics2D, var2790=$r13, var3379=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3288, r0=var73, i0=var2049, i1=var662, i2=var329, i3=var3663, java.io.PrintStream=var3300, $r2=var3470, $r1=var265, $r3=var1358, $r4=var262, $r5=var2156, $r6=var469, $r7=var3181, $r8=var842, $r9=var1321, $r10=var3152, $r11=var937, $r12=var493, java.awt.Graphics2D=var2188, $r13=var2790, java.awt.Graphics=var3379}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.fillRect(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r12);	$r13 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r13.<java.awt.Graphics2D: void fillRect(int,int,int,int)>(i0, i1, i2, i3);	return
;block_num 1