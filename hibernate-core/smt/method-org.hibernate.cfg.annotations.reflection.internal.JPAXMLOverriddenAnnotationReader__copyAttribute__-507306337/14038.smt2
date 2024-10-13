(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort var1580 0)
(declare-sort var1192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var279 var279)
(declare-const null-String String)
(declare-const null-var1192 var1192)
(declare-const null-Bool Bool)
(declare-const var2285 var279) ; Statement: r3 := @parameter0: org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor 
(assert (not (= var2285 null-var279)))
(declare-const var268 String) ; Statement: r17 := @parameter1: java.lang.String 
(assert (not (= var268 null-String)))
(declare-const var2847 var1192) ; Statement: r11 := @parameter2: java.lang.Object 
(assert (not (= var2847 null-var1192)))
(declare-const var871 var1192) ; Statement: r0 := @parameter3: java.lang.Object 
(assert (not (= var871 null-var1192)))
(declare-const var1933 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1933 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var871 null-var1192)) ; Cond: r0 == null 
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var1933 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var279=org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor, var2285=r3, var268=r17, var1580=null_type, var1192=java.lang.Object, var2847=r11, var871=r0, var1933=z0}
; {org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor=var279, r3=var2285, r17=var268, null_type=var1580, java.lang.Object=var1192, r11=var2847, r0=var871, z0=var1933}
;seq 
;cnt {}
;stmts r3 := @parameter0: org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor;	r17 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.Object;	r0 := @parameter3: java.lang.Object;	z0 := @parameter4: boolean;	if r0 == null goto (branch);	if z0 == 0 goto return;	return
;block_num 3