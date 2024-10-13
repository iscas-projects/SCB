(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1951 0)
(declare-sort var3872 0)
(declare-sort var278 0)
(declare-sort var2869 0)
(declare-sort var3215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var278) String)
(declare-fun cast-from-var3872-to-var278 (var3872) var278)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1951) var2869)
(declare-fun println/1773605060 (var2869 String) void)
(declare-fun g2D/-1110529256 (var1951) var3215)
(declare-fun addRenderingHints/-2120080863 (var3215 var3872) void)
(declare-const null-var1951 var1951)
(declare-const null-var3872 var3872)
(declare-const var846 var1951) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var846 null-var1951)))
(declare-const var1147 var3872) ; Statement: r1 := @parameter0: java.util.Map 
(assert (not (= var1147 null-var3872)))
(define-const var1320 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1320)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1320!1 String)
(assert (= var1320!1 ""))
(assert true)
(define-const var2364 String (append/672562846 var1320!1 "addRenderingHinds(Map):\n  hints = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("addRenderingHinds(Map):\n  hints = ") 
(declare-const var1320!2 String)
(assert (= var1320!2 (str.++ var1320!1 "addRenderingHinds(Map):\n  hints = ")))
(assert true)
(define-const var3985 String (append/-1031950772 var2364 (cast-from-var3872-to-var278 var1147))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2364!1 String)
(assert (str.prefixof var2364 var2364!1))
(assert true)
(define-const var2750 String (toString/-2075883882 var3985)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var446 var2869 (log/-1110529256 var846)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var446 var2750)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var446!1 var2869)
(declare-const var2750!1 String)
(define-const var2306 var3215 (g2D/-1110529256 var846)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (addRenderingHints/-2120080863 var2306 var1147)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void addRenderingHints(java.util.Map)>(r1) 

(declare-const var2306!1 var3215)
(declare-const var1147!1 var3872)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3872-to-var278=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), addRenderingHints/-2120080863=([java.awt.Graphics2D, java.util.Map], void)}
; {var1951=org.apache.poi.xslf.util.DummyGraphics2d, var846=r5, var3872=java.util.Map, var1147=r1, var1320=$r0, var2364=$r2, var278=java.lang.Object, var3985=$r3, var2750=r4, var2869=java.io.PrintStream, var446=$r6, var3215=java.awt.Graphics2D, var2306=$r7}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1951, r5=var846, java.util.Map=var3872, r1=var1147, $r0=var1320, $r2=var2364, java.lang.Object=var278, $r3=var3985, r4=var2750, java.io.PrintStream=var2869, $r6=var446, java.awt.Graphics2D=var3215, $r7=var2306}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("addRenderingHinds(Map):\n  hints = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void addRenderingHints(java.util.Map)>(r1);	return
;block_num 1