(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var909 0)
(declare-sort var1623 0)
(declare-sort var3536 0)
(declare-sort var1844 0)
(declare-sort var1344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1623-init () var1623)
(declare-fun <init>/-325640736 (var1623) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3536_getName/-1542331349 (var3536) var1344)
(declare-fun getNamespaceURI/95022253 (var1344) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var909_selectPath/-868375815 (var909 String) (Array Int var909))
(declare-fun getLength-Arr-var909-1 ((Array Int var909)) Int)
(declare-const null-var335 var335)
(declare-const null-var909 var909)
(declare-const var1844-type var3536)
(declare-const var685 var335) ; Statement: r18 := @this: org.apache.poi.xwpf.usermodel.XWPFRun 
(assert (not (= var685 null-var335)))
(declare-const var991 var909) ; Statement: r1 := @parameter0: org.apache.xmlbeans.XmlObject 
(assert (not (= var991 null-var909)))
(define-const var1178 var1623 var1623-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1178)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var1178!1 var1623)
(define-const var3261 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3261)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3261!1 String)
(assert (= var3261!1 ""))
(assert true)
(define-const var689 String (append/672562846 var3261!1 "declare namespace pic=\u0027")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("declare namespace pic=\'") 
(declare-const var3261!2 String)
(assert (= var3261!2 (str.++ var3261!1 "declare namespace pic=\u0027")))
(define-const var2722 var3536 var1844-type) ; Statement: $r3 = <org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture: org.apache.xmlbeans.SchemaType type> 
(define-const var2581 var1344 (var3536_getName/-1542331349 var2722)) ; Statement: $r4 = interfaceinvoke $r3.<org.apache.xmlbeans.SchemaType: javax.xml.namespace.QName getName()>() 
(assert true)
(define-const var523 String (getNamespaceURI/95022253 var2581)) ; Statement: $r5 = virtualinvoke $r4.<javax.xml.namespace.QName: java.lang.String getNamespaceURI()>() 
(assert true)
(define-const var2439 String (append/672562846 var689 var523)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var689!1 String)
(assert (= var689!1 (str.++ var689 var523)))
(assert true)
(define-const var338 String (append/672562846 var2439 "\u0027 .//pic:pic")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' .//pic:pic") 
(declare-const var2439!1 String)
(assert (= var2439!1 (str.++ var2439 "\u0027 .//pic:pic")))
(assert true)
(define-const var2040 String (toString/-2075883882 var338)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1729 (Array Int var909) (var909_selectPath/-868375815 var991 var2040)) ; Statement: r10 = interfaceinvoke r1.<org.apache.xmlbeans.XmlObject: org.apache.xmlbeans.XmlObject[] selectPath(java.lang.String)>($r9) 
(define-const var421 Int (getLength-Arr-var909-1 var1729)) ; Statement: i0 = lengthof r10 
(define-const var3880 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var3880 var421)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1623-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3536_getName/-1542331349=([org.apache.xmlbeans.SchemaType], javax.xml.namespace.QName), getNamespaceURI/95022253=([javax.xml.namespace.QName], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var909_selectPath/-868375815=([org.apache.xmlbeans.XmlObject, java.lang.String], org.apache.xmlbeans.XmlObject[]), getLength-Arr-var909-1=([org.apache.xmlbeans.XmlObject[]], int)}
; {var335=org.apache.poi.xwpf.usermodel.XWPFRun, var685=r18, var909=org.apache.xmlbeans.XmlObject, var991=r1, var1623=java.util.ArrayList, var1178=$r0, var3261=$r2, var689=$r6, var3536=org.apache.xmlbeans.SchemaType, var1844=org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture, var2722=$r3, var1344=javax.xml.namespace.QName, var2581=$r4, var523=$r5, var2439=$r7, var338=$r8, var2040=$r9, var1729=r10, var421=i0, var3880=i1}
; {org.apache.poi.xwpf.usermodel.XWPFRun=var335, r18=var685, org.apache.xmlbeans.XmlObject=var909, r1=var991, java.util.ArrayList=var1623, $r0=var1178, $r2=var3261, $r6=var689, org.apache.xmlbeans.SchemaType=var3536, org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture=var1844, $r3=var2722, javax.xml.namespace.QName=var1344, $r4=var2581, $r5=var523, $r7=var2439, $r8=var338, $r9=var2040, r10=var1729, i0=var421, i1=var3880}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: org.apache.poi.xwpf.usermodel.XWPFRun;	r1 := @parameter0: org.apache.xmlbeans.XmlObject;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("declare namespace pic=\'");	$r3 = <org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture: org.apache.xmlbeans.SchemaType type>;	$r4 = interfaceinvoke $r3.<org.apache.xmlbeans.SchemaType: javax.xml.namespace.QName getName()>();	$r5 = virtualinvoke $r4.<javax.xml.namespace.QName: java.lang.String getNamespaceURI()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' .//pic:pic");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = interfaceinvoke r1.<org.apache.xmlbeans.XmlObject: org.apache.xmlbeans.XmlObject[] selectPath(java.lang.String)>($r9);	i0 = lengthof r10;	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3