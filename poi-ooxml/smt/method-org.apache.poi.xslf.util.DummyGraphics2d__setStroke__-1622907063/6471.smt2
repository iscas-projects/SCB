(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1633 0)
(declare-sort var1850 0)
(declare-sort var937 0)
(declare-sort var2849 0)
(declare-sort var2893 0)
(declare-sort var2283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1850-to-var937 (var1850) var937)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getEndCap/1353613805 (var937) Int)
(declare-fun getLineJoin/63606918 (var937) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLineWidth/497732369 (var937) Float32)
(declare-fun append/991902413 (String Float32) String)
(declare-fun getMiterLimit/-553564287 (var937) Float32)
(declare-fun getDashArray/2059644574 (var937) (Array Int Float32))
(declare-fun var2849_toString/409851894 ((Array Int Float32)) String)
(declare-fun getDashPhase/-1443358502 (var937) Float32)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1633) var2893)
(declare-fun println/1773605060 (var2893 String) void)
(declare-fun g2D/-1110529256 (var1633) var2283)
(declare-fun setStroke/54526066 (var2283 var1850) void)
(declare-const null-var1633 var1633)
(declare-const null-var1850 var1850)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3115 var1633) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3115 null-var1633)))
(declare-const var2840 var1850) ; Statement: r0 := @parameter0: java.awt.Stroke 
(assert (not (= var2840 null-var1850)))
(define-const var1742 Bool true) ; Statement: $z0 = r0 instanceof java.awt.BasicStroke 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var1742 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3063 var937 (cast-from-var1850-to-var937 var2840)) ; Statement: r8 = (java.awt.BasicStroke) r0 
(define-const var2943 (Array Int String) arr-String-init) ; Statement: $r9 = newarray (java.lang.String)[3] 
(declare-const var2943!1 (Array Int String))
(assert (not (= var2943!1 null-__Array__Int__String__)))
(assert (= (select var2943!1 0) "BUTT")) ; Statement: $r9[0] = "BUTT" 
(declare-const var2943!2 (Array Int String))
(assert (not (= var2943!2 null-__Array__Int__String__)))
(assert (= (select var2943!2 1) "ROUND")) ; Statement: $r9[1] = "ROUND" 
(declare-const var2943!3 (Array Int String))
(assert (not (= var2943!3 null-__Array__Int__String__)))
(assert (= (select var2943!3 2) "SQUARE")) ; Statement: $r9[2] = "SQUARE" 
(assert true)
(define-const var1947 Int (getEndCap/1353613805 var3063)) ; Statement: $i0 = virtualinvoke r8.<java.awt.BasicStroke: int getEndCap()>() 
(define-const var790 String (select var2943!3 var1947)) ; Statement: r10 = $r9[$i0] 
(define-const var805 (Array Int String) arr-String-init) ; Statement: $r11 = newarray (java.lang.String)[3] 
(declare-const var805!1 (Array Int String))
(assert (not (= var805!1 null-__Array__Int__String__)))
(assert (= (select var805!1 0) "MITER")) ; Statement: $r11[0] = "MITER" 
(declare-const var805!2 (Array Int String))
(assert (not (= var805!2 null-__Array__Int__String__)))
(assert (= (select var805!2 1) "ROUND")) ; Statement: $r11[1] = "ROUND" 
(declare-const var805!3 (Array Int String))
(assert (not (= var805!3 null-__Array__Int__String__)))
(assert (= (select var805!3 2) "BEVEL")) ; Statement: $r11[2] = "BEVEL" 
(assert true)
(define-const var2892 Int (getLineJoin/63606918 var3063)) ; Statement: $i1 = virtualinvoke r8.<java.awt.BasicStroke: int getLineJoin()>() 
(define-const var2262 String (select var805!3 var2892)) ; Statement: r12 = $r11[$i1] 
(define-const var2683 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2683)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2683!1 String)
(assert (= var2683!1 ""))
(assert true)
(define-const var1649 String (append/672562846 var2683!1 "g.setStroke(new BasicStroke(")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setStroke(new BasicStroke(") 
(declare-const var2683!2 String)
(assert (= var2683!2 (str.++ var2683!1 "g.setStroke(new BasicStroke(")))
(assert true)
(define-const var916 Float32 (getLineWidth/497732369 var3063)) ; Statement: $f0 = virtualinvoke r8.<java.awt.BasicStroke: float getLineWidth()>() 
(assert true)
(define-const var3720 String (append/991902413 var1649 var916)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var1649!1 String)
(assert (str.prefixof var1649 var1649!1))
(assert true)
(define-const var2184 String (append/672562846 var3720 "f, BasicStroke.CAP_")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f, BasicStroke.CAP_") 
(declare-const var3720!1 String)
(assert (= var3720!1 (str.++ var3720 "f, BasicStroke.CAP_")))
(assert true)
(define-const var890 String (append/672562846 var2184 var790)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2184!1 String)
(assert (= var2184!1 (str.++ var2184 var790)))
(assert true)
(define-const var735 String (append/672562846 var890 ", BasicStroke.JOIN_")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", BasicStroke.JOIN_") 
(declare-const var890!1 String)
(assert (= var890!1 (str.++ var890 ", BasicStroke.JOIN_")))
(assert true)
(define-const var1463 String (append/672562846 var735 var2262)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var735!1 String)
(assert (= var735!1 (str.++ var735 var2262)))
(assert true)
(define-const var2343 String (append/672562846 var1463 ", ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1463!1 String)
(assert (= var1463!1 (str.++ var1463 ", ")))
(assert true)
(define-const var3032 Float32 (getMiterLimit/-553564287 var3063)) ; Statement: $f1 = virtualinvoke r8.<java.awt.BasicStroke: float getMiterLimit()>() 
(assert true)
(define-const var2547 String (append/991902413 var2343 var3032)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1) 
(declare-const var2343!1 String)
(assert (str.prefixof var2343 var2343!1))
(assert true)
(define-const var669 String (append/672562846 var2547 "f, ")) ; Statement: $r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f, ") 
(declare-const var2547!1 String)
(assert (= var2547!1 (str.++ var2547 "f, ")))
(assert true)
(define-const var653 (Array Int Float32) (getDashArray/2059644574 var3063)) ; Statement: $r22 = virtualinvoke r8.<java.awt.BasicStroke: float[] getDashArray()>() 
(define-const var514 String (var2849_toString/409851894 var653)) ; Statement: $r23 = staticinvoke <java.util.Arrays: java.lang.String toString(float[])>($r22) 
(assert true)
(define-const var3536 String (append/672562846 var669 var514)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 var514)))
(assert true)
(define-const var997 String (append/672562846 var3536 ", ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3536!1 String)
(assert (= var3536!1 (str.++ var3536 ", ")))
(assert true)
(define-const var775 Float32 (getDashPhase/-1443358502 var3063)) ; Statement: $f2 = virtualinvoke r8.<java.awt.BasicStroke: float getDashPhase()>() 
(assert true)
(define-const var354 String (append/991902413 var997 var775)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f2) 
(declare-const var997!1 String)
(assert (str.prefixof var997 var997!1))
(assert true)
(define-const var2949 String (append/672562846 var354 "f));")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f));") 
(declare-const var354!1 String)
(assert (= var354!1 (str.++ var354 "f));")))
(assert true)
(define-const var1324 String (toString/-2075883882 var2949)) ; Statement: r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>] 
(assert true) ; Non Conditional
(define-const var2938 var2893 (log/-1110529256 var3115)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2938 var1324)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r29) 

(declare-const var2938!1 var2893)
(declare-const var1324!1 String)
(define-const var1231 var2283 (g2D/-1110529256 var3115)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setStroke/54526066 var1231 var2840)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void setStroke(java.awt.Stroke)>(r0) 

(declare-const var1231!1 var2283)
(declare-const var2840!1 var1850)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1850-to-var937=([java.awt.Stroke], java.awt.BasicStroke), arr-String-init=([], java.lang.String[]), getEndCap/1353613805=([java.awt.BasicStroke], int), getLineJoin/63606918=([java.awt.BasicStroke], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLineWidth/497732369=([java.awt.BasicStroke], float), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), getMiterLimit/-553564287=([java.awt.BasicStroke], float), getDashArray/2059644574=([java.awt.BasicStroke], float[]), var2849_toString/409851894=([float[]], java.lang.String), getDashPhase/-1443358502=([java.awt.BasicStroke], float), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setStroke/54526066=([java.awt.Graphics2D, java.awt.Stroke], void)}
; {var1633=org.apache.poi.xslf.util.DummyGraphics2d, var3115=r5, var1850=java.awt.Stroke, var2840=r0, var1742=$z0, var937=java.awt.BasicStroke, var3063=r8, var2943=$r9, var1947=$i0, var790=r10, var805=$r11, var2892=$i1, var2262=r12, var2683=$r13, var1649=$r14, var916=$f0, var3720=$r15, var2184=$r16, var890=$r17, var735=$r18, var1463=$r19, var2343=$r20, var3032=$f1, var2547=$r21, var669=$r24, var653=$r22, var2849=java.util.Arrays, var514=$r23, var3536=$r25, var997=$r26, var775=$f2, var354=$r27, var2949=$r28, var1324=r29, var2893=java.io.PrintStream, var2938=$r6, var2283=java.awt.Graphics2D, var1231=$r7}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1633, r5=var3115, java.awt.Stroke=var1850, r0=var2840, $z0=var1742, java.awt.BasicStroke=var937, r8=var3063, $r9=var2943, $i0=var1947, r10=var790, $r11=var805, $i1=var2892, r12=var2262, $r13=var2683, $r14=var1649, $f0=var916, $r15=var3720, $r16=var2184, $r17=var890, $r18=var735, $r19=var1463, $r20=var2343, $f1=var3032, $r21=var2547, $r24=var669, $r22=var653, java.util.Arrays=var2849, $r23=var514, $r25=var3536, $r26=var997, $f2=var775, $r27=var354, $r28=var2949, r29=var1324, java.io.PrintStream=var2893, $r6=var2938, java.awt.Graphics2D=var2283, $r7=var1231}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(float[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.awt.Stroke;	$z0 = r0 instanceof java.awt.BasicStroke;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	r8 = (java.awt.BasicStroke) r0;	$r9 = newarray (java.lang.String)[3];	$r9[0] = "BUTT";	$r9[1] = "ROUND";	$r9[2] = "SQUARE";	$i0 = virtualinvoke r8.<java.awt.BasicStroke: int getEndCap()>();	r10 = $r9[$i0];	$r11 = newarray (java.lang.String)[3];	$r11[0] = "MITER";	$r11[1] = "ROUND";	$r11[2] = "BEVEL";	$i1 = virtualinvoke r8.<java.awt.BasicStroke: int getLineJoin()>();	r12 = $r11[$i1];	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.setStroke(new BasicStroke(");	$f0 = virtualinvoke r8.<java.awt.BasicStroke: float getLineWidth()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f, BasicStroke.CAP_");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", BasicStroke.JOIN_");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$f1 = virtualinvoke r8.<java.awt.BasicStroke: float getMiterLimit()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1);	$r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f, ");	$r22 = virtualinvoke r8.<java.awt.BasicStroke: float[] getDashArray()>();	$r23 = staticinvoke <java.util.Arrays: java.lang.String toString(float[])>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$f2 = virtualinvoke r8.<java.awt.BasicStroke: float getDashPhase()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f2);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f));");	r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>];	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r29);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void setStroke(java.awt.Stroke)>(r0);	return
;block_num 3