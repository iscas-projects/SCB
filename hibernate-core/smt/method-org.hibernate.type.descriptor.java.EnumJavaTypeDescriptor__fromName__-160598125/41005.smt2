(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var618 0)
(declare-sort var2950 0)
(declare-sort var704 0)
(declare-sort var405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJavaType/-733740137 (var704) ClassObject)
(declare-fun cast-from-var618-to-var704 (var618) var704)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var405_valueOf/2134747254 (ClassObject String) var405)
(declare-const null-var618 var618)
(declare-const null-String String)
(declare-const var1925 var618) ; Statement: r1 := @this: org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor 
(assert (not (= var1925 null-var618)))
(declare-const var1057 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1057 null-String)))
 ; Statement: if r0 != null goto $r3 = virtualinvoke r1.<org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor: java.lang.Class getJavaType()>() 
(assert (not (= var1057 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var919 ClassObject (getJavaType/-733740137 (cast-from-var618-to-var704 var1925))) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor: java.lang.Class getJavaType()>() 
(assert true)
(define-const var2100 String (trim/-847153721 var1057)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(define-const var3654 var405 (var405_valueOf/2134747254 var919 var2100)) ; Statement: $r4 = staticinvoke <java.lang.Enum: java.lang.Enum valueOf(java.lang.Class,java.lang.String)>($r3, $r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getJavaType/-733740137=([org.hibernate.type.descriptor.java.AbstractTypeDescriptor], java.lang.Class), cast-from-var618-to-var704=([org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor], org.hibernate.type.descriptor.java.AbstractTypeDescriptor), trim/-847153721=([java.lang.String], java.lang.String), var405_valueOf/2134747254=([java.lang.Class, java.lang.String], java.lang.Enum)}
; {var618=org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor, var1925=r1, var1057=r0, var2950=null_type, var704=org.hibernate.type.descriptor.java.AbstractTypeDescriptor, var919=$r3, var2100=$r2, var405=java.lang.Enum, var3654=$r4}
; {org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor=var618, r1=var1925, r0=var1057, null_type=var2950, org.hibernate.type.descriptor.java.AbstractTypeDescriptor=var704, $r3=var919, $r2=var2100, java.lang.Enum=var405, $r4=var3654}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r3 = virtualinvoke r1.<org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor: java.lang.Class getJavaType()>();	$r3 = virtualinvoke r1.<org.hibernate.type.descriptor.java.EnumJavaTypeDescriptor: java.lang.Class getJavaType()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r4 = staticinvoke <java.lang.Enum: java.lang.Enum valueOf(java.lang.Class,java.lang.String)>($r3, $r2);	return $r4
;block_num 2