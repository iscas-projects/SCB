(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var518 0)
(declare-sort var1774 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-1456724781 (var518) String)
(declare-const null-var518 var518)
(declare-const null-var1774 var1774)
(declare-const null-var3108 var3108)
(declare-const var697 var518) ; Statement: r0 := @this: org.apache.poi.xslf.util.BitmapFormat 
(assert (not (= var697 null-var518)))
(declare-const var2431 var1774) ; Statement: r6 := @parameter0: org.apache.poi.xslf.util.MFProxy 
(assert (not (= var2431 null-var1774)))
(declare-const var448 var3108) ; Statement: r3 := @parameter1: java.io.File 
(assert (not (= var448 null-var3108)))
(define-const var3485 String "null") ; Statement: $r2 = "null" 
(define-const var2399 String (format/-1456724781 var697)) ; Statement: $r1 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.lang.String format> 
(assert true)
(define-const var120 Bool (= var3485 var2399)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var120 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-1456724781=([org.apache.poi.xslf.util.BitmapFormat], java.lang.String)}
; {var518=org.apache.poi.xslf.util.BitmapFormat, var697=r0, var1774=org.apache.poi.xslf.util.MFProxy, var2431=r6, var3108=java.io.File, var448=r3, var3485=$r2, var2399=$r1, var120=$z0}
; {org.apache.poi.xslf.util.BitmapFormat=var518, r0=var697, org.apache.poi.xslf.util.MFProxy=var1774, r6=var2431, java.io.File=var3108, r3=var448, $r2=var3485, $r1=var2399, $z0=var120}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.BitmapFormat;	r6 := @parameter0: org.apache.poi.xslf.util.MFProxy;	r3 := @parameter1: java.io.File;	$r2 = "null";	$r1 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.lang.String format>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto return;	return
;block_num 2