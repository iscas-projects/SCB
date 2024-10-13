(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1013 0)
(declare-sort var129 0)
(declare-sort var3494 0)
(declare-sort var2142 0)
(declare-sort var3814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodes/1941700787 (var1013) var129)
(declare-fun hashCode/1337417431 (var129) Int)
(declare-fun primitive/1941700787 (var1013) var3494)
(declare-fun hashCode/385986394 (var2142) Int)
(declare-fun cast-from-var3494-to-var2142 (var3494) var2142)
(declare-fun namespace/1941700787 (var1013) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun alias/1941700787 (var1013) String)
(declare-fun destructures/1941700787 (var1013) var129)
(declare-const null-var1013 var1013)
(declare-const null-String String)
(declare-const null-var129 var129)
(declare-const var581 var1013) ; Statement: r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement 
(assert (not (= var581 null-var1013)))
(define-const var3173 var129 (nodes/1941700787 var581)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes> 
(assert true)
(define-const var1144 Int (hashCode/1337417431 var3173)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2829 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1144)))) ; Statement: i6 = 1000003 ^ $i0 
(define-const var3455 Int (* var2829 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var2875 var3494 (primitive/1941700787 var581)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive> 
(assert true)
(define-const var678 Int (hashCode/385986394 (cast-from-var3494-to-var2142 var2875))) ; Statement: $i1 = virtualinvoke $r2.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive: int hashCode()>() 
(define-const var2047 Int (bv2nat (bvxor ((_ int2bv 64) var3455) ((_ int2bv 64) var678)))) ; Statement: i8 = i7 ^ $i1 
(define-const var3428 Int (* var2047 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var3973 String (namespace/1941700787 var581)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String namespace> 
(assert true)
(define-const var1863 Int (hashCode/-467973558 var3973)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1388 Int (bv2nat (bvxor ((_ int2bv 64) var3428) ((_ int2bv 64) var1863)))) ; Statement: i10 = i9 ^ $i2 
(define-const var3408 Int (* var1388 1000003)) ; Statement: i11 = i10 * 1000003 
(define-const var3586 String (alias/1941700787 var581)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
(assert (not (not (= var3586 null-String)))) ; Negate: Cond: $r4 != null  
(define-const var3905 Int 0) ; Statement: $i12 = 0 
 ; Statement: goto [?= $i4 = i11 ^ $i12] 
(assert true) ; Non Conditional
(define-const var2443 Int (bv2nat (bvxor ((_ int2bv 64) var3408) ((_ int2bv 64) var3905)))) ; Statement: $i4 = i11 ^ $i12 
(define-const var1608 Int (* var2443 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var2890 var129 (destructures/1941700787 var581)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
(assert (not (= var2890 null-var129))) ; Cond: $r6 != null 
(define-const var3193 var129 (destructures/1941700787 var581)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
(assert true)
(define-const var1556 Int (hashCode/1337417431 var3193)) ; Statement: $i13 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1662 Int (bv2nat (bvxor ((_ int2bv 64) var1608) ((_ int2bv 64) var1556)))) ; Statement: $i3 = $i5 ^ $i13 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {nodes/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), primitive/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive), hashCode/385986394=([java.lang.Enum], int), cast-from-var3494-to-var2142=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive], java.lang.Enum), namespace/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], java.lang.String), hashCode/-467973558=([java.lang.String], int), alias/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], java.lang.String), destructures/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)}
; {var1013=com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement, var581=r0, var129=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3173=$r1, var1144=$i0, var2829=i6, var3455=i7, var3494=com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive, var2875=$r2, var2142=java.lang.Enum, var678=$i1, var2047=i8, var3428=i9, var3973=$r3, var1863=$i2, var1388=i10, var3408=i11, var3586=$r4, var3814=null_type, var3905=$i12, var2443=$i4, var1608=$i5, var2890=$r6, var3193=$r7, var1556=$i13, var1662=$i3}
; {com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement=var1013, r0=var581, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var129, $r1=var3173, $i0=var1144, i6=var2829, i7=var3455, com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive=var3494, $r2=var2875, java.lang.Enum=var2142, $i1=var678, i8=var2047, i9=var3428, $r3=var3973, $i2=var1863, i10=var1388, i11=var3408, $r4=var3586, null_type=var3814, $i12=var3905, $i4=var2443, $i5=var1608, $r6=var2890, $r7=var3193, $i13=var1556, $i3=var1662}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement;	$r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i6 = 1000003 ^ $i0;	i7 = i6 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive>;	$i1 = virtualinvoke $r2.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive: int hashCode()>();	i8 = i7 ^ $i1;	i9 = i8 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String namespace>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i10 = i9 ^ $i2;	i11 = i10 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	$i12 = 0;	goto [?= $i4 = i11 ^ $i12];	$i4 = i11 ^ $i12;	$i5 = $i4 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	$r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	$i13 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i3 = $i5 ^ $i13;	return $i3
;block_num 5