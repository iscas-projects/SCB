(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2426 0)
(declare-sort var1131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1823352142 (var2426) String)
(declare-fun cast-from-var1131-to-var2426 (var1131) var2426)
(declare-const null-var2426 var2426)
(declare-const null-var1131 var1131)
(declare-const var2049 var2426) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage 
(assert (not (= var2049 null-var2426)))
(declare-const var1107 var1131) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1107 null-var1131)))
(define-const var2859 Bool false) ; Statement: $z0 = r0 instanceof jdk.nashorn.internal.runtime.NativeJavaPackage 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2859 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var893 String (name/1823352142 var2049)) ; Statement: $r4 = r1.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
(define-const var50 var2426 (cast-from-var1131-to-var2426 var1107)) ; Statement: $r2 = (jdk.nashorn.internal.runtime.NativeJavaPackage) r0 
(define-const var3629 String (name/1823352142 var50)) ; Statement: $r3 = $r2.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
(assert true)
(define-const var2783 Bool (= var893 var3629)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1823352142=([jdk.nashorn.internal.runtime.NativeJavaPackage], java.lang.String), cast-from-var1131-to-var2426=([java.lang.Object], jdk.nashorn.internal.runtime.NativeJavaPackage)}
; {var2426=jdk.nashorn.internal.runtime.NativeJavaPackage, var2049=r1, var1131=java.lang.Object, var1107=r0, var2859=$z0, var893=$r4, var50=$r2, var3629=$r3, var2783=$z1}
; {jdk.nashorn.internal.runtime.NativeJavaPackage=var2426, r1=var2049, java.lang.Object=var1131, r0=var1107, $z0=var2859, $r4=var893, $r2=var50, $r3=var3629, $z1=var2783}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof jdk.nashorn.internal.runtime.NativeJavaPackage;	if $z0 == 0 goto return 0;	$r4 = r1.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	$r2 = (jdk.nashorn.internal.runtime.NativeJavaPackage) r0;	$r3 = $r2.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z1
;block_num 2