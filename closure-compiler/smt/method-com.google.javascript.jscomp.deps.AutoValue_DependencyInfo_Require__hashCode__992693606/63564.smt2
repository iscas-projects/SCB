(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1405 0)
(declare-sort var3973 0)
(declare-sort var1077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbol/1139912393 (var1405) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun rawText/1139912393 (var1405) String)
(declare-fun type/1139912393 (var1405) var3973)
(declare-fun hashCode/385986394 (var1077) Int)
(declare-fun cast-from-var3973-to-var1077 (var3973) var1077)
(declare-const null-var1405 var1405)
(declare-const var1473 var1405) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require 
(assert (not (= var1473 null-var1405)))
(define-const var1433 String (symbol/1139912393 var1473)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require: java.lang.String symbol> 
(assert true)
(define-const var3944 Int (hashCode/-467973558 var1433)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1112 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3944)))) ; Statement: i3 = 1000003 ^ $i0 
(define-const var3006 Int (* var1112 1000003)) ; Statement: i4 = i3 * 1000003 
(define-const var1889 String (rawText/1139912393 var1473)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require: java.lang.String rawText> 
(assert true)
(define-const var2322 Int (hashCode/-467973558 var1889)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3905 Int (bv2nat (bvxor ((_ int2bv 64) var3006) ((_ int2bv 64) var2322)))) ; Statement: i5 = i4 ^ $i1 
(define-const var1460 Int (* var3905 1000003)) ; Statement: i6 = i5 * 1000003 
(define-const var338 var3973 (type/1139912393 var1473)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require: com.google.javascript.jscomp.deps.DependencyInfo$Require$Type type> 
(assert true)
(define-const var2590 Int (hashCode/385986394 (cast-from-var3973-to-var1077 var338))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.jscomp.deps.DependencyInfo$Require$Type: int hashCode()>() 
(define-const var1103 Int (bv2nat (bvxor ((_ int2bv 64) var1460) ((_ int2bv 64) var2590)))) ; Statement: i7 = i6 ^ $i2 
 ; Statement: return i7 
(check-sat)
(get-model)
(get-unsat-core)
; {symbol/1139912393=([com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require], java.lang.String), hashCode/-467973558=([java.lang.String], int), rawText/1139912393=([com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require], java.lang.String), type/1139912393=([com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require], com.google.javascript.jscomp.deps.DependencyInfo$Require$Type), hashCode/385986394=([java.lang.Enum], int), cast-from-var3973-to-var1077=([com.google.javascript.jscomp.deps.DependencyInfo$Require$Type], java.lang.Enum)}
; {var1405=com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require, var1473=r0, var1433=$r1, var3944=$i0, var1112=i3, var3006=i4, var1889=$r2, var2322=$i1, var3905=i5, var1460=i6, var3973=com.google.javascript.jscomp.deps.DependencyInfo$Require$Type, var338=$r3, var1077=java.lang.Enum, var2590=$i2, var1103=i7}
; {com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require=var1405, r0=var1473, $r1=var1433, $i0=var3944, i3=var1112, i4=var3006, $r2=var1889, $i1=var2322, i5=var3905, i6=var1460, com.google.javascript.jscomp.deps.DependencyInfo$Require$Type=var3973, $r3=var338, java.lang.Enum=var1077, $i2=var2590, i7=var1103}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require;	$r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require: java.lang.String symbol>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 1000003 ^ $i0;	i4 = i3 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require: java.lang.String rawText>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i5 = i4 ^ $i1;	i6 = i5 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_DependencyInfo_Require: com.google.javascript.jscomp.deps.DependencyInfo$Require$Type type>;	$i2 = virtualinvoke $r3.<com.google.javascript.jscomp.deps.DependencyInfo$Require$Type: int hashCode()>();	i7 = i6 ^ $i2;	return i7
;block_num 1