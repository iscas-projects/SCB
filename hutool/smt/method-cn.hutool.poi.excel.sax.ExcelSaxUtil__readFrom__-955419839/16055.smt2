(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2263 0)
(declare-sort var3542 0)
(declare-sort var3514 0)
(declare-sort var3606 0)
(declare-sort var2649 0)
(declare-sort var1995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var3606) String)
(declare-fun cast-from-var3514-to-var3606 (var3514) var3606)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2649-init () var2649)
(declare-fun arr-var1995-init () (Array Int var1995))
(declare-fun <init>/-1258753382 (var2649 var3606 String (Array Int var1995)) void)
(declare-const null-var2263 var2263)
(declare-const null-var3542 var3542)
(declare-const null-var3514 var3514)
(declare-const var1010 var2263) ; Statement: r3 := @parameter0: java.io.InputStream 
(assert (not (= var1010 null-var2263)))
(declare-const var3919 var3542) ; Statement: r1 := @parameter1: org.xml.sax.ContentHandler 
(assert (not (= var3919 null-var3542)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1410 var3514) ; Statement: $r8 := @caughtexception 
(assert (not (= var1410 null-var3514)))
(assert true)
(define-const var96 String (getMessage/849299655 (cast-from-var3514-to-var3606 var1410))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var1745 Bool (contains/1009244746 var96 (cast-from-String-to-String "org.apache.xerces.parsers.SAXParser"))) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean contains(java.lang.CharSequence)>("org.apache.xerces.parsers.SAXParser") 
 ; Statement: if $z0 == 0 goto $r10 = new cn.hutool.poi.exceptions.POIException 
(assert (not (= (ite var1745 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3705 var2649 var2649-init) ; Statement: $r11 = new cn.hutool.core.exceptions.DependencyException 
(define-const var3330 (Array Int var1995) arr-var1995-init) ; Statement: $r12 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (<init>/-1258753382 var3705 (cast-from-var3514-to-var3606 var1410) "You need to add \u0027xerces:xercesImpl\u0027 to your project and version >= 2.11.0" var3330)) ; Statement: specialinvoke $r11.<cn.hutool.core.exceptions.DependencyException: void <init>(java.lang.Throwable,java.lang.String,java.lang.Object[])>($r8, "You need to add \'xerces:xercesImpl\' to your project and version >= 2.11.0", $r12) 

(declare-const var3705!1 var2649)
(declare-const var1410!1 var3514)
(declare-const var2333 String)
(declare-const var3330!1 (Array Int var1995))
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3514-to-var3606=([java.lang.Exception], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2649-init=([], cn.hutool.core.exceptions.DependencyException), arr-var1995-init=([], java.lang.Object[]), <init>/-1258753382=([cn.hutool.core.exceptions.DependencyException, java.lang.Throwable, java.lang.String, java.lang.Object[]], void)}
; {var2263=java.io.InputStream, var1010=r3, var3542=org.xml.sax.ContentHandler, var3919=r1, var3514=java.lang.Exception, var1410=$r8, var3606=java.lang.Throwable, var96=$r9, var1745=$z0, var2649=cn.hutool.core.exceptions.DependencyException, var3705=$r11, var1995=java.lang.Object, var3330=$r12, var2333="You need to add \'xerces:xercesImpl\' to your project and version >= 2.11.0"}
; {java.io.InputStream=var2263, r3=var1010, org.xml.sax.ContentHandler=var3542, r1=var3919, java.lang.Exception=var3514, $r8=var1410, java.lang.Throwable=var3606, $r9=var96, $z0=var1745, cn.hutool.core.exceptions.DependencyException=var2649, $r11=var3705, java.lang.Object=var1995, $r12=var3330, "You need to add \'xerces:xercesImpl\' to your project and version >= 2.11.0"=var2333}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @parameter0: java.io.InputStream;	r1 := @parameter1: org.xml.sax.ContentHandler;	$r8 := @caughtexception;	$r9 = virtualinvoke $r8.<java.lang.Exception: java.lang.String getMessage()>();	$z0 = virtualinvoke $r9.<java.lang.String: boolean contains(java.lang.CharSequence)>("org.apache.xerces.parsers.SAXParser");	if $z0 == 0 goto $r10 = new cn.hutool.poi.exceptions.POIException;	$r11 = new cn.hutool.core.exceptions.DependencyException;	$r12 = newarray (java.lang.Object)[0];	specialinvoke $r11.<cn.hutool.core.exceptions.DependencyException: void <init>(java.lang.Throwable,java.lang.String,java.lang.Object[])>($r8, "You need to add \'xerces:xercesImpl\' to your project and version >= 2.11.0", $r12);	throw $r11
;block_num 3