(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2753 0)
(declare-sort var2470 0)
(declare-sort var638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2753) var2470)
(declare-fun println/1773605060 (var2470 String) void)
(declare-fun g2D/-1110529256 (var2753) var638)
(declare-fun fill3DRect/-952198590 (var638 Int Int Int Int Bool) void)
(declare-const null-var2753 var2753)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var880 var2753) ; Statement: r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var880 null-var2753)))
(declare-const var1881 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1881 null-Int)))
(declare-const var571 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var571 null-Int)))
(declare-const var2084 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2084 null-Int)))
(declare-const var2303 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2303 null-Int)))
(declare-const var432 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var432 null-Bool)))
(define-const var1465 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1465)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1465!1 String)
(assert (= var1465!1 ""))
(assert true)
(define-const var564 String (append/672562846 var1465!1 "fill3DRect(int,int,int,int,boolean):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fill3DRect(int,int,int,int,boolean):\n  x = ") 
(declare-const var1465!2 String)
(assert (= var1465!2 (str.++ var1465!1 "fill3DRect(int,int,int,int,boolean):\n  x = ")))
(assert true)
(define-const var1146 String (append/-1001720160 var564 var1881)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var564!1 String)
(assert (str.prefixof var564 var564!1))
(assert true)
(define-const var878 String (append/672562846 var1146 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var1146!1 String)
(assert (= var1146!1 (str.++ var1146 "\n  y = ")))
(assert true)
(define-const var2366 String (append/-1001720160 var878 var571)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var878!1 String)
(assert (str.prefixof var878 var878!1))
(assert true)
(define-const var606 String (append/672562846 var2366 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var2366!1 String)
(assert (= var2366!1 (str.++ var2366 "\n  width = ")))
(assert true)
(define-const var3955 String (append/-1001720160 var606 var2084)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var606!1 String)
(assert (str.prefixof var606 var606!1))
(assert true)
(define-const var2884 String (append/672562846 var3955 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var3955!1 String)
(assert (= var3955!1 (str.++ var3955 "\n  height = ")))
(assert true)
(define-const var3807 String (append/-1001720160 var2884 var2303)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2884!1 String)
(assert (str.prefixof var2884 var2884!1))
(assert true)
(define-const var1313 String (append/672562846 var3807 "\n  raised = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  raised = ") 
(declare-const var3807!1 String)
(assert (= var3807!1 (str.++ var3807 "\n  raised = ")))
(assert true)
(define-const var2337 String (append/-388390247 var1313 var432)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var1313!1 String)
(assert (str.prefixof var1313 var1313!1))
(assert true)
(define-const var2780 String (toString/-2075883882 var2337)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3384 var2470 (log/-1110529256 var880)) ; Statement: $r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3384 var2780)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11) 

(declare-const var3384!1 var2470)
(declare-const var2780!1 String)
(define-const var1722 var638 (g2D/-1110529256 var880)) ; Statement: $r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (fill3DRect/-952198590 var1722 var1881 var571 var2084 var2303 var432)) ; Statement: virtualinvoke $r14.<java.awt.Graphics2D: void fill3DRect(int,int,int,int,boolean)>(i0, i1, i2, i3, z0) 

(declare-const var1722!1 var638)
(declare-const var1881!1 Int)
(declare-const var571!1 Int)
(declare-const var2084!1 Int)
(declare-const var2303!1 Int)
(declare-const var432!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), fill3DRect/-952198590=([java.awt.Graphics2D, int, int, int, int, boolean], void)}
; {var2753=org.apache.poi.xslf.util.DummyGraphics2d, var880=r12, var1881=i0, var571=i1, var2084=i2, var2303=i3, var432=z0, var1465=$r0, var564=$r1, var1146=$r2, var878=$r3, var2366=$r4, var606=$r5, var3955=$r6, var2884=$r7, var3807=$r8, var1313=$r9, var2337=$r10, var2780=r11, var2470=java.io.PrintStream, var3384=$r13, var638=java.awt.Graphics2D, var1722=$r14}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2753, r12=var880, i0=var1881, i1=var571, i2=var2084, i3=var2303, z0=var432, $r0=var1465, $r1=var564, $r2=var1146, $r3=var878, $r4=var2366, $r5=var606, $r6=var3955, $r7=var2884, $r8=var3807, $r9=var1313, $r10=var2337, r11=var2780, java.io.PrintStream=var2470, $r13=var3384, java.awt.Graphics2D=var638, $r14=var1722}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fill3DRect(int,int,int,int,boolean):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  raised = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11);	$r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r14.<java.awt.Graphics2D: void fill3DRect(int,int,int,int,boolean)>(i0, i1, i2, i3, z0);	return
;block_num 1