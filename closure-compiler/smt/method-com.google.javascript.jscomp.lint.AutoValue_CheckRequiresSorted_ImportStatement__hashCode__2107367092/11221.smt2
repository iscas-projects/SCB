(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1884 0)
(declare-sort var3797 0)
(declare-sort var1013 0)
(declare-sort var1535 0)
(declare-sort var2044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodes/1941700787 (var1884) var3797)
(declare-fun hashCode/1337417431 (var3797) Int)
(declare-fun primitive/1941700787 (var1884) var1013)
(declare-fun hashCode/385986394 (var1535) Int)
(declare-fun cast-from-var1013-to-var1535 (var1013) var1535)
(declare-fun namespace/1941700787 (var1884) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun alias/1941700787 (var1884) String)
(declare-fun destructures/1941700787 (var1884) var3797)
(declare-const null-var1884 var1884)
(declare-const null-String String)
(declare-const null-var3797 var3797)
(declare-const var1971 var1884) ; Statement: r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement 
(assert (not (= var1971 null-var1884)))
(define-const var2361 var3797 (nodes/1941700787 var1971)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes> 
(assert true)
(define-const var3265 Int (hashCode/1337417431 var2361)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3064 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3265)))) ; Statement: i6 = 1000003 ^ $i0 
(define-const var3371 Int (* var3064 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var2554 var1013 (primitive/1941700787 var1971)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive> 
(assert true)
(define-const var2298 Int (hashCode/385986394 (cast-from-var1013-to-var1535 var2554))) ; Statement: $i1 = virtualinvoke $r2.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive: int hashCode()>() 
(define-const var970 Int (bv2nat (bvxor ((_ int2bv 64) var3371) ((_ int2bv 64) var2298)))) ; Statement: i8 = i7 ^ $i1 
(define-const var3108 Int (* var970 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var1506 String (namespace/1941700787 var1971)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String namespace> 
(assert true)
(define-const var446 Int (hashCode/-467973558 var1506)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var909 Int (bv2nat (bvxor ((_ int2bv 64) var3108) ((_ int2bv 64) var446)))) ; Statement: i10 = i9 ^ $i2 
(define-const var244 Int (* var909 1000003)) ; Statement: i11 = i10 * 1000003 
(define-const var1762 String (alias/1941700787 var1971)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
(assert (not (= var1762 null-String))) ; Cond: $r4 != null 
(define-const var173 String (alias/1941700787 var1971)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias> 
(assert true)
(define-const var1314 Int (hashCode/-467973558 var173)) ; Statement: $i12 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var647 Int (bv2nat (bvxor ((_ int2bv 64) var244) ((_ int2bv 64) var1314)))) ; Statement: $i4 = i11 ^ $i12 
(define-const var1383 Int (* var647 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var2201 var3797 (destructures/1941700787 var1971)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures> 
(assert (not (not (= var2201 null-var3797)))) ; Negate: Cond: $r6 != null  
(define-const var1729 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i3 = $i5 ^ $i13] 
(assert true) ; Non Conditional
(define-const var233 Int (bv2nat (bvxor ((_ int2bv 64) var1383) ((_ int2bv 64) var1729)))) ; Statement: $i3 = $i5 ^ $i13 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {nodes/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), primitive/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive), hashCode/385986394=([java.lang.Enum], int), cast-from-var1013-to-var1535=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive], java.lang.Enum), namespace/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], java.lang.String), hashCode/-467973558=([java.lang.String], int), alias/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], java.lang.String), destructures/1941700787=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)}
; {var1884=com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement, var1971=r0, var3797=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2361=$r1, var3265=$i0, var3064=i6, var3371=i7, var1013=com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive, var2554=$r2, var1535=java.lang.Enum, var2298=$i1, var970=i8, var3108=i9, var1506=$r3, var446=$i2, var909=i10, var244=i11, var1762=$r4, var2044=null_type, var173=$r5, var1314=$i12, var647=$i4, var1383=$i5, var2201=$r6, var1729=$i13, var233=$i3}
; {com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement=var1884, r0=var1971, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3797, $r1=var2361, $i0=var3265, i6=var3064, i7=var3371, com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive=var1013, $r2=var2554, java.lang.Enum=var1535, $i1=var2298, i8=var970, i9=var3108, $r3=var1506, $i2=var446, i10=var909, i11=var244, $r4=var1762, null_type=var2044, $r5=var173, $i12=var1314, $i4=var647, $i5=var1383, $r6=var2201, $i13=var1729, $i3=var233}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement;	$r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i6 = 1000003 ^ $i0;	i7 = i6 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive>;	$i1 = virtualinvoke $r2.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive: int hashCode()>();	i8 = i7 ^ $i1;	i9 = i8 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String namespace>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i10 = i9 ^ $i2;	i11 = i10 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	$r5 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: java.lang.String alias>;	$i12 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	$i4 = i11 ^ $i12;	$i5 = $i4 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures>;	$i13 = 0;	goto [?= $i3 = $i5 ^ $i13];	$i3 = $i5 ^ $i13;	return $i3
;block_num 5