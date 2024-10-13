(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var155 0)
(declare-sort var819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypeName/-183261408 (var155) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun members/1490716157 (var155) var819)
(declare-fun var819_hashCode/1768810987 (var819) Int)
(declare-const null-var155 var155)
(declare-const null-var819 var819)
(declare-const var1637 var155) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.Annotation 
(assert (not (= var1637 null-var155)))
(assert true)
(define-const var249 String (getTypeName/-183261408 var1637)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.lang.String getTypeName()>() 
(assert true)
(define-const var264 Int (hashCode/-467973558 var249)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1002 var819 (members/1490716157 var1637)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members> 
(assert (not (= var1002 null-var819))) ; Cond: $r2 != null 
(define-const var1222 var819 (members/1490716157 var1637)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members> 
(define-const var1748 Int (var819_hashCode/1768810987 var1222)) ; Statement: $i2 = interfaceinvoke $r3.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var131 Int (+ var264 var1748)) ; Statement: $i1 = $i0 + $i2 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypeName/-183261408=([org.apache.ibatis.javassist.bytecode.annotation.Annotation], java.lang.String), hashCode/-467973558=([java.lang.String], int), members/1490716157=([org.apache.ibatis.javassist.bytecode.annotation.Annotation], java.util.Map), var819_hashCode/1768810987=([java.util.Map], int)}
; {var155=org.apache.ibatis.javassist.bytecode.annotation.Annotation, var1637=r0, var249=$r1, var264=$i0, var819=java.util.Map, var1002=$r2, var1222=$r3, var1748=$i2, var131=$i1}
; {org.apache.ibatis.javassist.bytecode.annotation.Annotation=var155, r0=var1637, $r1=var249, $i0=var264, java.util.Map=var819, $r2=var1002, $r3=var1222, $i2=var1748, $i1=var131}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.Annotation;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.lang.String getTypeName()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members>;	$r3 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members>;	$i2 = interfaceinvoke $r3.<java.util.Map: int hashCode()>();	$i1 = $i0 + $i2;	return $i1
;block_num 3