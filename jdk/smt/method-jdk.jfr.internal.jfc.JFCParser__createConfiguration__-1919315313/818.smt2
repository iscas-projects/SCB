(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2594 0)
(declare-sort var1194 0)
(declare-sort var3752 0)
(declare-sort var2962 0)
(declare-sort var711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1194-init () var1194)
(declare-fun var2962-init () var2962)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/834955289 (var3752) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/1495607482 (var2962 String Int) void)
(declare-fun initCause/2003336360 (var711 var711) var711)
(declare-fun cast-from-var2962-to-var711 (var2962) var711)
(declare-fun cast-from-var3752-to-var711 (var3752) var711)
(declare-const null-String String)
(declare-const null-var3752 var3752)
(declare-const var3069 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3069 null-String)))
(declare-const var2023 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2023 null-String)))
(define-const var3619 var1194 var1194-init) ; Statement: $r19 = new jdk.jfr.internal.jfc.JFCParserHandler 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3243 var3752) ; Statement: $r9 := @caughtexception 
(assert (not (= var3243 null-var3752)))
(define-const var2586 var2962 var2962-init) ; Statement: $r22 = new java.text.ParseException 
(define-const var1359 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1359)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1359!1 String)
(assert (= var1359!1 ""))
(assert true)
(define-const var113 String (append/672562846 var1359!1 "Error reading JFC file. ")) ; Statement: $r13 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error reading JFC file. ") 
(declare-const var1359!2 String)
(assert (= var1359!2 (str.++ var1359!1 "Error reading JFC file. ")))
(assert true)
(define-const var1750 String (getMessage/834955289 var3243)) ; Statement: $r12 = virtualinvoke $r9.<jdk.internal.org.xml.sax.SAXException: java.lang.String getMessage()>() 
(assert true)
(define-const var146 String (append/672562846 var113 var1750)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var113!1 String)
(assert (= var113!1 (str.++ var113 var1750)))
(assert true)
(define-const var1913 String (toString/-2075883882 var146)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var482 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(assert true)
;(assert (<init>/1495607482 var2586 var1913 var482)) ; Statement: specialinvoke $r22.<java.text.ParseException: void <init>(java.lang.String,int)>($r15, $i3) 

(declare-const var2586!1 var2962)
(declare-const var1913!1 String)
(declare-const var482!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2962-to-var711 var2586!1) (cast-from-var3752-to-var711 var3243))) ; Statement: virtualinvoke $r22.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>($r9) 

(declare-const var2586!2 var2962)
(declare-const var3243!1 var3752)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var1194-init=([], jdk.jfr.internal.jfc.JFCParserHandler), var2962-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/834955289=([jdk.internal.org.xml.sax.SAXException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-Int-to-Int=([int], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2962-to-var711=([java.text.ParseException], java.lang.Throwable), cast-from-var3752-to-var711=([jdk.internal.org.xml.sax.SAXException], java.lang.Throwable)}
; {var3069=r2, var2594=null_type, var2023=r1, var1194=jdk.jfr.internal.jfc.JFCParserHandler, var3619=$r19, var3752=jdk.internal.org.xml.sax.SAXException, var3243=$r9, var2962=java.text.ParseException, var2586=$r22, var1359=$r21, var113=$r13, var1750=$r12, var146=$r14, var1913=$r15, var482=$i3, var711=java.lang.Throwable}
; {r2=var3069, null_type=var2594, r1=var2023, jdk.jfr.internal.jfc.JFCParserHandler=var1194, $r19=var3619, jdk.internal.org.xml.sax.SAXException=var3752, $r9=var3243, java.text.ParseException=var2962, $r22=var2586, $r21=var1359, $r13=var113, $r12=var1750, $r14=var146, $r15=var1913, $i3=var482, java.lang.Throwable=var711}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r19 = new jdk.jfr.internal.jfc.JFCParserHandler;	$r9 := @caughtexception;	$r22 = new java.text.ParseException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error reading JFC file. ");	$r12 = virtualinvoke $r9.<jdk.internal.org.xml.sax.SAXException: java.lang.String getMessage()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = (int) -1;	specialinvoke $r22.<java.text.ParseException: void <init>(java.lang.String,int)>($r15, $i3);	virtualinvoke $r22.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>($r9);	throw $r22
;block_num 2