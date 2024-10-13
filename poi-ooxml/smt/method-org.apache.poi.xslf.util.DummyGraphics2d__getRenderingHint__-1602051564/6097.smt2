(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var878 0)
(declare-sort var3557 0)
(declare-sort var1097 0)
(declare-sort var3598 0)
(declare-sort var2910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-1110529256 (var878) var1097)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3598) String)
(declare-fun cast-from-var3557-to-var3598 (var3557) var3598)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1097 String) void)
(declare-fun g2D/-1110529256 (var878) var2910)
(declare-fun getRenderingHint/588129227 (var2910 var3557) var3598)
(declare-const null-var878 var878)
(declare-const null-var3557 var3557)
(declare-const var1467 var878) ; Statement: r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1467 null-var878)))
(declare-const var2084 var3557) ; Statement: r3 := @parameter0: java.awt.RenderingHints$Key 
(assert (not (= var2084 null-var3557)))
(define-const var384 var1097 (log/-1110529256 var1467)) ; Statement: $r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(define-const var831 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var831)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var831!1 String)
(assert (= var831!1 ""))
(assert true)
(define-const var1195 String (append/672562846 var831!1 "getRenderingHint(\u0022")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getRenderingHint(\"") 
(declare-const var831!2 String)
(assert (= var831!2 (str.++ var831!1 "getRenderingHint(\u0022")))
(assert true)
(define-const var2471 String (append/-1031950772 var1195 (cast-from-var3557-to-var3598 var2084))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1195!1 String)
(assert (str.prefixof var1195 var1195!1))
(assert true)
(define-const var3848 String (append/672562846 var2471 "\u0022)")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")") 
(declare-const var2471!1 String)
(assert (= var2471!1 (str.++ var2471 "\u0022)")))
(assert true)
(define-const var953 String (toString/-2075883882 var3848)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var384 var953)) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r7) 

(declare-const var384!1 var1097)
(declare-const var953!1 String)
(define-const var262 var2910 (g2D/-1110529256 var1467)) ; Statement: $r8 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var1541 var3598 (getRenderingHint/588129227 var262 var2084)) ; Statement: $r9 = virtualinvoke $r8.<java.awt.Graphics2D: java.lang.Object getRenderingHint(java.awt.RenderingHints$Key)>(r3) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3557-to-var3598=([java.awt.RenderingHints$Key], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), getRenderingHint/588129227=([java.awt.Graphics2D, java.awt.RenderingHints$Key], java.lang.Object)}
; {var878=org.apache.poi.xslf.util.DummyGraphics2d, var1467=r0, var3557=java.awt.RenderingHints$Key, var2084=r3, var1097=java.io.PrintStream, var384=$r2, var831=$r1, var1195=$r4, var3598=java.lang.Object, var2471=$r5, var3848=$r6, var953=$r7, var2910=java.awt.Graphics2D, var262=$r8, var1541=$r9}
; {org.apache.poi.xslf.util.DummyGraphics2d=var878, r0=var1467, java.awt.RenderingHints$Key=var3557, r3=var2084, java.io.PrintStream=var1097, $r2=var384, $r1=var831, $r4=var1195, java.lang.Object=var3598, $r5=var2471, $r6=var3848, $r7=var953, java.awt.Graphics2D=var2910, $r8=var262, $r9=var1541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r3 := @parameter0: java.awt.RenderingHints$Key;	$r2 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getRenderingHint(\"");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r7);	$r8 = r0.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$r9 = virtualinvoke $r8.<java.awt.Graphics2D: java.lang.Object getRenderingHint(java.awt.RenderingHints$Key)>(r3);	return $r9
;block_num 1