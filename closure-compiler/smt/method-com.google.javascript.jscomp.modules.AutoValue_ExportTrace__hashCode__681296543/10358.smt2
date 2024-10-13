(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2761 0)
(declare-sort var2146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun module/1163419760 (var2761) var2146)
(declare-fun hashCode/-63462234 (var2146) Int)
(declare-fun exportName/1163419760 (var2761) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2761 var2761)
(declare-const var1607 var2761) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_ExportTrace 
(assert (not (= var1607 null-var2761)))
(define-const var114 var2146 (module/1163419760 var1607)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_ExportTrace: com.google.javascript.jscomp.modules.UnresolvedModule module> 
(assert true)
(define-const var3420 Int (hashCode/-63462234 var114)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.UnresolvedModule: int hashCode()>() 
(define-const var3263 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3420)))) ; Statement: i2 = 1000003 ^ $i0 
(define-const var1378 Int (* var3263 1000003)) ; Statement: i3 = i2 * 1000003 
(define-const var58 String (exportName/1163419760 var1607)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_ExportTrace: java.lang.String exportName> 
(assert true)
(define-const var1568 Int (hashCode/-467973558 var58)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3341 Int (bv2nat (bvxor ((_ int2bv 64) var1378) ((_ int2bv 64) var1568)))) ; Statement: i4 = i3 ^ $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {module/1163419760=([com.google.javascript.jscomp.modules.AutoValue_ExportTrace], com.google.javascript.jscomp.modules.UnresolvedModule), hashCode/-63462234=([com.google.javascript.jscomp.modules.UnresolvedModule], int), exportName/1163419760=([com.google.javascript.jscomp.modules.AutoValue_ExportTrace], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2761=com.google.javascript.jscomp.modules.AutoValue_ExportTrace, var1607=r0, var2146=com.google.javascript.jscomp.modules.UnresolvedModule, var114=$r1, var3420=$i0, var3263=i2, var1378=i3, var58=$r2, var1568=$i1, var3341=i4}
; {com.google.javascript.jscomp.modules.AutoValue_ExportTrace=var2761, r0=var1607, com.google.javascript.jscomp.modules.UnresolvedModule=var2146, $r1=var114, $i0=var3420, i2=var3263, i3=var1378, $r2=var58, $i1=var1568, i4=var3341}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_ExportTrace;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_ExportTrace: com.google.javascript.jscomp.modules.UnresolvedModule module>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.UnresolvedModule: int hashCode()>();	i2 = 1000003 ^ $i0;	i3 = i2 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_ExportTrace: java.lang.String exportName>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i4 = i3 ^ $i1;	return i4
;block_num 1