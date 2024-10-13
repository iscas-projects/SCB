(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2411 0)
(declare-sort var510 0)
(declare-sort var3517 0)
(declare-sort var1689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var1689) String)
(declare-fun cast-from-var3517-to-var1689 (var3517) var1689)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2411 var2411)
(declare-const null-var510 var510)
(declare-const null-var3517 var3517)
(declare-const var3489 var2411) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTHandler 
(assert (not (= var3489 null-var2411)))
(declare-const var1848 var510) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var1848 null-var510)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1462 var3517) ; Statement: $r9 := @caughtexception 
(assert (not (= var1462 null-var3517)))
(assert true)
(define-const var2600 String (getMessage/849299655 (cast-from-var3517-to-var1689 var1462))) ; Statement: $r10 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3660 Bool (contains/1009244746 var2600 (cast-from-String-to-String "scratchpad"))) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean contains(java.lang.CharSequence)>("scratchpad") 
 ; Statement: if $z0 == 0 goto throw $r9 
(assert (= (ite var3660 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3517-to-var1689=([java.io.IOException], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2411=org.apache.poi.xslf.util.PPTHandler, var3489=r0, var510=java.io.InputStream, var1848=r1, var3517=java.io.IOException, var1462=$r9, var1689=java.lang.Throwable, var2600=$r10, var3660=$z0}
; {org.apache.poi.xslf.util.PPTHandler=var2411, r0=var3489, java.io.InputStream=var510, r1=var1848, java.io.IOException=var3517, $r9=var1462, java.lang.Throwable=var1689, $r10=var2600, $z0=var3660}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTHandler;	r1 := @parameter0: java.io.InputStream;	$r9 := @caughtexception;	$r10 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>();	$z0 = virtualinvoke $r10.<java.lang.String: boolean contains(java.lang.CharSequence)>("scratchpad");	if $z0 == 0 goto throw $r9;	throw $r9
;block_num 3