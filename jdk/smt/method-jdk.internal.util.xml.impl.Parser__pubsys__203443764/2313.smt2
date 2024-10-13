(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1554 0)
(declare-sort var473 0)
(declare-sort var3248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pair/-1800420241 (var1554 var473) var473)
(declare-fun name/-1580151085 (var1554 Bool) String)
(declare-fun panic/-236266897 (var1554 String) void)
(declare-const null-var1554 var1554)
(declare-const null-Int Int)
(declare-const null-NullType var3248)
(declare-const null-var473 var473)
(declare-const var910 var1554) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var910 null-var1554)))
(declare-const var1552 Int) ; Statement: c3 := @parameter0: char 
(assert (not (= var1552 null-Int)))
(assert true)
(define-const var1937 var473 (pair/-1800420241 var910 null-var473)) ; Statement: r1 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair pair(jdk.internal.util.xml.impl.Pair)>(null) 
(assert true)
(define-const var3873 String (name/-1580151085 var910 (ite (= 1 0) true false))) ; Statement: r2 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: java.lang.String name(boolean)>(0) 
(define-const var1902 String "PUBLIC") ; Statement: $r3 = "PUBLIC" 
(assert true)
(define-const var2174 Bool (= var1902 var3873)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 1 goto $r4 = "SYSTEM" 
(assert (not (= (ite var2174 1 0) 1))) ; Cond: $z0 != 1 
(define-const var425 String "SYSTEM") ; Statement: $r4 = "SYSTEM" 
(assert true)
(define-const var3841 Bool (= var425 var3873)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z1 != 1 goto virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: void panic(java.lang.String)>("") 
(assert (not (= (ite var3841 1 0) 1))) ; Cond: $z1 != 1 
(assert true)
;(assert (panic/-236266897 var910 "")) ; Statement: virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: void panic(java.lang.String)>("") 

(declare-const var910!1 var1554)
(declare-const var3286 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {pair/-1800420241=([jdk.internal.util.xml.impl.Parser, jdk.internal.util.xml.impl.Pair], jdk.internal.util.xml.impl.Pair), name/-1580151085=([jdk.internal.util.xml.impl.Parser, boolean], java.lang.String), panic/-236266897=([jdk.internal.util.xml.impl.Parser, java.lang.String], void)}
; {var1554=jdk.internal.util.xml.impl.Parser, var910=r0, var1552=c3, var473=jdk.internal.util.xml.impl.Pair, var1937=r1, var3873=r2, var1902=$r3, var2174=$z0, var425=$r4, var3841=$z1, var3286="", var3248=null_type}
; {jdk.internal.util.xml.impl.Parser=var1554, r0=var910, c3=var1552, jdk.internal.util.xml.impl.Pair=var473, r1=var1937, r2=var3873, $r3=var1902, $z0=var2174, $r4=var425, $z1=var3841, ""=var3286, null_type=var3248}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: jdk.internal.util.xml.impl.Parser;	c3 := @parameter0: char;	r1 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair pair(jdk.internal.util.xml.impl.Pair)>(null);	r2 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: java.lang.String name(boolean)>(0);	$r3 = "PUBLIC";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 1 goto $r4 = "SYSTEM";	$r4 = "SYSTEM";	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z1 != 1 goto virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: void panic(java.lang.String)>("");	virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: void panic(java.lang.String)>("");	return null
;block_num 3