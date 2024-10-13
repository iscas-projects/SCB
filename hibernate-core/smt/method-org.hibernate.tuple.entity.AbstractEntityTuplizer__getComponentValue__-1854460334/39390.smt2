(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3602 0)
(declare-sort var2136 0)
(declare-sort var1092 0)
(declare-sort var2516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun findSubPropertyIndex/-702355867 (var3602 var2136 String) Int)
(declare-fun getPropertyValue/-1992861173 (var2136 var1092 Int) var1092)
(declare-const null-var3602 var3602)
(declare-const null-var2136 var2136)
(declare-const null-var1092 var1092)
(declare-const null-String String)
(declare-const var3212 var3602) ; Statement: r1 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer 
(assert (not (= var3212 null-var3602)))
(declare-const var723 var2136) ; Statement: r2 := @parameter0: org.hibernate.type.ComponentType 
(assert (not (= var723 null-var2136)))
(declare-const var933 var1092) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var933 null-var1092)))
(declare-const var889 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var889 null-String)))
(assert true)
(define-const var1426 Int (indexOf/-1037706067 var889 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto $r10 = r0 
(assert (not (<= var1426 0))) ; Negate: Cond: i0 <= 0  
(assert (and true (and (>= 0 0) (>= (str.len var889) var1426) (>= var1426 0))))
(define-const var3244 String (substring/-1240304868 var889 0 var1426)) ; Statement: $r10 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
 ; Statement: goto [?= $i2 = specialinvoke r1.<org.hibernate.tuple.entity.AbstractEntityTuplizer: int findSubPropertyIndex(org.hibernate.type.ComponentType,java.lang.String)>(r2, $r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3401 Int (findSubPropertyIndex/-702355867 var3212 var723 var3244)) ; Statement: $i2 = specialinvoke r1.<org.hibernate.tuple.entity.AbstractEntityTuplizer: int findSubPropertyIndex(org.hibernate.type.ComponentType,java.lang.String)>(r2, $r10) 
(assert true)
(define-const var1952 var1092 (getPropertyValue/-1992861173 var723 var933 var3401)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.type.ComponentType: java.lang.Object getPropertyValue(java.lang.Object,int)>(r3, $i2) 
 ; Statement: if i0 <= 0 goto return $r9 
(assert (<= var1426 0)) ; Cond: i0 <= 0 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), findSubPropertyIndex/-702355867=([org.hibernate.tuple.entity.AbstractEntityTuplizer, org.hibernate.type.ComponentType, java.lang.String], int), getPropertyValue/-1992861173=([org.hibernate.type.ComponentType, java.lang.Object, int], java.lang.Object)}
; {var3602=org.hibernate.tuple.entity.AbstractEntityTuplizer, var3212=r1, var2136=org.hibernate.type.ComponentType, var723=r2, var1092=java.lang.Object, var933=r3, var889=r0, var2516=null_type, var1426=i0, var3244=$r10, var3401=$i2, var1952=$r9}
; {org.hibernate.tuple.entity.AbstractEntityTuplizer=var3602, r1=var3212, org.hibernate.type.ComponentType=var2136, r2=var723, java.lang.Object=var1092, r3=var933, r0=var889, null_type=var2516, i0=var1426, $r10=var3244, $i2=var3401, $r9=var1952}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer;	r2 := @parameter0: org.hibernate.type.ComponentType;	r3 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 <= 0 goto $r10 = r0;	$r10 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	goto [?= $i2 = specialinvoke r1.<org.hibernate.tuple.entity.AbstractEntityTuplizer: int findSubPropertyIndex(org.hibernate.type.ComponentType,java.lang.String)>(r2, $r10)];	$i2 = specialinvoke r1.<org.hibernate.tuple.entity.AbstractEntityTuplizer: int findSubPropertyIndex(org.hibernate.type.ComponentType,java.lang.String)>(r2, $r10);	$r9 = virtualinvoke r2.<org.hibernate.type.ComponentType: java.lang.Object getPropertyValue(java.lang.Object,int)>(r3, $i2);	if i0 <= 0 goto return $r9;	return $r9
;block_num 4