(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1879 0)
(declare-sort var876 0)
(declare-sort var3727 0)
(declare-sort var239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun entityMetamodel/-883124513 (var1879) var239)
(declare-fun getPropertyIndexOrNull/-1370338729 (var239 String) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun getPropertyValue/658174601 (var1879 var876 Int) var876)
(declare-const null-var1879 var1879)
(declare-const null-var876 var876)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2800 var1879) ; Statement: r0 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer 
(assert (not (= var2800 null-var1879)))
(declare-const var2574 var876) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2574 null-var876)))
(declare-const var590 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var590 null-String)))
(assert true)
(define-const var1190 Int (indexOf/-1037706067 var590 46)) ; Statement: i2 = virtualinvoke r13.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i2 <= 0 goto $r14 = r13 
(assert (<= var1190 0)) ; Cond: i2 <= 0 
(define-const var1276 String var590) ; Statement: $r14 = r13 
(assert true) ; Non Conditional
(define-const var866 String var1276) ; Statement: r15 = $r14 
(define-const var3981 var239 (entityMetamodel/-883124513 var2800)) ; Statement: $r1 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel> 
(assert true)
(define-const var2361 Int (getPropertyIndexOrNull/-1370338729 var3981 var1276)) ; Statement: $r12 = virtualinvoke $r1.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>($r14) 
 ; Statement: if $r12 != null goto $r17 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel> 
(assert (not (= var2361 null-Int))) ; Cond: $r12 != null 
(define-const var871 var239 (entityMetamodel/-883124513 var2800)) ; Statement: $r17 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel> 
(assert true)
(define-const var909 Int (getPropertyIndexOrNull/-1370338729 var871 var866)) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r15) 
(assert true)
(define-const var859 Int (intValue/-1815674922 var909)) ; Statement: $i3 = virtualinvoke $r18.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var1174 var876 (getPropertyValue/658174601 var2800 var2574 var859)) ; Statement: $r19 = virtualinvoke r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: java.lang.Object getPropertyValue(java.lang.Object,int)>(r2, $i3) 
 ; Statement: if i2 <= 0 goto return $r19 
(assert (<= var1190 0)) ; Cond: i2 <= 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), entityMetamodel/-883124513=([org.hibernate.tuple.entity.AbstractEntityTuplizer], org.hibernate.tuple.entity.EntityMetamodel), getPropertyIndexOrNull/-1370338729=([org.hibernate.tuple.entity.EntityMetamodel, java.lang.String], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), getPropertyValue/658174601=([org.hibernate.tuple.entity.AbstractEntityTuplizer, java.lang.Object, int], java.lang.Object)}
; {var1879=org.hibernate.tuple.entity.AbstractEntityTuplizer, var2800=r0, var876=java.lang.Object, var2574=r2, var590=r13, var3727=null_type, var1190=i2, var1276=$r14, var866=r15, var239=org.hibernate.tuple.entity.EntityMetamodel, var3981=$r1, var2361=$r12, var871=$r17, var909=$r18, var859=$i3, var1174=$r19}
; {org.hibernate.tuple.entity.AbstractEntityTuplizer=var1879, r0=var2800, java.lang.Object=var876, r2=var2574, r13=var590, null_type=var3727, i2=var1190, $r14=var1276, r15=var866, org.hibernate.tuple.entity.EntityMetamodel=var239, $r1=var3981, $r12=var2361, $r17=var871, $r18=var909, $i3=var859, $r19=var1174}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer;	r2 := @parameter0: java.lang.Object;	r13 := @parameter1: java.lang.String;	i2 = virtualinvoke r13.<java.lang.String: int indexOf(int)>(46);	if i2 <= 0 goto $r14 = r13;	$r14 = r13;	r15 = $r14;	$r1 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel>;	$r12 = virtualinvoke $r1.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>($r14);	if $r12 != null goto $r17 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel>;	$r17 = r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel>;	$r18 = virtualinvoke $r17.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r15);	$i3 = virtualinvoke $r18.<java.lang.Integer: int intValue()>();	$r19 = virtualinvoke r0.<org.hibernate.tuple.entity.AbstractEntityTuplizer: java.lang.Object getPropertyValue(java.lang.Object,int)>(r2, $i3);	if i2 <= 0 goto return $r19;	return $r19
;block_num 5