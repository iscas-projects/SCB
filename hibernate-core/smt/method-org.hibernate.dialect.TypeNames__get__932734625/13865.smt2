(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1832 0)
(declare-sort var2075 0)
(declare-sort var2840 0)
(declare-sort var2508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun defaults/-1065100384 (var1832) var2075)
(declare-fun var2075_get/1088891777 (var2075 var2840) var2840)
(declare-fun cast-from-Int-to-var2840 (Int) var2840)
(declare-fun cast-from-var2840-to-String (var2840) String)
(declare-const null-var1832 var1832)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3538 var1832) ; Statement: r1 := @this: org.hibernate.dialect.TypeNames 
(assert (not (= var3538 null-var1832)))
(declare-const var1037 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1037 null-Int)))
(define-const var1238 Int (Int_valueOf/-1371140006 var1037)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2393 var2075 (defaults/-1065100384 var3538)) ; Statement: $r2 = r1.<org.hibernate.dialect.TypeNames: java.util.Map defaults> 
(define-const var1360 var2840 (var2075_get/1088891777 var2393 (cast-from-Int-to-var2840 var1238))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var928 String (cast-from-var2840-to-String var1360)) ; Statement: r4 = (java.lang.String) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var928 null-String))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), defaults/-1065100384=([org.hibernate.dialect.TypeNames], java.util.Map), var2075_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var2840=([java.lang.Integer], java.lang.Object), cast-from-var2840-to-String=([java.lang.Object], java.lang.String)}
; {var1832=org.hibernate.dialect.TypeNames, var3538=r1, var1037=i0, var1238=r0, var2075=java.util.Map, var2393=$r2, var2840=java.lang.Object, var1360=$r3, var928=r4, var2508=null_type}
; {org.hibernate.dialect.TypeNames=var1832, r1=var3538, i0=var1037, r0=var1238, java.util.Map=var2075, $r2=var2393, java.lang.Object=var2840, $r3=var1360, r4=var928, null_type=var2508}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.dialect.TypeNames;	i0 := @parameter0: int;	r0 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = r1.<org.hibernate.dialect.TypeNames: java.util.Map defaults>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r4 = (java.lang.String) $r3;	if r4 != null goto return r4;	return r4
;block_num 2