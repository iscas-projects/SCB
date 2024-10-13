(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var872 0)
(declare-sort var3880 0)
(declare-sort var3713 0)
(declare-sort var3426 0)
(declare-sort var621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodes/1941700787 (var872) var3880)
(declare-fun hashCode/1337417431 (var3880) Int)
(declare-fun primitive/1941700787 (var872) var3713)
(declare-fun hashCode/385986394 (var3426) Int)
(declare-fun cast-from-var3713-to-var3426 (var3713) var3426)
(declare-fun namespace/1941700787 (var872) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun alias/1941700787 (var872) String)
(declare-fun destructures/1941700787 (var872) var3880)
(declare-const null-var872 var872)
(declare-const null-String String)
(declare-const null-var3880 var3880)
(declare-const var3911 var872) ; Statement: r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement 
(assert (not (= var3911 null-var872)))
(define-const var0 var3880 (nodes/1941700787 var3911)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes> 
(assert true)
(define-const var3912 Int (hashCode/1337417431 var0)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2442 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3912)))) ; Statement: i6 = 1000003 ^ $i0 
(define-const var1536 Int (* var2442 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var2287 var3713 (primitive/1941700787 var3911)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive> 
(assert true)
(define-const var1444 Int (hashCode/385986394 (cast-from-var3713-to-var3426 var2287))) ; Statement: $i1 = virtualinvoke $r2.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive: int hashCode()>() 
(define-const var2240 Int (bv2nat (bvxor ((_ int2bv 64) var1536) ((_ int2bv 64) var1444)))) ; Statement: i8 = i7 ^ $i1 
(define-const var939 Int (* var2240 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var2167 String (namespace/1941700787 var3911)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String namespace> 
(assert true)
(define-const var2155 Int (hashCode/-467973558 var2167)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1546 Int (bv2nat (bvxor ((_ int2bv 64) var939) ((_ int2bv 64) var2155)))) ; Statement: i10 = i9 ^ $i2 
(define-const var3893 Int (* var1546 1000003)) ; Statement: i11 = i10 * 1000003 
(define-const var2630 String (alias/1941700787 var3911)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
(assert (not (= var2630 null-String))) ; Cond: $r4 != null 
(define-const var2748 String (alias/1941700787 var3911)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
(assert true)
(define-const var2130 Int (hashCode/-467973558 var2748)) ; Statement: $i12 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1855 Int (bv2nat (bvxor ((_ int2bv 64) var3893) ((_ int2bv 64) var2130)))) ; Statement: $i4 = i11 ^ $i12 
(define-const var1649 Int (* var1855 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var1863 var3880 (destructures/1941700787 var3911)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
(assert (not (= var1863 null-var3880))) ; Cond: $r6 != null 
(define-const var1378 var3880 (destructures/1941700787 var3911)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
(assert true)
(define-const var3238 Int (hashCode/1337417431 var1378)) ; Statement: $i13 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var84 Int (bv2nat (bvxor ((_ int2bv 64) var1649) ((_ int2bv 64) var3238)))) ; Statement: $i3 = $i5 ^ $i13 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {nodes/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), primitive/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive), hashCode/385986394=([java.lang.Enum], int), cast-from-var3713-to-var3426=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive], java.lang.Enum), namespace/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], java.lang.String), hashCode/-467973558=([java.lang.String], int), alias/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], java.lang.String), destructures/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)}
; {var872=com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement, var3911=r0, var3880=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var0=$r1, var3912=$i0, var2442=i6, var1536=i7, var3713=com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive, var2287=$r2, var3426=java.lang.Enum, var1444=$i1, var2240=i8, var939=i9, var2167=$r3, var2155=$i2, var1546=i10, var3893=i11, var2630=$r4, var621=null_type, var2748=$r5, var2130=$i12, var1855=$i4, var1649=$i5, var1863=$r6, var1378=$r7, var3238=$i13, var84=$i3}
; {com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement=var872, r0=var3911, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3880, $r1=var0, $i0=var3912, i6=var2442, i7=var1536, com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive=var3713, $r2=var2287, java.lang.Enum=var3426, $i1=var1444, i8=var2240, i9=var939, $r3=var2167, $i2=var2155, i10=var1546, i11=var3893, $r4=var2630, null_type=var621, $r5=var2748, $i12=var2130, $i4=var1855, $i5=var1649, $r6=var1863, $r7=var1378, $i13=var3238, $i3=var84}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement;	$r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i6 = 1000003 ^ $i0;	i7 = i6 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive>;	$i1 = virtualinvoke $r2.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive: int hashCode()>();	i8 = i7 ^ $i1;	i9 = i8 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String namespace>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i10 = i9 ^ $i2;	i11 = i10 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	$r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	$i12 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	$i4 = i11 ^ $i12;	$i5 = $i4 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	$r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	$i13 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i3 = $i5 ^ $i13;	return $i3
;block_num 5