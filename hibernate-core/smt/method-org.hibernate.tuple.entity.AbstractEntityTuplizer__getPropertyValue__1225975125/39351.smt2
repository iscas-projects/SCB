(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3436 0)
(declare-sort var1046 0)
(declare-sort var503 0)
(declare-sort var1405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun entityMetamodel/-883124513 (var3436) var1405)
(declare-fun getPropertyIndexOrNull/-1370338729 (var1405 String) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun getPropertyValue/658174601 (var3436 var1046 Int) var1046)
(declare-const null-var3436 var3436)
(declare-const null-var1046 var1046)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var878 var3436) ; Statement: r0 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer 
(assert (not (= var878 null-var3436)))
(declare-const var3373 var1046) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3373 null-var1046)))
(declare-const var1547 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var1547 null-String)))
(assert true)
(define-const var589 Int (indexOf/-1037706067 var1547 46)) ; Statement: i2 = virtualinvoke r13.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i2 <= 0 goto $r14 = r13 
(assert (not (<= var589 0))) ; Negate: Cond: i2 <= 0  
(assert (and true (and (>= 0 0) (>= (str.len var1547) var589) (>= var589 0))))
(define-const var2136 String (substring/-1240304868 var1547 0 var589)) ; Statement: $r14 = virtualinvoke r13.<java.lang.String: java.lang.String substring(int,int)>(0, i2) 
 ; Statement: goto [?= r15 = $r14] 
(assert true) ; Non Conditional
(define-const var51 String var2136) ; Statement: r15 = $r14 
(define-const var946 var1405 (entityMetamodel/-883124513 var878)) ; Statement: $r1 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel> 
(assert true)
(define-const var1025 Int (getPropertyIndexOrNull/-1370338729 var946 var2136)) ; Statement: $r12 = virtualinvoke $r1.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>($r14) 
 ; Statement: if $r12 != null goto $r17 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel> 
(assert (not (= var1025 null-Int))) ; Cond: $r12 != null 
(define-const var1754 var1405 (entityMetamodel/-883124513 var878)) ; Statement: $r17 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel> 
(assert true)
(define-const var1955 Int (getPropertyIndexOrNull/-1370338729 var1754 var51)) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r15) 
(assert true)
(define-const var1618 Int (intValue/-1815674922 var1955)) ; Statement: $i3 = virtualinvoke $r18.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var3369 var1046 (getPropertyValue/658174601 var878 var3373 var1618)) ; Statement: $r19 = virtualinvoke r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: java.lang.Object getPropertyValue(java.lang.Object,int)>(r2, $i3) 
 ; Statement: if i2 <= 0 goto return $r19 
(assert (<= var589 0)) ; Cond: i2 <= 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), entityMetamodel/-883124513=([org.hibernate.tuple.entity.AbstractEntityTuplizer], org.hibernate.tuple.entity.EntityMetamodel), getPropertyIndexOrNull/-1370338729=([org.hibernate.tuple.entity.EntityMetamodel, java.lang.String], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), getPropertyValue/658174601=([org.hibernate.tuple.entity.AbstractEntityTuplizer, java.lang.Object, int], java.lang.Object)}
; {var3436=org.hibernate.tuple.entity.AbstractEntityTuplizer, var878=r0, var1046=java.lang.Object, var3373=r2, var1547=r13, var503=null_type, var589=i2, var2136=$r14, var51=r15, var1405=org.hibernate.tuple.entity.EntityMetamodel, var946=$r1, var1025=$r12, var1754=$r17, var1955=$r18, var1618=$i3, var3369=$r19}
; {org.hibernate.tuple.entity.AbstractEntityTuplizer=var3436, r0=var878, java.lang.Object=var1046, r2=var3373, r13=var1547, null_type=var503, i2=var589, $r14=var2136, r15=var51, org.hibernate.tuple.entity.EntityMetamodel=var1405, $r1=var946, $r12=var1025, $r17=var1754, $r18=var1955, $i3=var1618, $r19=var3369}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer;	r2 := @parameter0: java.lang.Object;	r13 := @parameter1: java.lang.String;	i2 = virtualinvoke r13.<java.lang.String: int indexOf(int)>(46);	if i2 <= 0 goto $r14 = r13;	$r14 = virtualinvoke r13.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	goto [?= r15 = $r14];	r15 = $r14;	$r1 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel>;	$r12 = virtualinvoke $r1.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>($r14);	if $r12 != null goto $r17 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel>;	$r17 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel>;	$r18 = virtualinvoke $r17.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r15);	$i3 = virtualinvoke $r18.<java.lang.Integer: int intValue()>();	$r19 = virtualinvoke r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: java.lang.Object getPropertyValue(java.lang.Object,int)>(r2, $i3);	if i2 <= 0 goto return $r19;	return $r19
;block_num 5