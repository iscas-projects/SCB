(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3791 0)
(declare-sort var1596 0)
(declare-sort var3894 0)
(declare-sort var1667 0)
(declare-sort var2708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodes/1941700787 (var3791) var1596)
(declare-fun hashCode/1337417431 (var1596) Int)
(declare-fun primitive/1941700787 (var3791) var3894)
(declare-fun hashCode/385986394 (var1667) Int)
(declare-fun cast-from-var3894-to-var1667 (var3894) var1667)
(declare-fun namespace/1941700787 (var3791) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun alias/1941700787 (var3791) String)
(declare-fun destructures/1941700787 (var3791) var1596)
(declare-const null-var3791 var3791)
(declare-const null-String String)
(declare-const null-var1596 var1596)
(declare-const var3647 var3791) ; Statement: r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement 
(assert (not (= var3647 null-var3791)))
(define-const var1873 var1596 (nodes/1941700787 var3647)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes> 
(assert true)
(define-const var3510 Int (hashCode/1337417431 var1873)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var602 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3510)))) ; Statement: i6 = 1000003 ^ $i0 
(define-const var1971 Int (* var602 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var3476 var3894 (primitive/1941700787 var3647)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive> 
(assert true)
(define-const var60 Int (hashCode/385986394 (cast-from-var3894-to-var1667 var3476))) ; Statement: $i1 = virtualinvoke $r2.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive: int hashCode()>() 
(define-const var1605 Int (bv2nat (bvxor ((_ int2bv 64) var1971) ((_ int2bv 64) var60)))) ; Statement: i8 = i7 ^ $i1 
(define-const var3771 Int (* var1605 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var1421 String (namespace/1941700787 var3647)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String namespace> 
(assert true)
(define-const var3136 Int (hashCode/-467973558 var1421)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2933 Int (bv2nat (bvxor ((_ int2bv 64) var3771) ((_ int2bv 64) var3136)))) ; Statement: i10 = i9 ^ $i2 
(define-const var1517 Int (* var2933 1000003)) ; Statement: i11 = i10 * 1000003 
(define-const var541 String (alias/1941700787 var3647)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
(assert (not (not (= var541 null-String)))) ; Negate: Cond: $r4 != null  
(define-const var1879 Int 0) ; Statement: $i12 = 0 
 ; Statement: goto [?= $i4 = i11 ^ $i12] 
(assert true) ; Non Conditional
(define-const var2604 Int (bv2nat (bvxor ((_ int2bv 64) var1517) ((_ int2bv 64) var1879)))) ; Statement: $i4 = i11 ^ $i12 
(define-const var1386 Int (* var2604 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var1274 var1596 (destructures/1941700787 var3647)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
(assert (not (not (= var1274 null-var1596)))) ; Negate: Cond: $r6 != null  
(define-const var1626 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i3 = $i5 ^ $i13] 
(assert true) ; Non Conditional
(define-const var2547 Int (bv2nat (bvxor ((_ int2bv 64) var1386) ((_ int2bv 64) var1626)))) ; Statement: $i3 = $i5 ^ $i13 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {nodes/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), primitive/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive), hashCode/385986394=([java.lang.Enum], int), cast-from-var3894-to-var1667=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive], java.lang.Enum), namespace/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], java.lang.String), hashCode/-467973558=([java.lang.String], int), alias/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], java.lang.String), destructures/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)}
; {var3791=com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement, var3647=r0, var1596=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1873=$r1, var3510=$i0, var602=i6, var1971=i7, var3894=com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive, var3476=$r2, var1667=java.lang.Enum, var60=$i1, var1605=i8, var3771=i9, var1421=$r3, var3136=$i2, var2933=i10, var1517=i11, var541=$r4, var2708=null_type, var1879=$i12, var2604=$i4, var1386=$i5, var1274=$r6, var1626=$i13, var2547=$i3}
; {com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement=var3791, r0=var3647, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1596, $r1=var1873, $i0=var3510, i6=var602, i7=var1971, com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive=var3894, $r2=var3476, java.lang.Enum=var1667, $i1=var60, i8=var1605, i9=var3771, $r3=var1421, $i2=var3136, i10=var2933, i11=var1517, $r4=var541, null_type=var2708, $i12=var1879, $i4=var2604, $i5=var1386, $r6=var1274, $i13=var1626, $i3=var2547}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement;	$r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i6 = 1000003 ^ $i0;	i7 = i6 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive>;	$i1 = virtualinvoke $r2.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive: int hashCode()>();	i8 = i7 ^ $i1;	i9 = i8 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String namespace>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i10 = i9 ^ $i2;	i11 = i10 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	$i12 = 0;	goto [?= $i4 = i11 ^ $i12];	$i4 = i11 ^ $i12;	$i5 = $i4 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	$i13 = 0;	goto [?= $i3 = $i5 ^ $i13];	$i3 = $i5 ^ $i13;	return $i3
;block_num 5