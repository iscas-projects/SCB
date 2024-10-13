(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var27 0)
(declare-sort var3064 0)
(declare-sort var3489 0)
(declare-sort var3067 0)
(declare-sort var896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3489) String)
(declare-fun cast-from-var3064-to-var3489 (var3064) var3489)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var27) var3067)
(declare-fun println/1773605060 (var3067 String) void)
(declare-fun g2D/-1110529256 (var27) var896)
(declare-fun setRenderingHints/831135266 (var896 var3064) void)
(declare-const null-var27 var27)
(declare-const null-var3064 var3064)
(declare-const var2692 var27) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2692 null-var27)))
(declare-const var2144 var3064) ; Statement: r1 := @parameter0: java.util.Map 
(assert (not (= var2144 null-var3064)))
(define-const var652 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var652)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var652!1 String)
(assert (= var652!1 ""))
(assert true)
(define-const var3325 String (append/672562846 var652!1 "setRenderingHints(Map):\n  hints = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setRenderingHints(Map):\n  hints = ") 
(declare-const var652!2 String)
(assert (= var652!2 (str.++ var652!1 "setRenderingHints(Map):\n  hints = ")))
(assert true)
(define-const var1287 String (append/-1031950772 var3325 (cast-from-var3064-to-var3489 var2144))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3325!1 String)
(assert (str.prefixof var3325 var3325!1))
(assert true)
(define-const var2900 String (toString/-2075883882 var1287)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3576 var3067 (log/-1110529256 var2692)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3576 var2900)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var3576!1 var3067)
(declare-const var2900!1 String)
(define-const var2983 var896 (g2D/-1110529256 var2692)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setRenderingHints/831135266 var2983 var2144)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void setRenderingHints(java.util.Map)>(r1) 

(declare-const var2983!1 var896)
(declare-const var2144!1 var3064)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3064-to-var3489=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setRenderingHints/831135266=([java.awt.Graphics2D, java.util.Map], void)}
; {var27=org.apache.poi.xslf.util.DummyGraphics2d, var2692=r5, var3064=java.util.Map, var2144=r1, var652=$r0, var3325=$r2, var3489=java.lang.Object, var1287=$r3, var2900=r4, var3067=java.io.PrintStream, var3576=$r6, var896=java.awt.Graphics2D, var2983=$r7}
; {org.apache.poi.xslf.util.DummyGraphics2d=var27, r5=var2692, java.util.Map=var3064, r1=var2144, $r0=var652, $r2=var3325, java.lang.Object=var3489, $r3=var1287, r4=var2900, java.io.PrintStream=var3067, $r6=var3576, java.awt.Graphics2D=var896, $r7=var2983}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setRenderingHints(Map):\n  hints = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void setRenderingHints(java.util.Map)>(r1);	return
;block_num 1