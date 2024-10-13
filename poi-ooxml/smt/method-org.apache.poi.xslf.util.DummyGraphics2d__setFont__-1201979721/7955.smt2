(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2691 0)
(declare-sort var289 0)
(declare-sort var2852 0)
(declare-sort var3959 0)
(declare-sort var1995 0)
(declare-sort var1380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2852) String)
(declare-fun cast-from-var289-to-var2852 (var289) var2852)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2691) var3959)
(declare-fun println/1773605060 (var3959 String) void)
(declare-fun g2D/-1110529256 (var2691) var1995)
(declare-fun setFont/-1113720754 (var1380 var289) void)
(declare-fun cast-from-var1995-to-var1380 (var1995) var1380)
(declare-const null-var2691 var2691)
(declare-const null-var289 var289)
(declare-const var393 var2691) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var393 null-var2691)))
(declare-const var2820 var289) ; Statement: r1 := @parameter0: java.awt.Font 
(assert (not (= var2820 null-var289)))
(define-const var960 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var960)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var960!1 String)
(assert (= var960!1 ""))
(assert true)
(define-const var3169 String (append/672562846 var960!1 "setFont(Font):\n  font = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setFont(Font):\n  font = ") 
(declare-const var960!2 String)
(assert (= var960!2 (str.++ var960!1 "setFont(Font):\n  font = ")))
(assert true)
(define-const var1630 String (append/-1031950772 var3169 (cast-from-var289-to-var2852 var2820))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3169!1 String)
(assert (str.prefixof var3169 var3169!1))
(assert true)
(define-const var973 String (toString/-2075883882 var1630)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3159 var3959 (log/-1110529256 var393)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3159 var973)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var3159!1 var3959)
(declare-const var973!1 String)
(define-const var3844 var1995 (g2D/-1110529256 var393)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setFont/-1113720754 (cast-from-var1995-to-var1380 var3844) var2820)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void setFont(java.awt.Font)>(r1) 

(declare-const var3844!1 var1995)
(declare-const var2820!1 var289)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var289-to-var2852=([java.awt.Font], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setFont/-1113720754=([java.awt.Graphics, java.awt.Font], void), cast-from-var1995-to-var1380=([java.awt.Graphics2D], java.awt.Graphics)}
; {var2691=org.apache.poi.xslf.util.DummyGraphics2d, var393=r5, var289=java.awt.Font, var2820=r1, var960=$r0, var3169=$r2, var2852=java.lang.Object, var1630=$r3, var973=r4, var3959=java.io.PrintStream, var3159=$r6, var1995=java.awt.Graphics2D, var3844=$r7, var1380=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2691, r5=var393, java.awt.Font=var289, r1=var2820, $r0=var960, $r2=var3169, java.lang.Object=var2852, $r3=var1630, r4=var973, java.io.PrintStream=var3959, $r6=var3159, java.awt.Graphics2D=var1995, $r7=var3844, java.awt.Graphics=var1380}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Font;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setFont(Font):\n  font = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void setFont(java.awt.Font)>(r1);	return
;block_num 1