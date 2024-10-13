(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3373 0)
(declare-sort var786 0)
(declare-sort var2515 0)
(declare-sort var1602 0)
(declare-sort var3606 0)
(declare-sort var107 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLineNumber/1890756870 (var786) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun getColumnNumber/2042233444 (var786) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2515_warn/241933037 (String) void)
(declare-fun getMessage/-2074868419 (var1602) String)
(declare-fun cast-from-var786-to-var1602 (var786) var1602)
(declare-fun getException/-28694477 (var1602) var3606)
(declare-fun var2515_warn/-1468683859 (String var107) void)
(declare-fun cast-from-var3606-to-var107 (var3606) var107)
(declare-const null-String String)
(declare-const null-var786 var786)
(declare-const var1682 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1682 null-String)))
(declare-const var3405 var786) ; Statement: r2 := @parameter1: org.xml.sax.SAXParseException 
(assert (not (= var3405 null-var786)))
(define-const var3783 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3783)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3783!1 String)
(assert true)
(define-const var283 String (append/1560614132 var3783!1 var1682)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3783!2 String)
(assert (str.prefixof var3783!1 var3783!2))
(assert true)
(define-const var1992 Int (getLineNumber/1890756870 var3405)) ; Statement: $i0 = virtualinvoke r2.<org.xml.sax.SAXParseException: int getLineNumber()>() 
(assert true)
(define-const var688 String (append/1845021834 var283 var1992)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
(define-const var445 String (append/1560614132 var688 " and column ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" and column ") 
(declare-const var688!1 String)
(assert (str.prefixof var688 var688!1))
(assert true)
(define-const var2304 Int (getColumnNumber/2042233444 var3405)) ; Statement: $i1 = virtualinvoke r2.<org.xml.sax.SAXParseException: int getColumnNumber()>() 
(assert true)
(define-const var1751 String (append/1845021834 var445 var2304)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var2444 String (toString/-222306083 var1751)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2515_warn/241933037 var2444)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r7) 

(declare-const var2444!1 String)
(assert true)
(define-const var534 String (getMessage/-2074868419 (cast-from-var786-to-var1602 var3405))) ; Statement: $r9 = virtualinvoke r2.<org.xml.sax.SAXParseException: java.lang.String getMessage()>() 
(assert true)
(define-const var2275 var3606 (getException/-28694477 (cast-from-var786-to-var1602 var3405))) ; Statement: $r8 = virtualinvoke r2.<org.xml.sax.SAXParseException: java.lang.Exception getException()>() 
;(assert (var2515_warn/-1468683859 var534 (cast-from-var3606-to-var107 var2275))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String,java.lang.Throwable)>($r9, $r8) 

(declare-const var534!1 String)
(declare-const var2275!1 var3606)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLineNumber/1890756870=([org.xml.sax.SAXParseException], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), getColumnNumber/2042233444=([org.xml.sax.SAXParseException], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2515_warn/241933037=([java.lang.String], void), getMessage/-2074868419=([org.xml.sax.SAXException], java.lang.String), cast-from-var786-to-var1602=([org.xml.sax.SAXParseException], org.xml.sax.SAXException), getException/-28694477=([org.xml.sax.SAXException], java.lang.Exception), var2515_warn/-1468683859=([java.lang.String, java.lang.Throwable], void), cast-from-var3606-to-var107=([java.lang.Exception], java.lang.Throwable)}
; {var1682=r1, var3373=null_type, var786=org.xml.sax.SAXParseException, var3405=r2, var3783=$r0, var283=$r3, var1992=$i0, var688=$r4, var445=$r5, var2304=$i1, var1751=$r6, var2444=$r7, var2515=org.apache.log4j.helpers.LogLog, var1602=org.xml.sax.SAXException, var534=$r9, var3606=java.lang.Exception, var2275=$r8, var107=java.lang.Throwable}
; {r1=var1682, null_type=var3373, org.xml.sax.SAXParseException=var786, r2=var3405, $r0=var3783, $r3=var283, $i0=var1992, $r4=var688, $r5=var445, $i1=var2304, $r6=var1751, $r7=var2444, org.apache.log4j.helpers.LogLog=var2515, org.xml.sax.SAXException=var1602, $r9=var534, java.lang.Exception=var3606, $r8=var2275, java.lang.Throwable=var107}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.xml.sax.SAXParseException;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<org.xml.sax.SAXParseException: int getLineNumber()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" and column ");	$i1 = virtualinvoke r2.<org.xml.sax.SAXParseException: int getColumnNumber()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r7);	$r9 = virtualinvoke r2.<org.xml.sax.SAXParseException: java.lang.String getMessage()>();	$r8 = virtualinvoke r2.<org.xml.sax.SAXParseException: java.lang.Exception getException()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String,java.lang.Throwable)>($r9, $r8);	return
;block_num 1