(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var956 0)
(declare-sort var1280 0)
(declare-sort var864 0)
(declare-sort var3068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _level/1672305327 (var956) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1280_selectPath/683463163 (var1280 String) (Array Int var864))
(declare-fun getLength-Arr-var864-1 ((Array Int var864)) Int)
(declare-fun cast-from-var864-to-var3068 (var864) var3068)
(declare-fun fetch/846958560 (var956 var3068) Bool)
(declare-const null-var956 var956)
(declare-const null-var1280 var1280)
(declare-const var679 var956) ; Statement: r2 := @this: org.apache.poi.xssf.model.ParagraphPropertyFetcher 
(assert (not (= var679 null-var956)))
(declare-const var2305 var1280) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape 
(assert (not (= var2305 null-var1280)))
(define-const var3789 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3789)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3789!1 String)
(assert (= var3789!1 ""))
(assert true)
(define-const var3783 String (append/672562846 var3789!1 "declare namespace xdr=\u0027http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\u0027 declare namespace a=\u0027http://schemas.openxmlformats.org/drawingml/2006/main\u0027 .//xdr:txBody/a:lstStyle/a:lvl")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("declare namespace xdr=\'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//xdr:txBody/a:lstStyle/a:lvl") 
(declare-const var3789!2 String)
(assert (= var3789!2 (str.++ var3789!1 "declare namespace xdr=\u0027http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\u0027 declare namespace a=\u0027http://schemas.openxmlformats.org/drawingml/2006/main\u0027 .//xdr:txBody/a:lstStyle/a:lvl")))
(define-const var731 Int (_level/1672305327 var679)) ; Statement: $i0 = r2.<org.apache.poi.xssf.model.ParagraphPropertyFetcher: int _level> 
(define-const var1119 Int (+ var731 1)) ; Statement: $i1 = $i0 + 1 
(assert true)
(define-const var3633 String (append/-1001720160 var3783 var1119)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3783!1 String)
(assert (str.prefixof var3783 var3783!1))
(assert true)
(define-const var692 String (append/672562846 var3633 "pPr")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pPr") 
(declare-const var3633!1 String)
(assert (= var3633!1 (str.++ var3633 "pPr")))
(assert true)
(define-const var2793 String (toString/-2075883882 var692)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3283 (Array Int var864) (var1280_selectPath/683463163 var2305 var2793)) ; Statement: r7 = interfaceinvoke r0.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape: org.apache.xmlbeans.XmlObject[] selectPath(java.lang.String)>($r6) 
(define-const var1284 Int (getLength-Arr-var864-1 var3283)) ; Statement: $i2 = lengthof r7 
 ; Statement: if $i2 != 1 goto return 0 
(assert (not (not (= var1284 1)))) ; Negate: Cond: $i2 != 1  
(define-const var3308 var864 (select var3283 0)) ; Statement: $r8 = r7[0] 
(define-const var1263 var3068 (cast-from-var864-to-var3068 var3308)) ; Statement: r9 = (org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties) $r8 
(assert true)
(define-const var3117 Bool (fetch/846958560 var679 var1263)) ; Statement: $z0 = virtualinvoke r2.<org.apache.poi.xssf.model.ParagraphPropertyFetcher: boolean fetch(org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties)>(r9) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), _level/1672305327=([org.apache.poi.xssf.model.ParagraphPropertyFetcher], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1280_selectPath/683463163=([org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape, java.lang.String], org.apache.xmlbeans.XmlObject[]), getLength-Arr-var864-1=([org.apache.xmlbeans.XmlObject[]], int), cast-from-var864-to-var3068=([org.apache.xmlbeans.XmlObject], org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties), fetch/846958560=([org.apache.poi.xssf.model.ParagraphPropertyFetcher, org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties], boolean)}
; {var956=org.apache.poi.xssf.model.ParagraphPropertyFetcher, var679=r2, var1280=org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape, var2305=r0, var3789=$r1, var3783=$r3, var731=$i0, var1119=$i1, var3633=$r4, var692=$r5, var2793=$r6, var864=org.apache.xmlbeans.XmlObject, var3283=r7, var1284=$i2, var3308=$r8, var3068=org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties, var1263=r9, var3117=$z0}
; {org.apache.poi.xssf.model.ParagraphPropertyFetcher=var956, r2=var679, org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape=var1280, r0=var2305, $r1=var3789, $r3=var3783, $i0=var731, $i1=var1119, $r4=var3633, $r5=var692, $r6=var2793, org.apache.xmlbeans.XmlObject=var864, r7=var3283, $i2=var1284, $r8=var3308, org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties=var3068, r9=var1263, $z0=var3117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.model.ParagraphPropertyFetcher;	r0 := @parameter0: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("declare namespace xdr=\'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//xdr:txBody/a:lstStyle/a:lvl");	$i0 = r2.<org.apache.poi.xssf.model.ParagraphPropertyFetcher: int _level>;	$i1 = $i0 + 1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pPr");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r7 = interfaceinvoke r0.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape: org.apache.xmlbeans.XmlObject[] selectPath(java.lang.String)>($r6);	$i2 = lengthof r7;	if $i2 != 1 goto return 0;	$r8 = r7[0];	r9 = (org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties) $r8;	$z0 = virtualinvoke r2.<org.apache.poi.xssf.model.ParagraphPropertyFetcher: boolean fetch(org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties)>(r9);	return $z0
;block_num 2