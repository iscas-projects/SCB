(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var739 0)
(declare-sort var1109 0)
(declare-sort var1219 0)
(declare-sort var2804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1219_isArray/-2045800536 (var1109) Bool)
(declare-fun getClass/1258963082 (var1109) ClassObject)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun var2804_arrayMemberHash/-460030553 (ClassObject var1109) Int)
(declare-const null-String String)
(declare-const null-var1109 var1109)
(declare-const var974 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var974 null-String)))
(declare-const var2013 var1109) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2013 null-var1109)))
(assert true)
(define-const var891 Int (hashCode/-467973558 var974)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var805 Int (* var891 127)) ; Statement: i1 = $i0 * 127 
(define-const var2858 Bool (var1219_isArray/-2045800536 var2013)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean isArray(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = r1 instanceof java.lang.annotation.Annotation 
(assert (not (= (ite var2858 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1122 ClassObject (getClass/1258963082 var2013)) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1617 ClassObject (getComponentType/1960034130 var1122)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.Class getComponentType()>() 
(define-const var1778 Int (var2804_arrayMemberHash/-460030553 var1617 var2013)) ; Statement: $i6 = staticinvoke <org.apache.commons.lang3.AnnotationUtils: int arrayMemberHash(java.lang.Class,java.lang.Object)>($r4, r1) 
(define-const var2078 Int (bv2nat (bvxor ((_ int2bv 64) var805) ((_ int2bv 64) var1778)))) ; Statement: $i7 = i1 ^ $i6 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var1219_isArray/-2045800536=([java.lang.Object], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), getComponentType/1960034130=([java.lang.Class], java.lang.Class), var2804_arrayMemberHash/-460030553=([java.lang.Class, java.lang.Object], int)}
; {var974=r0, var739=null_type, var1109=java.lang.Object, var2013=r1, var891=$i0, var805=i1, var1219=org.apache.commons.lang3.ObjectUtils, var2858=$z0, var1122=$r3, var1617=$r4, var2804=org.apache.commons.lang3.AnnotationUtils, var1778=$i6, var2078=$i7}
; {r0=var974, null_type=var739, java.lang.Object=var1109, r1=var2013, $i0=var891, i1=var805, org.apache.commons.lang3.ObjectUtils=var1219, $z0=var2858, $r3=var1122, $r4=var1617, org.apache.commons.lang3.AnnotationUtils=var2804, $i6=var1778, $i7=var2078}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	i1 = $i0 * 127;	$z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean isArray(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = r1 instanceof java.lang.annotation.Annotation;	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.Class getComponentType()>();	$i6 = staticinvoke <org.apache.commons.lang3.AnnotationUtils: int arrayMemberHash(java.lang.Class,java.lang.Object)>($r4, r1);	$i7 = i1 ^ $i6;	return $i7
;block_num 2