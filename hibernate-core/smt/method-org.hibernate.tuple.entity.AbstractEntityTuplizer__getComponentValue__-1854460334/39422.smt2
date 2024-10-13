(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3285 0)
(declare-sort var2612 0)
(declare-sort var317 0)
(declare-sort var3144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun findSubPropertyIndex/-702355867 (var3285 var2612 String) Int)
(declare-fun getPropertyValue/-1992861173 (var2612 var317 Int) var317)
(declare-const null-var3285 var3285)
(declare-const null-var2612 var2612)
(declare-const null-var317 var317)
(declare-const null-String String)
(declare-const var1873 var3285) ; Statement: r1 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer 
(assert (not (= var1873 null-var3285)))
(declare-const var2399 var2612) ; Statement: r2 := @parameter0: org.hibernate.type.ComponentType 
(assert (not (= var2399 null-var2612)))
(declare-const var1264 var317) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1264 null-var317)))
(declare-const var829 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var829 null-String)))
(assert true)
(define-const var328 Int (indexOf/-1037706067 var829 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto $r10 = r0 
(assert (<= var328 0)) ; Cond: i0 <= 0 
(define-const var3211 String var829) ; Statement: $r10 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var702 Int (findSubPropertyIndex/-702355867 var1873 var2399 var3211)) ; Statement: $i2 = specialinvoke r1.<org.hibernate.tuple.entity.AbstractEntityTuplizer: int findSubPropertyIndex(org.hibernate.type.ComponentType,java.lang.String)>(r2, $r10) 
(assert true)
(define-const var1553 var317 (getPropertyValue/-1992861173 var2399 var1264 var702)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.type.ComponentType: java.lang.Object getPropertyValue(java.lang.Object,int)>(r3, $i2) 
 ; Statement: if i0 <= 0 goto return $r9 
(assert (<= var328 0)) ; Cond: i0 <= 0 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), findSubPropertyIndex/-702355867=([org.hibernate.tuple.entity.AbstractEntityTuplizer, org.hibernate.type.ComponentType, java.lang.String], int), getPropertyValue/-1992861173=([org.hibernate.type.ComponentType, java.lang.Object, int], java.lang.Object)}
; {var3285=org.hibernate.tuple.entity.AbstractEntityTuplizer, var1873=r1, var2612=org.hibernate.type.ComponentType, var2399=r2, var317=java.lang.Object, var1264=r3, var829=r0, var3144=null_type, var328=i0, var3211=$r10, var702=$i2, var1553=$r9}
; {org.hibernate.tuple.entity.AbstractEntityTuplizer=var3285, r1=var1873, org.hibernate.type.ComponentType=var2612, r2=var2399, java.lang.Object=var317, r3=var1264, r0=var829, null_type=var3144, i0=var328, $r10=var3211, $i2=var702, $r9=var1553}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer;	r2 := @parameter0: org.hibernate.type.ComponentType;	r3 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 <= 0 goto $r10 = r0;	$r10 = r0;	$i2 = specialinvoke r1.<org.hibernate.tuple.entity.AbstractEntityTuplizer: int findSubPropertyIndex(org.hibernate.type.ComponentType,java.lang.String)>(r2, $r10);	$r9 = virtualinvoke r2.<org.hibernate.type.ComponentType: java.lang.Object getPropertyValue(java.lang.Object,int)>(r3, $i2);	if i0 <= 0 goto return $r9;	return $r9
;block_num 4