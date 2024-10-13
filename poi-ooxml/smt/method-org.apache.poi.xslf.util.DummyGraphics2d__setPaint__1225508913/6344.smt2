(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var32 0)
(declare-sort var2144 0)
(declare-sort var2409 0)
(declare-sort var791 0)
(declare-sort var663 0)
(declare-sort var2254 0)
(declare-sort var2463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arr-var791-init () (Array Int var791))
(declare-fun cast-from-var2144-to-var663 (var2144) var663)
(declare-fun getRGB/-1606841108 (var663) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var791 (Int) var791)
(declare-fun String_format/-647569892 (var2409 String (Array Int var791)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var32) var2254)
(declare-fun println/1773605060 (var2254 String) void)
(declare-fun g2D/-1110529256 (var32) var2463)
(declare-fun setPaint/842897306 (var2463 var2144) void)
(declare-const null-var32 var32)
(declare-const null-var2144 var2144)
(declare-const var2409-ROOT var2409)
(declare-const null-__Array__Int__var791__ (Array Int var791))
(declare-const var3698 var32) ; Statement: r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3698 null-var32)))
(declare-const var3804 var2144) ; Statement: r0 := @parameter0: java.awt.Paint 
(assert (not (= var3804 null-var2144)))
(define-const var703 Bool true) ; Statement: $z0 = r0 instanceof java.awt.Color 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var703 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1607 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1607)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1607!1 String)
(assert (= var1607!1 ""))
(assert true)
(define-const var3135 String (append/672562846 var1607!1 "g.setPaint(")) ; Statement: $r15 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setPaint(") 
(declare-const var1607!2 String)
(assert (= var1607!2 (str.++ var1607!1 "g.setPaint(")))
(define-const var1509 var2409 var2409-ROOT) ; Statement: $r12 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3365 (Array Int var791) arr-var791-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(define-const var390 var663 (cast-from-var2144-to-var663 var3804)) ; Statement: $r11 = (java.awt.Color) r0 
(assert true)
(define-const var985 Int (getRGB/-1606841108 var390)) ; Statement: $i0 = virtualinvoke $r11.<java.awt.Color: int getRGB()>() 
(define-const var1117 Int (Int_valueOf/-1371140006 var985)) ; Statement: $r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var3365!1 (Array Int var791))
(assert (not (= var3365!1 null-__Array__Int__var791__)))
(assert (= (select var3365!1 0) (cast-from-Int-to-var791 var1117))) ; Statement: $r10[0] = $r13 
(define-const var393 String (String_format/-647569892 var1509 "new Color(0x%08X));" var3365!1)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r12, "new Color(0x%08X));", $r10) 
(assert true)
(define-const var400 String (append/672562846 var3135 var393)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3135!1 String)
(assert (= var3135!1 (str.++ var3135 var393)))
(assert true)
(define-const var1485 String (toString/-2075883882 var400)) ; Statement: r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>] 
(assert true) ; Non Conditional
(define-const var3133 var2254 (log/-1110529256 var3698)) ; Statement: $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3133 var1485)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r17) 

(declare-const var3133!1 var2254)
(declare-const var1485!1 String)
(define-const var468 var2463 (g2D/-1110529256 var3698)) ; Statement: $r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setPaint/842897306 var468 var3804)) ; Statement: virtualinvoke $r8.<java.awt.Graphics2D: void setPaint(java.awt.Paint)>(r0) 

(declare-const var468!1 var2463)
(declare-const var3804!1 var2144)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arr-var791-init=([], java.lang.Object[]), cast-from-var2144-to-var663=([java.awt.Paint], java.awt.Color), getRGB/-1606841108=([java.awt.Color], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var791=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setPaint/842897306=([java.awt.Graphics2D, java.awt.Paint], void)}
; {var32=org.apache.poi.xslf.util.DummyGraphics2d, var3698=r6, var2144=java.awt.Paint, var3804=r0, var703=$z0, var1607=$r9, var3135=$r15, var2409=java.util.Locale, var1509=$r12, var791=java.lang.Object, var3365=$r10, var663=java.awt.Color, var390=$r11, var985=$i0, var1117=$r13, var393=$r14, var400=$r16, var1485=r17, var2254=java.io.PrintStream, var3133=$r7, var2463=java.awt.Graphics2D, var468=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var32, r6=var3698, java.awt.Paint=var2144, r0=var3804, $z0=var703, $r9=var1607, $r15=var3135, java.util.Locale=var2409, $r12=var1509, java.lang.Object=var791, $r10=var3365, java.awt.Color=var663, $r11=var390, $i0=var985, $r13=var1117, $r14=var393, $r16=var400, r17=var1485, java.io.PrintStream=var2254, $r7=var3133, java.awt.Graphics2D=var2463, $r8=var468}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Paint;	$z0 = r0 instanceof java.awt.Color;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setPaint(");	$r12 = <java.util.Locale: java.util.Locale ROOT>;	$r10 = newarray (java.lang.Object)[1];	$r11 = (java.awt.Color) r0;	$i0 = virtualinvoke $r11.<java.awt.Color: int getRGB()>();	$r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r10[0] = $r13;	$r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r12, "new Color(0x%08X));", $r10);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>];	$r7 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>(r17);	$r8 = r6.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r8.<java.awt.Graphics2D: void setPaint(java.awt.Paint)>(r0);	return
;block_num 3