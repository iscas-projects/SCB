(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1031 0)
(declare-sort var927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var927_join/1770488023 ((Array Int var1031) String Int Int) String)
(declare-const null-__Array__Int__var1031__ (Array Int var1031))
(declare-const null-Int Int)
(declare-const var2834 (Array Int var1031)) ; Statement: r0 := @parameter0: java.lang.Object[] 
(assert (not (= var2834 null-__Array__Int__var1031__)))
(declare-const var167 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var167 null-Int)))
(declare-const var1671 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1671 null-Int)))
(declare-const var1519 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1519 null-Int)))
(define-const var847 String (String_valueOf/-371898945 var167)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(define-const var3226 String (var927_join/1770488023 var2834 var847 var1671 var1519)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String join(java.lang.Object[],java.lang.String,int,int)>(r0, $r1, i1, i2) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), var927_join/1770488023=([java.lang.Object[], java.lang.String, int, int], java.lang.String)}
; {var1031=java.lang.Object, var2834=r0, var167=c0, var1671=i1, var1519=i2, var847=$r1, var927=org.apache.commons.lang3.StringUtils, var3226=$r2}
; {java.lang.Object=var1031, r0=var2834, c0=var167, i1=var1671, i2=var1519, $r1=var847, org.apache.commons.lang3.StringUtils=var927, $r2=var3226}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @parameter0: java.lang.Object[];	c0 := @parameter1: char;	i1 := @parameter2: int;	i2 := @parameter3: int;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r2 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String join(java.lang.Object[],java.lang.String,int,int)>(r0, $r1, i1, i2);	return $r2
;block_num 1