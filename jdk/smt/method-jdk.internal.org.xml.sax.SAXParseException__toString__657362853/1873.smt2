(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2909 0)
(declare-sort var1944 0)
(declare-sort var2410 0)
(declare-sort var3738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getClass/1258963082 (var1944) ClassObject)
(declare-fun cast-from-var2909-to-var1944 (var2909) var1944)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getLocalizedMessage/361048096 (var2410) String)
(declare-fun cast-from-var2909-to-var2410 (var2909) var2410)
(declare-fun publicId/780192205 (var2909) String)
(declare-fun systemId/780192205 (var2909) String)
(declare-fun lineNumber/780192205 (var2909) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun columnNumber/780192205 (var2909) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2909 var2909)
(declare-const null-String String)
(declare-const var506 var2909) ; Statement: r1 := @this: jdk.internal.org.xml.sax.SAXParseException 
(assert (not (= var506 null-var2909)))
(define-const var2579 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
(define-const var1734 ClassObject (getClass/1258963082 (cast-from-var2909-to-var1944 var506))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3575 String (getName/-1958580599 var1734)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var2579 var3575)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var2579!1 String)
(assert (= var2579!1 var3575))
(assert true)
(define-const var1248 String (getLocalizedMessage/361048096 (cast-from-var2909-to-var2410 var506))) ; Statement: r4 = virtualinvoke r1.<jdk.internal.org.xml.sax.SAXParseException: java.lang.String getLocalizedMessage()>() 
(define-const var3615 String (publicId/780192205 var506)) ; Statement: $r5 = r1.<jdk.internal.org.xml.sax.SAXParseException: java.lang.String publicId> 
 ; Statement: if $r5 == null goto $r6 = r1.<jdk.internal.org.xml.sax.SAXParseException: java.lang.String systemId> 
(assert (= var3615 null-String)) ; Cond: $r5 == null 
(define-const var688 String (systemId/780192205 var506)) ; Statement: $r6 = r1.<jdk.internal.org.xml.sax.SAXParseException: java.lang.String systemId> 
 ; Statement: if $r6 == null goto $i0 = r1.<jdk.internal.org.xml.sax.SAXParseException: int lineNumber> 
(assert (= var688 null-String)) ; Cond: $r6 == null 
(define-const var1344 Int (lineNumber/780192205 var506)) ; Statement: $i0 = r1.<jdk.internal.org.xml.sax.SAXParseException: int lineNumber> 
(define-const var3891 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $i1 = r1.<jdk.internal.org.xml.sax.SAXParseException: int columnNumber> 
(assert (= var1344 var3891)) ; Cond: $i0 == $i5 
(define-const var498 Int (columnNumber/780192205 var506)) ; Statement: $i1 = r1.<jdk.internal.org.xml.sax.SAXParseException: int columnNumber> 
(define-const var3333 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto (branch) 
(assert (= var498 var3333)) ; Cond: $i1 == $i7 
 ; Statement: if r4 == null goto $r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1248 null-String)) ; Cond: r4 == null 
(assert true)
(define-const var2430 String (toString/-2075883882 var2579!1)) ; Statement: $r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2909-to-var1944=([jdk.internal.org.xml.sax.SAXParseException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getLocalizedMessage/361048096=([java.lang.Throwable], java.lang.String), cast-from-var2909-to-var2410=([jdk.internal.org.xml.sax.SAXParseException], java.lang.Throwable), publicId/780192205=([jdk.internal.org.xml.sax.SAXParseException], java.lang.String), systemId/780192205=([jdk.internal.org.xml.sax.SAXParseException], java.lang.String), lineNumber/780192205=([jdk.internal.org.xml.sax.SAXParseException], int), cast-from-Int-to-Int=([int], int), columnNumber/780192205=([jdk.internal.org.xml.sax.SAXParseException], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2909=jdk.internal.org.xml.sax.SAXParseException, var506=r1, var2579=$r15, var1944=java.lang.Object, var1734=$r2, var3575=$r3, var2410=java.lang.Throwable, var1248=r4, var3615=$r5, var3738=null_type, var688=$r6, var1344=$i0, var3891=$i5, var498=$i1, var3333=$i7, var2430=$r7}
; {jdk.internal.org.xml.sax.SAXParseException=var2909, r1=var506, $r15=var2579, java.lang.Object=var1944, $r2=var1734, $r3=var3575, java.lang.Throwable=var2410, r4=var1248, $r5=var3615, null_type=var3738, $r6=var688, $i0=var1344, $i5=var3891, $i1=var498, $i7=var3333, $r7=var2430}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.xml.sax.SAXParseException;	$r15 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	specialinvoke $r15.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	r4 = virtualinvoke r1.<jdk.internal.org.xml.sax.SAXParseException: java.lang.String getLocalizedMessage()>();	$r5 = r1.<jdk.internal.org.xml.sax.SAXParseException: java.lang.String publicId>;	if $r5 == null goto $r6 = r1.<jdk.internal.org.xml.sax.SAXParseException: java.lang.String systemId>;	$r6 = r1.<jdk.internal.org.xml.sax.SAXParseException: java.lang.String systemId>;	if $r6 == null goto $i0 = r1.<jdk.internal.org.xml.sax.SAXParseException: int lineNumber>;	$i0 = r1.<jdk.internal.org.xml.sax.SAXParseException: int lineNumber>;	$i5 = (int) -1;	if $i0 == $i5 goto $i1 = r1.<jdk.internal.org.xml.sax.SAXParseException: int columnNumber>;	$i1 = r1.<jdk.internal.org.xml.sax.SAXParseException: int columnNumber>;	$i7 = (int) -1;	if $i1 == $i7 goto (branch);	if r4 == null goto $r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 6