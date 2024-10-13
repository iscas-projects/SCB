(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3654 0)
(declare-sort var208 0)
(declare-sort var2227 0)
(declare-sort var2701 0)
(declare-sort var1314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getClass/1258963082 (var208) ClassObject)
(declare-fun cast-from-var3654-to-var208 (var3654) var208)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(declare-fun getSystemId/707413421 (var2227) String)
(declare-fun cast-from-var3654-to-var2227 (var3654) var2227)
(declare-fun getPublicId/1162484147 (var2227) String)
(declare-fun getLineNumber/1890756870 (var2227) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLocalizedMessage/361048096 (var1314) String)
(declare-fun cast-from-var3654-to-var1314 (var3654) var1314)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3654 var3654)
(declare-const null-String String)
(declare-const var3957 var3654) ; Statement: r1 := @this: freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(assert (not (= var3957 null-var3654)))
(define-const var142 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
(define-const var3711 ClassObject (getClass/1258963082 (cast-from-var3654-to-var208 var3957))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1669 String (getName/-1958580599 var3711)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var142 var1669)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var142!1 String)
(assert (= var142!1 var1669))
(assert true)
;(assert (append/672562846 var142!1 ": ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var142!2 String)
(assert (= var142!2 (str.++ var142!1 ": ")))
(assert true)
(define-const var2807 Int (length/-171891354 var142!2)) ; Statement: i0 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var435 String (getSystemId/707413421 (cast-from-var3654-to-var2227 var3957))) ; Statement: r4 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: java.lang.String getSystemId()>() 
(assert true)
(define-const var1478 String (getPublicId/1162484147 (cast-from-var3654-to-var2227 var3957))) ; Statement: r5 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: java.lang.String getPublicId()>() 
 ; Statement: if r4 != null goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("In ") 
(assert (not (not (= var435 null-String)))) ; Negate: Cond: r4 != null  
 ; Statement: if r5 == null goto $i4 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: int getLineNumber()>() 
(assert (= var1478 null-String)) ; Cond: r5 == null 
(assert true)
(define-const var3963 Int (getLineNumber/1890756870 (cast-from-var3654-to-var2227 var3957))) ; Statement: $i4 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: int getLineNumber()>() 
(define-const var569 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i4 == $i6 goto $r7 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: java.lang.String getLocalizedMessage()>() 
(assert (= var3963 var569)) ; Cond: $i4 == $i6 
(assert true)
(define-const var563 String (getLocalizedMessage/361048096 (cast-from-var3654-to-var1314 var3957))) ; Statement: $r7 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: java.lang.String getLocalizedMessage()>() 
 ; Statement: if $r7 == null goto $r8 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var563 null-String)) ; Cond: $r7 == null 
(assert true)
(define-const var68 String (toString/-2075883882 var142!2)) ; Statement: $r8 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3654-to-var208=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), getSystemId/707413421=([org.xml.sax.SAXParseException], java.lang.String), cast-from-var3654-to-var2227=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException], org.xml.sax.SAXParseException), getPublicId/1162484147=([org.xml.sax.SAXParseException], java.lang.String), getLineNumber/1890756870=([org.xml.sax.SAXParseException], int), cast-from-Int-to-Int=([int], int), getLocalizedMessage/361048096=([java.lang.Throwable], java.lang.String), cast-from-var3654-to-var1314=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3654=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var3957=r1, var142=$r9, var208=java.lang.Object, var3711=$r2, var1669=$r3, var2807=i0, var2227=org.xml.sax.SAXParseException, var435=r4, var1478=r5, var2701=null_type, var3963=$i4, var569=$i6, var1314=java.lang.Throwable, var563=$r7, var68=$r8}
; {freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var3654, r1=var3957, $r9=var142, java.lang.Object=var208, $r2=var3711, $r3=var1669, i0=var2807, org.xml.sax.SAXParseException=var2227, r4=var435, r5=var1478, null_type=var2701, $i4=var3963, $i6=var569, java.lang.Throwable=var1314, $r7=var563, $r8=var68}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r9 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	i0 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>();	r4 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: java.lang.String getSystemId()>();	r5 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: java.lang.String getPublicId()>();	if r4 != null goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("In ");	if r5 == null goto $i4 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: int getLineNumber()>();	$i4 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: int getLineNumber()>();	$i6 = (int) -1;	if $i4 == $i6 goto $r7 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: java.lang.String getLocalizedMessage()>();	$r7 = virtualinvoke r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: java.lang.String getLocalizedMessage()>();	if $r7 == null goto $r8 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5