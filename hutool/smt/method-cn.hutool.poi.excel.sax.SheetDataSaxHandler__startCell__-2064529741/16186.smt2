(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort var1967 0)
(declare-sort var680 0)
(declare-sort var1985 0)
(declare-sort var1170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/379500303 (var680 var1967) String)
(declare-fun preCoordinate/2076037668 (var2932) String)
(declare-fun curCoordinate/2076037668 (var2932) String)
(declare-fun setCellType/1458437913 (var2932 var1967) void)
(declare-fun lastContent/2076037668 (var2932) var1170)
(declare-fun reset/-1286715992 (var1170) var1170)
(declare-fun lastFormula/2076037668 (var2932) var1170)
(declare-const null-var2932 var2932)
(declare-const null-var1967 var1967)
(declare-const var680-r var680)
(declare-const null-String String)
(declare-const var992 var2932) ; Statement: r3 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler 
(assert (not (= var992 null-var2932)))
(declare-const var3434 var1967) ; Statement: r0 := @parameter0: org.xml.sax.Attributes 
(assert (not (= var3434 null-var1967)))
(define-const var1461 var680 var680-r) ; Statement: $r1 = <cn.hutool.poi.excel.sax.AttributeName: cn.hutool.poi.excel.sax.AttributeName r> 
(assert true)
(define-const var3615 String (getValue/379500303 var1461 var3434)) ; Statement: r2 = virtualinvoke $r1.<cn.hutool.poi.excel.sax.AttributeName: java.lang.String getValue(org.xml.sax.Attributes)>(r0) 
(define-const var2012 String (preCoordinate/2076037668 var992)) ; Statement: $r4 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String preCoordinate> 
 ; Statement: if $r4 != null goto $r5 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> 
(assert (not (= var2012 null-String))) ; Cond: $r4 != null 
(define-const var3886 String (curCoordinate/2076037668 var992)) ; Statement: $r5 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> 
(declare-const var992!1 var2932)
(assert (not (= var992!1 null-var2932)))
(assert (= (preCoordinate/2076037668 var992!1) var3886)) ; Statement: r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String preCoordinate> = $r5 
(assert true) ; Non Conditional
(declare-const var992!2 var2932)
(assert (not (= var992!2 null-var2932)))
(assert (= (curCoordinate/2076037668 var992!2) var3615)) ; Statement: r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> = r2 
(assert true)
;(assert (setCellType/1458437913 var992!2 var3434)) ; Statement: specialinvoke r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: void setCellType(org.xml.sax.Attributes)>(r0) 

(declare-const var992!3 var2932)
(declare-const var3434!1 var1967)
(define-const var3779 var1170 (lastContent/2076037668 var992!3)) ; Statement: $r6 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: cn.hutool.core.text.StrBuilder lastContent> 
(assert true)
;(assert (reset/-1286715992 var3779)) ; Statement: virtualinvoke $r6.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder reset()>() 

(declare-const var3779!1 var1170)
(define-const var2422 var1170 (lastFormula/2076037668 var992!3)) ; Statement: $r7 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: cn.hutool.core.text.StrBuilder lastFormula> 
(assert true)
;(assert (reset/-1286715992 var2422)) ; Statement: virtualinvoke $r7.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder reset()>() 

(declare-const var2422!1 var1170)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/379500303=([cn.hutool.poi.excel.sax.AttributeName, org.xml.sax.Attributes], java.lang.String), preCoordinate/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], java.lang.String), curCoordinate/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], java.lang.String), setCellType/1458437913=([cn.hutool.poi.excel.sax.SheetDataSaxHandler, org.xml.sax.Attributes], void), lastContent/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], cn.hutool.core.text.StrBuilder), reset/-1286715992=([cn.hutool.core.text.StrBuilder], cn.hutool.core.text.StrBuilder), lastFormula/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], cn.hutool.core.text.StrBuilder)}
; {var2932=cn.hutool.poi.excel.sax.SheetDataSaxHandler, var992=r3, var1967=org.xml.sax.Attributes, var3434=r0, var680=cn.hutool.poi.excel.sax.AttributeName, var1461=$r1, var3615=r2, var2012=$r4, var1985=null_type, var3886=$r5, var1170=cn.hutool.core.text.StrBuilder, var3779=$r6, var2422=$r7}
; {cn.hutool.poi.excel.sax.SheetDataSaxHandler=var2932, r3=var992, org.xml.sax.Attributes=var1967, r0=var3434, cn.hutool.poi.excel.sax.AttributeName=var680, $r1=var1461, r2=var3615, $r4=var2012, null_type=var1985, $r5=var3886, cn.hutool.core.text.StrBuilder=var1170, $r6=var3779, $r7=var2422}
;seq 
;cnt {}
;stmts r3 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler;	r0 := @parameter0: org.xml.sax.Attributes;	$r1 = <cn.hutool.poi.excel.sax.AttributeName: cn.hutool.poi.excel.sax.AttributeName r>;	r2 = virtualinvoke $r1.<cn.hutool.poi.excel.sax.AttributeName: java.lang.String getValue(org.xml.sax.Attributes)>(r0);	$r4 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String preCoordinate>;	if $r4 != null goto $r5 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate>;	$r5 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate>;	r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String preCoordinate> = $r5;	r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: java.lang.String curCoordinate> = r2;	specialinvoke r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: void setCellType(org.xml.sax.Attributes)>(r0);	$r6 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: cn.hutool.core.text.StrBuilder lastContent>;	virtualinvoke $r6.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder reset()>();	$r7 = r3.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: cn.hutool.core.text.StrBuilder lastFormula>;	virtualinvoke $r7.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder reset()>();	return
;block_num 3