(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2289 0)
(declare-sort var2820 0)
(declare-sort var791 0)
(declare-sort var2097 0)
(declare-sort var2196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var2097) String)
(declare-fun cast-from-var791-to-var2097 (var791) var2097)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2196-init () var2196)
(declare-fun <init>/145278900 (var2196 var2097) void)
(declare-const null-var2289 var2289)
(declare-const null-var2820 var2820)
(declare-const null-var791 var791)
(declare-const var1493 var2289) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTHandler 
(assert (not (= var1493 null-var2289)))
(declare-const var3375 var2820) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3375 null-var2820)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3167 var791) ; Statement: $r9 := @caughtexception 
(assert (not (= var3167 null-var791)))
(assert true)
(define-const var1410 String (getMessage/849299655 (cast-from-var791-to-var2097 var3167))) ; Statement: $r10 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2692 Bool (contains/1009244746 var1410 (cast-from-String-to-String "scratchpad"))) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean contains(java.lang.CharSequence)>("scratchpad") 
 ; Statement: if $z0 == 0 goto throw $r9 
(assert (not (= (ite var2692 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3780 var2196 var2196-init) ; Statement: $r11 = new org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException 
(assert true)
;(assert (<init>/145278900 var3780 (cast-from-var791-to-var2097 var3167))) ; Statement: specialinvoke $r11.<org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException: void <init>(java.lang.Throwable)>($r9) 

(declare-const var3780!1 var2196)
(declare-const var3167!1 var791)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var791-to-var2097=([java.io.IOException], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2196-init=([], org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException), <init>/145278900=([org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException, java.lang.Throwable], void)}
; {var2289=org.apache.poi.xslf.util.PPTHandler, var1493=r0, var2820=java.io.InputStream, var3375=r1, var791=java.io.IOException, var3167=$r9, var2097=java.lang.Throwable, var1410=$r10, var2692=$z0, var2196=org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException, var3780=$r11}
; {org.apache.poi.xslf.util.PPTHandler=var2289, r0=var1493, java.io.InputStream=var2820, r1=var3375, java.io.IOException=var791, $r9=var3167, java.lang.Throwable=var2097, $r10=var1410, $z0=var2692, org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException=var2196, $r11=var3780}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTHandler;	r1 := @parameter0: java.io.InputStream;	$r9 := @caughtexception;	$r10 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>();	$z0 = virtualinvoke $r10.<java.lang.String: boolean contains(java.lang.CharSequence)>("scratchpad");	if $z0 == 0 goto throw $r9;	$r11 = new org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException;	specialinvoke $r11.<org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException: void <init>(java.lang.Throwable)>($r9);	throw $r11
;block_num 3