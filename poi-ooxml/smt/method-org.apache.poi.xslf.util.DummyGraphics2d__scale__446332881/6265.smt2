(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var837 0)
(declare-sort var229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-1110529256 (var1984) var837)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var837 String) void)
(declare-fun g2D/-1110529256 (var1984) var229)
(declare-fun scale/619080634 (var229 Float64 Float64) void)
(declare-const null-var1984 var1984)
(declare-const null-Float64 Float64)
(declare-const var141 var1984) ; Statement: r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var141 null-var1984)))
(declare-const var1956 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var1956 null-Float64)))
(declare-const var3700 Float64) ; Statement: d1 := @parameter1: double 
(assert (not (= var3700 null-Float64)))
(define-const var955 var837 (log/-1110529256 var141)) ; Statement: $r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(define-const var744 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var744)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var744!1 String)
(assert (= var744!1 ""))
(assert true)
(define-const var2321 String (append/672562846 var744!1 "g.scale(")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.scale(") 
(declare-const var744!2 String)
(assert (= var744!2 (str.++ var744!1 "g.scale(")))
(assert true)
(define-const var3317 String (append/33611274 var2321 var1956)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var2321!1 String)
(assert (str.prefixof var2321 var2321!1))
(assert true)
(define-const var1598 String (append/672562846 var3317 ",")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3317!1 String)
(assert (= var3317!1 (str.++ var3317 ",")))
(assert true)
(define-const var3865 String (append/33611274 var1598 var3700)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d1) 
(declare-const var1598!1 String)
(assert (str.prefixof var1598 var1598!1))
(assert true)
(define-const var2657 String (append/672562846 var3865 ");")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var3865!1 String)
(assert (= var3865!1 (str.++ var3865 ");")))
(assert true)
(define-const var3598 String (toString/-2075883882 var2657)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var955 var3598)) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var955!1 var837)
(declare-const var3598!1 String)
(define-const var203 var229 (g2D/-1110529256 var141)) ; Statement: $r9 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (scale/619080634 var203 var1956 var3700)) ; Statement: virtualinvoke $r9.<java.awt.Graphics2D: void scale(double,double)>(d0, d1) 

(declare-const var203!1 var229)
(declare-const var1956!1 Float64)
(declare-const var3700!1 Float64)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), scale/619080634=([java.awt.Graphics2D, double, double], void)}
; {var1984=org.apache.poi.xslf.util.DummyGraphics2d, var141=r0, var1956=d0, var3700=d1, var837=java.io.PrintStream, var955=$r2, var744=$r1, var2321=$r3, var3317=$r4, var1598=$r5, var3865=$r6, var2657=$r7, var3598=$r8, var229=java.awt.Graphics2D, var203=$r9}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1984, r0=var141, d0=var1956, d1=var3700, java.io.PrintStream=var837, $r2=var955, $r1=var744, $r3=var2321, $r4=var3317, $r5=var1598, $r6=var3865, $r7=var2657, $r8=var3598, java.awt.Graphics2D=var229, $r9=var203}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	d0 := @parameter0: double;	d1 := @parameter1: double;	$r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.scale(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r8);	$r9 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r9.<java.awt.Graphics2D: void scale(double,double)>(d0, d1);	return
;block_num 1