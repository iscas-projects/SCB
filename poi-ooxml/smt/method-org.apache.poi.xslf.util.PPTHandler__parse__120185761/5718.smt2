(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1424 0)
(declare-sort var336 0)
(declare-sort var2155 0)
(declare-sort var3422 0)
(declare-sort var1650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var3422) String)
(declare-fun cast-from-var2155-to-var3422 (var2155) var3422)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1650-init () var1650)
(declare-fun <init>/145278900 (var1650 var3422) void)
(declare-const null-var1424 var1424)
(declare-const null-var336 var336)
(declare-const null-var2155 var2155)
(declare-const var1191 var1424) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTHandler 
(assert (not (= var1191 null-var1424)))
(declare-const var3373 var336) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3373 null-var336)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3895 var2155) ; Statement: $r9 := @caughtexception 
(assert (not (= var3895 null-var2155)))
(assert true)
(define-const var1781 String (getMessage/849299655 (cast-from-var2155-to-var3422 var3895))) ; Statement: $r10 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var46 Bool (contains/1009244746 var1781 (cast-from-String-to-String "scratchpad"))) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean contains(java.lang.CharSequence)>("scratchpad") 
 ; Statement: if $z0 == 0 goto throw $r9 
(assert (not (= (ite var46 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2063 var1650 var1650-init) ; Statement: $r11 = new org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException 
(assert true)
;(assert (<init>/145278900 var2063 (cast-from-var2155-to-var3422 var3895))) ; Statement: specialinvoke $r11.<org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException: void <init>(java.lang.Throwable)>($r9) 

(declare-const var2063!1 var1650)
(declare-const var3895!1 var2155)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2155-to-var3422=([java.io.IOException], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1650-init=([], org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException), <init>/145278900=([org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException, java.lang.Throwable], void)}
; {var1424=org.apache.poi.xslf.util.PPTHandler, var1191=r0, var336=java.io.File, var3373=r1, var2155=java.io.IOException, var3895=$r9, var3422=java.lang.Throwable, var1781=$r10, var46=$z0, var1650=org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException, var2063=$r11}
; {org.apache.poi.xslf.util.PPTHandler=var1424, r0=var1191, java.io.File=var336, r1=var3373, java.io.IOException=var2155, $r9=var3895, java.lang.Throwable=var3422, $r10=var1781, $z0=var46, org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException=var1650, $r11=var2063}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTHandler;	r1 := @parameter0: java.io.File;	$r9 := @caughtexception;	$r10 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>();	$z0 = virtualinvoke $r10.<java.lang.String: boolean contains(java.lang.CharSequence)>("scratchpad");	if $z0 == 0 goto throw $r9;	$r11 = new org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException;	specialinvoke $r11.<org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException: void <init>(java.lang.Throwable)>($r9);	throw $r11
;block_num 3