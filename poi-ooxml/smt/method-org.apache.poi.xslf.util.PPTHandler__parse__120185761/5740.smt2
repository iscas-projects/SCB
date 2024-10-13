(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3639 0)
(declare-sort var3900 0)
(declare-sort var922 0)
(declare-sort var1026 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var1026) String)
(declare-fun cast-from-var922-to-var1026 (var922) var1026)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3639 var3639)
(declare-const null-var3900 var3900)
(declare-const null-var922 var922)
(declare-const var3470 var3639) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTHandler 
(assert (not (= var3470 null-var3639)))
(declare-const var2227 var3900) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2227 null-var3900)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1051 var922) ; Statement: $r9 := @caughtexception 
(assert (not (= var1051 null-var922)))
(assert true)
(define-const var169 String (getMessage/849299655 (cast-from-var922-to-var1026 var1051))) ; Statement: $r10 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3626 Bool (contains/1009244746 var169 (cast-from-String-to-String "scratchpad"))) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean contains(java.lang.CharSequence)>("scratchpad") 
 ; Statement: if $z0 == 0 goto throw $r9 
(assert (= (ite var3626 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var922-to-var1026=([java.io.IOException], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3639=org.apache.poi.xslf.util.PPTHandler, var3470=r0, var3900=java.io.File, var2227=r1, var922=java.io.IOException, var1051=$r9, var1026=java.lang.Throwable, var169=$r10, var3626=$z0}
; {org.apache.poi.xslf.util.PPTHandler=var3639, r0=var3470, java.io.File=var3900, r1=var2227, java.io.IOException=var922, $r9=var1051, java.lang.Throwable=var1026, $r10=var169, $z0=var3626}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTHandler;	r1 := @parameter0: java.io.File;	$r9 := @caughtexception;	$r10 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>();	$z0 = virtualinvoke $r10.<java.lang.String: boolean contains(java.lang.CharSequence)>("scratchpad");	if $z0 == 0 goto throw $r9;	throw $r9
;block_num 3