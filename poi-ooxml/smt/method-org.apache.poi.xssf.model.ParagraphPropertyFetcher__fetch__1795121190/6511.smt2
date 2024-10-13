(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var183 0)
(declare-sort var2208 0)
(declare-sort var3474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _level/1672305327 (var183) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2208_selectPath/683463163 (var2208 String) (Array Int var3474))
(declare-fun getLength-Arr-var3474-1 ((Array Int var3474)) Int)
(declare-const null-var183 var183)
(declare-const null-var2208 var2208)
(declare-const var415 var183) ; Statement: r2 := @this: org.apache.poi.xssf.model.ParagraphPropertyFetcher 
(assert (not (= var415 null-var183)))
(declare-const var2553 var2208) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape 
(assert (not (= var2553 null-var2208)))
(define-const var2011 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2011)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2011!1 String)
(assert (= var2011!1 ""))
(assert true)
(define-const var1175 String (append/672562846 var2011!1 "declare namespace xdr=\u0027http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\u0027 declare namespace a=\u0027http://schemas.openxmlformats.org/drawingml/2006/main\u0027 .//xdr:txBody/a:lstStyle/a:lvl")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("declare namespace xdr=\'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//xdr:txBody/a:lstStyle/a:lvl") 
(declare-const var2011!2 String)
(assert (= var2011!2 (str.++ var2011!1 "declare namespace xdr=\u0027http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\u0027 declare namespace a=\u0027http://schemas.openxmlformats.org/drawingml/2006/main\u0027 .//xdr:txBody/a:lstStyle/a:lvl")))
(define-const var61 Int (_level/1672305327 var415)) ; Statement: $i0 = r2.<org.apache.poi.xssf.model.ParagraphPropertyFetcher: int _level> 
(define-const var832 Int (+ var61 1)) ; Statement: $i1 = $i0 + 1 
(assert true)
(define-const var3216 String (append/-1001720160 var1175 var832)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1175!1 String)
(assert (str.prefixof var1175 var1175!1))
(assert true)
(define-const var3767 String (append/672562846 var3216 "pPr")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pPr") 
(declare-const var3216!1 String)
(assert (= var3216!1 (str.++ var3216 "pPr")))
(assert true)
(define-const var232 String (toString/-2075883882 var3767)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2904 (Array Int var3474) (var2208_selectPath/683463163 var2553 var232)) ; Statement: r7 = interfaceinvoke r0.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape: org.apache.xmlbeans.XmlObject[] selectPath(java.lang.String)>($r6) 
(define-const var2522 Int (getLength-Arr-var3474-1 var2904)) ; Statement: $i2 = lengthof r7 
 ; Statement: if $i2 != 1 goto return 0 
(assert (not (= var2522 1))) ; Cond: $i2 != 1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), _level/1672305327=([org.apache.poi.xssf.model.ParagraphPropertyFetcher], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2208_selectPath/683463163=([org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape, java.lang.String], org.apache.xmlbeans.XmlObject[]), getLength-Arr-var3474-1=([org.apache.xmlbeans.XmlObject[]], int)}
; {var183=org.apache.poi.xssf.model.ParagraphPropertyFetcher, var415=r2, var2208=org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape, var2553=r0, var2011=$r1, var1175=$r3, var61=$i0, var832=$i1, var3216=$r4, var3767=$r5, var232=$r6, var3474=org.apache.xmlbeans.XmlObject, var2904=r7, var2522=$i2}
; {org.apache.poi.xssf.model.ParagraphPropertyFetcher=var183, r2=var415, org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape=var2208, r0=var2553, $r1=var2011, $r3=var1175, $i0=var61, $i1=var832, $r4=var3216, $r5=var3767, $r6=var232, org.apache.xmlbeans.XmlObject=var3474, r7=var2904, $i2=var2522}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.model.ParagraphPropertyFetcher;	r0 := @parameter0: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("declare namespace xdr=\'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//xdr:txBody/a:lstStyle/a:lvl");	$i0 = r2.<org.apache.poi.xssf.model.ParagraphPropertyFetcher: int _level>;	$i1 = $i0 + 1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pPr");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r7 = interfaceinvoke r0.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape: org.apache.xmlbeans.XmlObject[] selectPath(java.lang.String)>($r6);	$i2 = lengthof r7;	if $i2 != 1 goto return 0;	return 0
;block_num 2