(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var382 0)
(declare-sort var2175 0)
(declare-sort var2135 0)
(declare-sort var2167 0)
(declare-sort var1720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/379500303 (var2135 var2175) String)
(declare-fun preCoordinate/2076037668 (var382) String)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun curCoordinate/2076037668 (var382) String)
(declare-fun setCellType/1458437913 (var382 var2175) void)
(declare-fun lastContent/2076037668 (var382) var1720)
(declare-fun reset/-1286715992 (var1720) var1720)
(declare-fun lastFormula/2076037668 (var382) var1720)
(declare-const null-var382 var382)
(declare-const null-var2175 var2175)
(declare-const var2135-r var2135)
(declare-const null-String String)
(declare-const var1294 var382) ; Statement: r3 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler 
(assert (not (= var1294 null-var382)))
(declare-const var946 var2175) ; Statement: r0 := @parameter0: org.xml.sax.Attributes 
(assert (not (= var946 null-var2175)))
(define-const var579 var2135 var2135-r) ; Statement: $r1 = <cn.hutool.poi.excel.sax.AttributeName: cn.hutool.poi.excel.sax.AttributeName r> 
(assert true)
(define-const var2198 String (getValue/379500303 var579 var946)) ; Statement: r2 = virtualinvoke $r1.<cn.hutool.poi.excel.sax.AttributeName: java.lang.String getValue(org.xml.sax.Attributes)>(r0) 
(define-const var932 String (preCoordinate/2076037668 var1294)) ; Statement: $r4 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String preCoordinate> 
 ; Statement: if $r4 != null goto $r5 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> 
(assert (not (not (= var932 null-String)))) ; Negate: Cond: $r4 != null  
(define-const var2696 String (String_valueOf/-371898945 64)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(64) 
(declare-const var1294!1 var382)
(assert (not (= var1294!1 null-var382)))
(assert (= (preCoordinate/2076037668 var1294!1) var2696)) ; Statement: r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String preCoordinate> = $r8 
 ; Statement: goto [?= r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> = r2] 
(assert true) ; Non Conditional
(declare-const var1294!2 var382)
(assert (not (= var1294!2 null-var382)))
(assert (= (curCoordinate/2076037668 var1294!2) var2198)) ; Statement: r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> = r2 
(assert true)
;(assert (setCellType/1458437913 var1294!2 var946)) ; Statement: specialinvoke r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: void setCellType(org.xml.sax.Attributes)>(r0) 

(declare-const var1294!3 var382)
(declare-const var946!1 var2175)
(define-const var2597 var1720 (lastContent/2076037668 var1294!3)) ; Statement: $r6 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: cn.hutool.core.text.StrBuilder lastContent> 
(assert true)
;(assert (reset/-1286715992 var2597)) ; Statement: virtualinvoke $r6.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder reset()>() 

(declare-const var2597!1 var1720)
(define-const var3524 var1720 (lastFormula/2076037668 var1294!3)) ; Statement: $r7 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: cn.hutool.core.text.StrBuilder lastFormula> 
(assert true)
;(assert (reset/-1286715992 var3524)) ; Statement: virtualinvoke $r7.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder reset()>() 

(declare-const var3524!1 var1720)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/379500303=([cn.hutool.poi.excel.sax.AttributeName, org.xml.sax.Attributes], java.lang.String), preCoordinate/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], java.lang.String), String_valueOf/-371898945=([char], java.lang.String), curCoordinate/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], java.lang.String), setCellType/1458437913=([cn.hutool.poi.excel.sax.SheetDataSaxHandler, org.xml.sax.Attributes], void), lastContent/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], cn.hutool.core.text.StrBuilder), reset/-1286715992=([cn.hutool.core.text.StrBuilder], cn.hutool.core.text.StrBuilder), lastFormula/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], cn.hutool.core.text.StrBuilder)}
; {var382=cn.hutool.poi.excel.sax.SheetDataSaxHandler, var1294=r3, var2175=org.xml.sax.Attributes, var946=r0, var2135=cn.hutool.poi.excel.sax.AttributeName, var579=$r1, var2198=r2, var932=$r4, var2167=null_type, var2696=$r8, var1720=cn.hutool.core.text.StrBuilder, var2597=$r6, var3524=$r7}
; {cn.hutool.poi.excel.sax.SheetDataSaxHandler=var382, r3=var1294, org.xml.sax.Attributes=var2175, r0=var946, cn.hutool.poi.excel.sax.AttributeName=var2135, $r1=var579, r2=var2198, $r4=var932, null_type=var2167, $r8=var2696, cn.hutool.core.text.StrBuilder=var1720, $r6=var2597, $r7=var3524}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r3 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler;	r0 := @parameter0: org.xml.sax.Attributes;	$r1 = <cn.hutool.poi.excel.sax.AttributeName: cn.hutool.poi.excel.sax.AttributeName r>;	r2 = virtualinvoke $r1.<cn.hutool.poi.excel.sax.AttributeName: java.lang.String getValue(org.xml.sax.Attributes)>(r0);	$r4 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String preCoordinate>;	if $r4 != null goto $r5 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate>;	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(64);	r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String preCoordinate> = $r8;	goto [?= r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> = r2];	r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> = r2;	specialinvoke r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: void setCellType(org.xml.sax.Attributes)>(r0);	$r6 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: cn.hutool.core.text.StrBuilder lastContent>;	virtualinvoke $r6.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder reset()>();	$r7 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: cn.hutool.core.text.StrBuilder lastFormula>;	virtualinvoke $r7.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder reset()>();	return
;block_num 3