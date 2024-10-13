(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1471 0)
(declare-sort var837 0)
(declare-sort var827 0)
(declare-sort var2785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1471) var827)
(declare-fun println/1773605060 (var827 String) void)
(declare-fun g2D/-1110529256 (var1471) var2785)
(declare-fun drawString/-717582646 (var2785 String Int Int) void)
(declare-const null-var1471 var1471)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1052 var1471) ; Statement: r9 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1052 null-var1471)))
(declare-const var1024 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1024 null-String)))
(declare-const var980 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var980 null-Int)))
(declare-const var3903 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3903 null-Int)))
(define-const var2031 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2031)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2031!1 String)
(assert (= var2031!1 ""))
(assert true)
(define-const var557 String (append/672562846 var2031!1 "drawString(str,int,int):\n  str = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawString(str,int,int):\n  str = ") 
(declare-const var2031!2 String)
(assert (= var2031!2 (str.++ var2031!1 "drawString(str,int,int):\n  str = ")))
(assert true)
(define-const var527 String (append/672562846 var557 var1024)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var557!1 String)
(assert (= var557!1 (str.++ var557 var1024)))
(assert true)
(define-const var2766 String (append/672562846 var527 "\n  x = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ") 
(declare-const var527!1 String)
(assert (= var527!1 (str.++ var527 "\n  x = ")))
(assert true)
(define-const var3396 String (append/-1001720160 var2766 var980)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2766!1 String)
(assert (str.prefixof var2766 var2766!1))
(assert true)
(define-const var3040 String (append/672562846 var3396 "\n  y = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var3396!1 String)
(assert (= var3396!1 (str.++ var3396 "\n  y = ")))
(assert true)
(define-const var1494 String (append/-1001720160 var3040 var3903)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3040!1 String)
(assert (str.prefixof var3040 var3040!1))
(assert true)
(define-const var1328 String (toString/-2075883882 var1494)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1802 var827 (log/-1110529256 var1052)) ; Statement: $r10 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1802 var1328)) ; Statement: virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>(r8) 

(declare-const var1802!1 var827)
(declare-const var1328!1 String)
(define-const var1931 var2785 (g2D/-1110529256 var1052)) ; Statement: $r11 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawString/-717582646 var1931 var1024 var980 var3903)) ; Statement: virtualinvoke $r11.<java.awt.Graphics2D: void drawString(java.lang.String,int,int)>(r1, i0, i1) 

(declare-const var1931!1 var2785)
(declare-const var1024!1 String)
(declare-const var980!1 Int)
(declare-const var3903!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawString/-717582646=([java.awt.Graphics2D, java.lang.String, int, int], void)}
; {var1471=org.apache.poi.xslf.util.DummyGraphics2d, var1052=r9, var1024=r1, var837=null_type, var980=i0, var3903=i1, var2031=$r0, var557=$r2, var527=$r3, var2766=$r4, var3396=$r5, var3040=$r6, var1494=$r7, var1328=r8, var827=java.io.PrintStream, var1802=$r10, var2785=java.awt.Graphics2D, var1931=$r11}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1471, r9=var1052, r1=var1024, null_type=var837, i0=var980, i1=var3903, $r0=var2031, $r2=var557, $r3=var527, $r4=var2766, $r5=var3396, $r6=var3040, $r7=var1494, r8=var1328, java.io.PrintStream=var827, $r10=var1802, java.awt.Graphics2D=var2785, $r11=var1931}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawString(str,int,int):\n  str = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>(r8);	$r11 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r11.<java.awt.Graphics2D: void drawString(java.lang.String,int,int)>(r1, i0, i1);	return
;block_num 1