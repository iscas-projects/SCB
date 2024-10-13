(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1491 0)
(declare-sort var719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNameToken/-1004068127 (var719 Int) String)
(declare-fun cast-from-var1491-to-var719 (var1491) var719)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNameTokenCount/-469135163 (var719) Int)
(declare-const null-var1491 var1491)
(declare-const null-String String)
(declare-const var3602 var1491) ; Statement: r1 := @this: jdk.internal.dynalink.support.AbstractCallSiteDescriptor 
(assert (not (= var3602 null-var1491)))
(declare-const var3396 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3396 null-String)))
(assert true)
(define-const var43 String (getNameToken/-1004068127 (cast-from-var1491-to-var719 var3602) 0)) ; Statement: $r2 = virtualinvoke r1.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.String getNameToken(int)>(0) 
(assert true)
;(assert (append/672562846 var3396 var43)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3396!1 String)
(assert (= var3396!1 (str.++ var3396 var43)))
(assert true)
(define-const var702 Int (getNameTokenCount/-469135163 (cast-from-var1491-to-var719 var3602))) ; Statement: i0 = virtualinvoke r1.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: int getNameTokenCount()>() 
(define-const var1130 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return r0 
(assert (>= var1130 var702)) ; Cond: i1 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {getNameToken/-1004068127=([jdk.internal.dynalink.CallSiteDescriptor, int], java.lang.String), cast-from-var1491-to-var719=([jdk.internal.dynalink.support.AbstractCallSiteDescriptor], jdk.internal.dynalink.CallSiteDescriptor), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNameTokenCount/-469135163=([jdk.internal.dynalink.CallSiteDescriptor], int)}
; {var1491=jdk.internal.dynalink.support.AbstractCallSiteDescriptor, var3602=r1, var3396=r0, var719=jdk.internal.dynalink.CallSiteDescriptor, var43=$r2, var702=i0, var1130=i1}
; {jdk.internal.dynalink.support.AbstractCallSiteDescriptor=var1491, r1=var3602, r0=var3396, jdk.internal.dynalink.CallSiteDescriptor=var719, $r2=var43, i0=var702, i1=var1130}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.internal.dynalink.support.AbstractCallSiteDescriptor;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r1.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.String getNameToken(int)>(0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	i0 = virtualinvoke r1.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: int getNameTokenCount()>();	i1 = 1;	if i1 >= i0 goto return r0;	return r0
;block_num 3