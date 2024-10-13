(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1532 0)
(declare-sort var3823 0)
(declare-sort var3206 0)
(declare-sort var2773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var3823) var3206)
(declare-fun test_emulateNoJarURLConnections/-1526934653 (var1532) Bool)
(declare-fun toExternalForm/431506284 (var3823) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1532_newFailedToExtractEntryPathException/1175490929 (var3823) var2773)
(declare-const null-var1532 var1532)
(declare-const null-var3823 var3823)
(declare-const var1253 var1532) ; Statement: r1 := @this: freemarker.ext.jsp.TaglibFactory 
(assert (not (= var1253 null-var1532)))
(declare-const var533 var3823) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var533 null-var3823)))
(assert true)
(define-const var1181 var3206 (openConnection/1646032697 var533)) ; Statement: r44 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(define-const var439 Bool (test_emulateNoJarURLConnections/-1526934653 var1253)) ; Statement: $z0 = r1.<freemarker.ext.jsp.TaglibFactory: boolean test_emulateNoJarURLConnections> 
 ; Statement: if $z0 != 0 goto $r29 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>() 
(assert (not (= (ite var439 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1456 String (toExternalForm/431506284 var533)) ; Statement: $r29 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
(define-const var1791 Int (indexOf/-1209756239 var1456 "!/")) ; Statement: $i6 = virtualinvoke $r29.<java.lang.String: int indexOf(java.lang.String)>("!/") 
(define-const var2028 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i6 != $i8 goto $i0 = virtualinvoke $r29.<java.lang.String: int indexOf(int)>(58) 
(assert (not (not (= var1791 var2028)))) ; Negate: Cond: $i6 != $i8  
(define-const var3220 var2773 (var1532_newFailedToExtractEntryPathException/1175490929 var533)) ; Statement: $r28 = staticinvoke <freemarker.ext.jsp.TaglibFactory: java.net.MalformedURLException newFailedToExtractEntryPathException(java.net.URL)>(r0) 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), test_emulateNoJarURLConnections/-1526934653=([freemarker.ext.jsp.TaglibFactory], boolean), toExternalForm/431506284=([java.net.URL], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var1532_newFailedToExtractEntryPathException/1175490929=([java.net.URL], java.net.MalformedURLException)}
; {var1532=freemarker.ext.jsp.TaglibFactory, var1253=r1, var3823=java.net.URL, var533=r0, var3206=java.net.URLConnection, var1181=r44, var439=$z0, var1456=$r29, var1791=$i6, var2028=$i8, var2773=java.net.MalformedURLException, var3220=$r28}
; {freemarker.ext.jsp.TaglibFactory=var1532, r1=var1253, java.net.URL=var3823, r0=var533, java.net.URLConnection=var3206, r44=var1181, $z0=var439, $r29=var1456, $i6=var1791, $i8=var2028, java.net.MalformedURLException=var2773, $r28=var3220}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.ext.jsp.TaglibFactory;	r0 := @parameter0: java.net.URL;	r44 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	$z0 = r1.<freemarker.ext.jsp.TaglibFactory: boolean test_emulateNoJarURLConnections>;	if $z0 != 0 goto $r29 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>();	$r29 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>();	$i6 = virtualinvoke $r29.<java.lang.String: int indexOf(java.lang.String)>("!/");	$i8 = (int) -1;	if $i6 != $i8 goto $i0 = virtualinvoke $r29.<java.lang.String: int indexOf(int)>(58);	$r28 = staticinvoke <freemarker.ext.jsp.TaglibFactory: java.net.MalformedURLException newFailedToExtractEntryPathException(java.net.URL)>(r0);	throw $r28
;block_num 3