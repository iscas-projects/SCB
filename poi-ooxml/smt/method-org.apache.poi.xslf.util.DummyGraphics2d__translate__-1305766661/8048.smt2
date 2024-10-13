(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2539 0)
(declare-sort var2449 0)
(declare-sort var2350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2539) var2449)
(declare-fun println/1773605060 (var2449 String) void)
(declare-fun g2D/-1110529256 (var2539) var2350)
(declare-fun translate/455304996 (var2350 Int Int) void)
(declare-const null-var2539 var2539)
(declare-const null-Int Int)
(declare-const var3014 var2539) ; Statement: r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3014 null-var2539)))
(declare-const var133 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var133 null-Int)))
(declare-const var1830 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1830 null-Int)))
(define-const var2457 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2457)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2457!1 String)
(assert (= var2457!1 ""))
(assert true)
(define-const var1425 String (append/672562846 var2457!1 "translate(int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("translate(int,int):\n  x = ") 
(declare-const var2457!2 String)
(assert (= var2457!2 (str.++ var2457!1 "translate(int,int):\n  x = ")))
(assert true)
(define-const var376 String (append/-1001720160 var1425 var133)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1425!1 String)
(assert (str.prefixof var1425 var1425!1))
(assert true)
(define-const var1018 String (append/672562846 var376 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var376!1 String)
(assert (= var376!1 (str.++ var376 "\n  y = ")))
(assert true)
(define-const var990 String (append/-1001720160 var1018 var1830)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1018!1 String)
(assert (str.prefixof var1018 var1018!1))
(assert true)
(define-const var2073 String (toString/-2075883882 var990)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1389 var2449 (log/-1110529256 var3014)) ; Statement: $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1389 var2073)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r5) 

(declare-const var1389!1 var2449)
(declare-const var2073!1 String)
(define-const var1777 var2350 (g2D/-1110529256 var3014)) ; Statement: $r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (translate/455304996 var1777 var133 var1830)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void translate(int,int)>(i0, i1) 

(declare-const var1777!1 var2350)
(declare-const var133!1 Int)
(declare-const var1830!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), translate/455304996=([java.awt.Graphics2D, int, int], void)}
; {var2539=org.apache.poi.xslf.util.DummyGraphics2d, var3014=r6, var133=i0, var1830=i1, var2457=$r0, var1425=$r1, var376=$r2, var1018=$r3, var990=$r4, var2073=r5, var2449=java.io.PrintStream, var1389=$r7, var2350=java.awt.Graphics2D, var1777=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2539, r6=var3014, i0=var133, i1=var1830, $r0=var2457, $r1=var1425, $r2=var376, $r3=var1018, $r4=var990, r5=var2073, java.io.PrintStream=var2449, $r7=var1389, java.awt.Graphics2D=var2350, $r8=var1777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("translate(int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r5);	$r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void translate(int,int)>(i0, i1);	return
;block_num 1