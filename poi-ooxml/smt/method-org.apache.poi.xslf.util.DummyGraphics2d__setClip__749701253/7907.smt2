(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1356 0)
(declare-sort var1779 0)
(declare-sort var3795 0)
(declare-sort var750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1356) var1779)
(declare-fun println/1773605060 (var1779 String) void)
(declare-fun g2D/-1110529256 (var1356) var3795)
(declare-fun setClip/-332777380 (var750 Int Int Int Int) void)
(declare-fun cast-from-var3795-to-var750 (var3795) var750)
(declare-const null-var1356 var1356)
(declare-const null-Int Int)
(declare-const var256 var1356) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var256 null-var1356)))
(declare-const var3138 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3138 null-Int)))
(declare-const var701 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var701 null-Int)))
(declare-const var2327 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2327 null-Int)))
(declare-const var191 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var191 null-Int)))
(define-const var1075 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1075)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1075!1 String)
(assert (= var1075!1 ""))
(assert true)
(define-const var694 String (append/672562846 var1075!1 "setClip(int,int,int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setClip(int,int,int,int):\n  x = ") 
(declare-const var1075!2 String)
(assert (= var1075!2 (str.++ var1075!1 "setClip(int,int,int,int):\n  x = ")))
(assert true)
(define-const var1979 String (append/-1001720160 var694 var3138)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var694!1 String)
(assert (str.prefixof var694 var694!1))
(assert true)
(define-const var3450 String (append/672562846 var1979 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var1979!1 String)
(assert (= var1979!1 (str.++ var1979 "\n  y = ")))
(assert true)
(define-const var1211 String (append/-1001720160 var3450 var701)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3450!1 String)
(assert (str.prefixof var3450 var3450!1))
(assert true)
(define-const var3959 String (append/672562846 var1211 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var1211!1 String)
(assert (= var1211!1 (str.++ var1211 "\n  width = ")))
(assert true)
(define-const var1753 String (append/-1001720160 var3959 var2327)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3959!1 String)
(assert (str.prefixof var3959 var3959!1))
(assert true)
(define-const var54 String (append/672562846 var1753 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var1753!1 String)
(assert (= var1753!1 (str.++ var1753 "\n  height = ")))
(assert true)
(define-const var3107 String (append/-1001720160 var54 var191)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var54!1 String)
(assert (str.prefixof var54 var54!1))
(assert true)
(define-const var1550 String (toString/-2075883882 var3107)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2368 var1779 (log/-1110529256 var256)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2368 var1550)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var2368!1 var1779)
(declare-const var1550!1 String)
(define-const var113 var3795 (g2D/-1110529256 var256)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setClip/-332777380 (cast-from-var3795-to-var750 var113) var3138 var701 var2327 var191)) ; Statement: virtualinvoke $r12.<java.awt.Graphics2D: void setClip(int,int,int,int)>(i0, i1, i2, i3) 

(declare-const var113!1 var3795)
(declare-const var3138!1 Int)
(declare-const var701!1 Int)
(declare-const var2327!1 Int)
(declare-const var191!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setClip/-332777380=([java.awt.Graphics, int, int, int, int], void), cast-from-var3795-to-var750=([java.awt.Graphics2D], java.awt.Graphics)}
; {var1356=org.apache.poi.xslf.util.DummyGraphics2d, var256=r10, var3138=i0, var701=i1, var2327=i2, var191=i3, var1075=$r0, var694=$r1, var1979=$r2, var3450=$r3, var1211=$r4, var3959=$r5, var1753=$r6, var54=$r7, var3107=$r8, var1550=r9, var1779=java.io.PrintStream, var2368=$r11, var3795=java.awt.Graphics2D, var113=$r12, var750=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1356, r10=var256, i0=var3138, i1=var701, i2=var2327, i3=var191, $r0=var1075, $r1=var694, $r2=var1979, $r3=var3450, $r4=var1211, $r5=var3959, $r6=var1753, $r7=var54, $r8=var3107, r9=var1550, java.io.PrintStream=var1779, $r11=var2368, java.awt.Graphics2D=var3795, $r12=var113, java.awt.Graphics=var750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setClip(int,int,int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r12.<java.awt.Graphics2D: void setClip(int,int,int,int)>(i0, i1, i2, i3);	return
;block_num 1