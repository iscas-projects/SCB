(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3515 0)
(declare-sort var3263 0)
(declare-sort var3842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1580151085 (var3515 Bool) String)
(declare-fun mPh/-281370018 (var3515) Int)
(declare-const null-var3515 var3515)
(declare-const null-String String)
(declare-const null-var3842 var3842)
(declare-const var2790 var3515) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var2790 null-var3515)))
(define-const var333 String null-String) ; Statement: r18 = null 
(define-const var287 var3842 null-var3842) ; Statement: r19 = null 
(define-const var940 String "DOCTYPE") ; Statement: $r2 = "DOCTYPE" 
(assert true)
(define-const var3122 String (name/-1580151085 var2790 (ite (= 1 0) true false))) ; Statement: $r1 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: java.lang.String name(boolean)>(0) 
(assert true)
(define-const var3808 Bool (= var940 var3122)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 1 goto r0.<jdk.internal.util.xml.impl.Parser: int mPh> = 2 
(assert (= (ite var3808 1 0) 1)) ; Cond: $z0 == 1 
(declare-const var2790!1 var3515)
(assert (not (= var2790!1 null-var3515)))
(assert (= (mPh/-281370018 var2790!1) 2)) ; Statement: r0.<jdk.internal.util.xml.impl.Parser: int mPh> = 2 
(define-const var2471 Int 0) ; Statement: b5 = 0 
(define-const var2130 Int 0) ; Statement: b7 = 0 
(define-const var865 Int 0) ; Statement: b6 = 0 
(assert true) ; Non Conditional
 ; Statement: if b6 < 0 goto return 
(assert (< var865 0)) ; Cond: b6 < 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1580151085=([jdk.internal.util.xml.impl.Parser, boolean], java.lang.String), mPh/-281370018=([jdk.internal.util.xml.impl.Parser], int)}
; {var3515=jdk.internal.util.xml.impl.Parser, var2790=r0, var3263=null_type, var333=r18, var3842=jdk.internal.util.xml.impl.Pair, var287=r19, var940=$r2, var3122=$r1, var3808=$z0, var2471=b5, var2130=b7, var865=b6}
; {jdk.internal.util.xml.impl.Parser=var3515, r0=var2790, null_type=var3263, r18=var333, jdk.internal.util.xml.impl.Pair=var3842, r19=var287, $r2=var940, $r1=var3122, $z0=var3808, b5=var2471, b7=var2130, b6=var865}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.Parser;	r18 = null;	r19 = null;	$r2 = "DOCTYPE";	$r1 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: java.lang.String name(boolean)>(0);	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 1 goto r0.<jdk.internal.util.xml.impl.Parser: int mPh> = 2;	r0.<jdk.internal.util.xml.impl.Parser: int mPh> = 2;	b5 = 0;	b7 = 0;	b6 = 0;	if b6 < 0 goto return;	return
;block_num 4