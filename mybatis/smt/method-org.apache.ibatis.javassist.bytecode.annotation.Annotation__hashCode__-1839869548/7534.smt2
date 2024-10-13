(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3109 0)
(declare-sort var1028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypeName/-183261408 (var3109) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun members/1490716157 (var3109) var1028)
(declare-const null-var3109 var3109)
(declare-const null-var1028 var1028)
(declare-const var1911 var3109) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.Annotation 
(assert (not (= var1911 null-var3109)))
(assert true)
(define-const var3368 String (getTypeName/-183261408 var1911)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.lang.String getTypeName()>() 
(assert true)
(define-const var3462 Int (hashCode/-467973558 var3368)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2928 var1028 (members/1490716157 var1911)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members> 
(assert (not (not (= var2928 null-var1028)))) ; Negate: Cond: $r2 != null  
(define-const var2250 Int 0) ; Statement: $i2 = 0 
 ; Statement: goto [?= $i1 = $i0 + $i2] 
(assert true) ; Non Conditional
(define-const var3241 Int (+ var3462 var2250)) ; Statement: $i1 = $i0 + $i2 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypeName/-183261408=([org.apache.ibatis.javassist.bytecode.annotation.Annotation], java.lang.String), hashCode/-467973558=([java.lang.String], int), members/1490716157=([org.apache.ibatis.javassist.bytecode.annotation.Annotation], java.util.Map)}
; {var3109=org.apache.ibatis.javassist.bytecode.annotation.Annotation, var1911=r0, var3368=$r1, var3462=$i0, var1028=java.util.Map, var2928=$r2, var2250=$i2, var3241=$i1}
; {org.apache.ibatis.javassist.bytecode.annotation.Annotation=var3109, r0=var1911, $r1=var3368, $i0=var3462, java.util.Map=var1028, $r2=var2928, $i2=var2250, $i1=var3241}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.Annotation;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.lang.String getTypeName()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.util.Map members>;	$i2 = 0;	goto [?= $i1 = $i0 + $i2];	$i1 = $i0 + $i2;	return $i1
;block_num 3