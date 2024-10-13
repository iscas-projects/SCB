(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3885 0)
(declare-sort var3085 0)
(declare-sort var592 0)
(declare-sort var877 0)
(declare-sort var1955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var877) String)
(declare-fun cast-from-var592-to-var877 (var592) var877)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1955-init () var1955)
(declare-fun <init>/1677035976 (var1955 var877) void)
(declare-const null-var3885 var3885)
(declare-const null-var3085 var3085)
(declare-const null-var592 var592)
(declare-const var2155 var3885) ; Statement: r3 := @parameter0: java.io.InputStream 
(assert (not (= var2155 null-var3885)))
(declare-const var3033 var3085) ; Statement: r1 := @parameter1: org.xml.sax.ContentHandler 
(assert (not (= var3033 null-var3085)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var634 var592) ; Statement: $r8 := @caughtexception 
(assert (not (= var634 null-var592)))
(assert true)
(define-const var591 String (getMessage/849299655 (cast-from-var592-to-var877 var634))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var2429 Bool (contains/1009244746 var591 (cast-from-String-to-String "org.apache.xerces.parsers.SAXParser"))) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean contains(java.lang.CharSequence)>("org.apache.xerces.parsers.SAXParser") 
 ; Statement: if $z0 == 0 goto $r10 = new cn.hutool.poi.exceptions.POIException 
(assert (= (ite var2429 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1938 var1955 var1955-init) ; Statement: $r10 = new cn.hutool.poi.exceptions.POIException 
(assert true)
;(assert (<init>/1677035976 var1938 (cast-from-var592-to-var877 var634))) ; Statement: specialinvoke $r10.<cn.hutool.poi.exceptions.POIException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var1938!1 var1955)
(declare-const var634!1 var592)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var592-to-var877=([java.lang.Exception], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1955-init=([], cn.hutool.poi.exceptions.POIException), <init>/1677035976=([cn.hutool.poi.exceptions.POIException, java.lang.Throwable], void)}
; {var3885=java.io.InputStream, var2155=r3, var3085=org.xml.sax.ContentHandler, var3033=r1, var592=java.lang.Exception, var634=$r8, var877=java.lang.Throwable, var591=$r9, var2429=$z0, var1955=cn.hutool.poi.exceptions.POIException, var1938=$r10}
; {java.io.InputStream=var3885, r3=var2155, org.xml.sax.ContentHandler=var3085, r1=var3033, java.lang.Exception=var592, $r8=var634, java.lang.Throwable=var877, $r9=var591, $z0=var2429, cn.hutool.poi.exceptions.POIException=var1955, $r10=var1938}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @parameter0: java.io.InputStream;	r1 := @parameter1: org.xml.sax.ContentHandler;	$r8 := @caughtexception;	$r9 = virtualinvoke $r8.<java.lang.Exception: java.lang.String getMessage()>();	$z0 = virtualinvoke $r9.<java.lang.String: boolean contains(java.lang.CharSequence)>("org.apache.xerces.parsers.SAXParser");	if $z0 == 0 goto $r10 = new cn.hutool.poi.exceptions.POIException;	$r10 = new cn.hutool.poi.exceptions.POIException;	specialinvoke $r10.<cn.hutool.poi.exceptions.POIException: void <init>(java.lang.Throwable)>($r8);	throw $r10
;block_num 3