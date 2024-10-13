(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3252 0)
(declare-sort var3811 0)
(declare-sort var1321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3252) var3811)
(declare-fun println/1773605060 (var3811 String) void)
(declare-fun g2D/-1110529256 (var3252) var1321)
(declare-fun rotate/1904697130 (var1321 Float64 Float64 Float64) void)
(declare-const null-var3252 var3252)
(declare-const null-Float64 Float64)
(declare-const var1344 var3252) ; Statement: r8 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1344 null-var3252)))
(declare-const var3323 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var3323 null-Float64)))
(declare-const var1790 Float64) ; Statement: d1 := @parameter1: double 
(assert (not (= var1790 null-Float64)))
(declare-const var578 Float64) ; Statement: d2 := @parameter2: double 
(assert (not (= var578 null-Float64)))
(define-const var1497 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1497)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1497!1 String)
(assert (= var1497!1 ""))
(assert true)
(define-const var1561 String (append/672562846 var1497!1 "rotate(double,double,double):\n  theta = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rotate(double,double,double):\n  theta = ") 
(declare-const var1497!2 String)
(assert (= var1497!2 (str.++ var1497!1 "rotate(double,double,double):\n  theta = ")))
(assert true)
(define-const var1840 String (append/33611274 var1561 var3323)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var1561!1 String)
(assert (str.prefixof var1561 var1561!1))
(assert true)
(define-const var3703 String (append/672562846 var1840 "\n  x = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ") 
(declare-const var1840!1 String)
(assert (= var1840!1 (str.++ var1840 "\n  x = ")))
(assert true)
(define-const var3075 String (append/33611274 var3703 var1790)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d1) 
(declare-const var3703!1 String)
(assert (str.prefixof var3703 var3703!1))
(assert true)
(define-const var3157 String (append/672562846 var3075 "\n  y = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var3075!1 String)
(assert (= var3075!1 (str.++ var3075 "\n  y = ")))
(assert true)
(define-const var2727 String (append/33611274 var3157 var578)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d2) 
(declare-const var3157!1 String)
(assert (str.prefixof var3157 var3157!1))
(assert true)
(define-const var2438 String (toString/-2075883882 var2727)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var569 var3811 (log/-1110529256 var1344)) ; Statement: $r9 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var569 var2438)) ; Statement: virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>(r7) 

(declare-const var569!1 var3811)
(declare-const var2438!1 String)
(define-const var841 var1321 (g2D/-1110529256 var1344)) ; Statement: $r10 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (rotate/1904697130 var841 var3323 var1790 var578)) ; Statement: virtualinvoke $r10.<java.awt.Graphics2D: void rotate(double,double,double)>(d0, d1, d2) 

(declare-const var841!1 var1321)
(declare-const var3323!1 Float64)
(declare-const var1790!1 Float64)
(declare-const var578!1 Float64)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), rotate/1904697130=([java.awt.Graphics2D, double, double, double], void)}
; {var3252=org.apache.poi.xslf.util.DummyGraphics2d, var1344=r8, var3323=d0, var1790=d1, var578=d2, var1497=$r0, var1561=$r1, var1840=$r2, var3703=$r3, var3075=$r4, var3157=$r5, var2727=$r6, var2438=r7, var3811=java.io.PrintStream, var569=$r9, var1321=java.awt.Graphics2D, var841=$r10}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3252, r8=var1344, d0=var3323, d1=var1790, d2=var578, $r0=var1497, $r1=var1561, $r2=var1840, $r3=var3703, $r4=var3075, $r5=var3157, $r6=var2727, r7=var2438, java.io.PrintStream=var3811, $r9=var569, java.awt.Graphics2D=var1321, $r10=var841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	d0 := @parameter0: double;	d1 := @parameter1: double;	d2 := @parameter2: double;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rotate(double,double,double):\n  theta = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d2);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>(r7);	$r10 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r10.<java.awt.Graphics2D: void rotate(double,double,double)>(d0, d1, d2);	return
;block_num 1