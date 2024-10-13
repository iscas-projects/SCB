(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2116 0)
(declare-sort var3211 0)
(declare-sort var2718 0)
(declare-sort var2331 0)
(declare-sort var3405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3211-init () (Array Int var3211))
(declare-fun color/-1163328457 (var2116) var2718)
(declare-fun var2718_xgetR/391044083 (var2718) var3211)
(declare-fun var2718_xgetG/390716382 (var2718) var3211)
(declare-fun var2718_xgetB/390567427 (var2718) var3211)
(declare-fun getLength-Arr-var3211-1 ((Array Int var3211)) Int)
(declare-fun arr-var3405-init () (Array Int var3405))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3405 (Int) var3405)
(declare-fun String_format/-647569892 (var2331 String (Array Int var3405)) String)
(declare-const null-var2116 var2116)
(declare-const null-__Array__Int__var3211__ (Array Int var3211))
(declare-const var2331-ROOT var2331)
(declare-const null-__Array__Int__var3405__ (Array Int var3405))
(declare-const var333 var2116) ; Statement: r1 := @this: org.apache.poi.xddf.usermodel.XDDFColorRgbPercent 
(assert (not (= var333 null-var2116)))
(define-const var179 Int 0) ; Statement: i6 = 0 
(define-const var1258 (Array Int var3211) arr-var3211-init) ; Statement: $r0 = newarray (org.openxmlformats.schemas.drawingml.x2006.main.STPercentage)[3] 
(define-const var3639 var2718 (color/-1163328457 var333)) ; Statement: $r2 = r1.<org.apache.poi.xddf.usermodel.XDDFColorRgbPercent: org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor color> 
(define-const var1437 var3211 (var2718_xgetR/391044083 var3639)) ; Statement: $r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor: org.openxmlformats.schemas.drawingml.x2006.main.STPercentage xgetR()>() 
(declare-const var1258!1 (Array Int var3211))
(assert (not (= var1258!1 null-__Array__Int__var3211__)))
(assert (= (select var1258!1 0) var1437)) ; Statement: $r0[0] = $r3 
(define-const var2291 var2718 (color/-1163328457 var333)) ; Statement: $r4 = r1.<org.apache.poi.xddf.usermodel.XDDFColorRgbPercent: org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor color> 
(define-const var3274 var3211 (var2718_xgetG/390716382 var2291)) ; Statement: $r5 = interfaceinvoke $r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor: org.openxmlformats.schemas.drawingml.x2006.main.STPercentage xgetG()>() 
(declare-const var1258!2 (Array Int var3211))
(assert (not (= var1258!2 null-__Array__Int__var3211__)))
(assert (= (select var1258!2 1) var3274)) ; Statement: $r0[1] = $r5 
(define-const var1808 var2718 (color/-1163328457 var333)) ; Statement: $r6 = r1.<org.apache.poi.xddf.usermodel.XDDFColorRgbPercent: org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor color> 
(define-const var1041 var3211 (var2718_xgetB/390567427 var1808)) ; Statement: $r7 = interfaceinvoke $r6.<org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor: org.openxmlformats.schemas.drawingml.x2006.main.STPercentage xgetB()>() 
(declare-const var1258!3 (Array Int var3211))
(assert (not (= var1258!3 null-__Array__Int__var3211__)))
(assert (= (select var1258!3 2) var1041)) ; Statement: $r0[2] = $r7 
(define-const var1178 Int (getLength-Arr-var3211-1 var1258!3)) ; Statement: i0 = lengthof $r0 
(define-const var2586 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r9 = <java.util.Locale: java.util.Locale ROOT> 
(assert (>= var2586 var1178)) ; Cond: i7 >= i0 
(define-const var3245 var2331 var2331-ROOT) ; Statement: $r9 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2278 (Array Int var3405) arr-var3405-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(define-const var2182 Int (Int_valueOf/-1371140006 var179)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i6) 
(declare-const var2278!1 (Array Int var3405))
(assert (not (= var2278!1 null-__Array__Int__var3405__)))
(assert (= (select var2278!1 0) (cast-from-Int-to-var3405 var2182))) ; Statement: $r8[0] = $r10 
(define-const var720 String (String_format/-647569892 var3245 "%06X" var2278!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "%06X", $r8) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3211-init=([], org.openxmlformats.schemas.drawingml.x2006.main.STPercentage[]), color/-1163328457=([org.apache.poi.xddf.usermodel.XDDFColorRgbPercent], org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor), var2718_xgetR/391044083=([org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor], org.openxmlformats.schemas.drawingml.x2006.main.STPercentage), var2718_xgetG/390716382=([org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor], org.openxmlformats.schemas.drawingml.x2006.main.STPercentage), var2718_xgetB/390567427=([org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor], org.openxmlformats.schemas.drawingml.x2006.main.STPercentage), getLength-Arr-var3211-1=([org.openxmlformats.schemas.drawingml.x2006.main.STPercentage[]], int), arr-var3405-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3405=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2116=org.apache.poi.xddf.usermodel.XDDFColorRgbPercent, var333=r1, var179=i6, var3211=org.openxmlformats.schemas.drawingml.x2006.main.STPercentage, var1258=$r0, var2718=org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor, var3639=$r2, var1437=$r3, var2291=$r4, var3274=$r5, var1808=$r6, var1041=$r7, var1178=i0, var2586=i7, var2331=java.util.Locale, var3245=$r9, var3405=java.lang.Object, var2278=$r8, var2182=$r10, var720=$r11}
; {org.apache.poi.xddf.usermodel.XDDFColorRgbPercent=var2116, r1=var333, i6=var179, org.openxmlformats.schemas.drawingml.x2006.main.STPercentage=var3211, $r0=var1258, org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor=var2718, $r2=var3639, $r3=var1437, $r4=var2291, $r5=var3274, $r6=var1808, $r7=var1041, i0=var1178, i7=var2586, java.util.Locale=var2331, $r9=var3245, java.lang.Object=var3405, $r8=var2278, $r10=var2182, $r11=var720}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.poi.xddf.usermodel.XDDFColorRgbPercent;	i6 = 0;	$r0 = newarray (org.openxmlformats.schemas.drawingml.x2006.main.STPercentage)[3];	$r2 = r1.<org.apache.poi.xddf.usermodel.XDDFColorRgbPercent: org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor color>;	$r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor: org.openxmlformats.schemas.drawingml.x2006.main.STPercentage xgetR()>();	$r0[0] = $r3;	$r4 = r1.<org.apache.poi.xddf.usermodel.XDDFColorRgbPercent: org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor color>;	$r5 = interfaceinvoke $r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor: org.openxmlformats.schemas.drawingml.x2006.main.STPercentage xgetG()>();	$r0[1] = $r5;	$r6 = r1.<org.apache.poi.xddf.usermodel.XDDFColorRgbPercent: org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor color>;	$r7 = interfaceinvoke $r6.<org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor: org.openxmlformats.schemas.drawingml.x2006.main.STPercentage xgetB()>();	$r0[2] = $r7;	i0 = lengthof $r0;	i7 = 0;	if i7 >= i0 goto $r9 = <java.util.Locale: java.util.Locale ROOT>;	$r9 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = newarray (java.lang.Object)[1];	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i6);	$r8[0] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "%06X", $r8);	return $r11
;block_num 3