(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun specifier/530380179 (var2952) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun varName/530380179 (var2952) String)
(declare-const null-var2952 var2952)
(declare-const var1513 var2952) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest 
(assert (not (= var1513 null-var2952)))
(define-const var2860 String (specifier/530380179 var1513)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest: java.lang.String specifier> 
(assert true)
(define-const var1340 Int (hashCode/-467973558 var2860)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3181 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1340)))) ; Statement: i2 = 1000003 ^ $i0 
(define-const var3832 Int (* var3181 1000003)) ; Statement: i3 = i2 * 1000003 
(define-const var3299 String (varName/530380179 var1513)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest: java.lang.String varName> 
(assert true)
(define-const var2536 Int (hashCode/-467973558 var3299)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1961 Int (bv2nat (bvxor ((_ int2bv 64) var3832) ((_ int2bv 64) var2536)))) ; Statement: i4 = i3 ^ $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {specifier/530380179=([com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest], java.lang.String), hashCode/-467973558=([java.lang.String], int), varName/530380179=([com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest], java.lang.String)}
; {var2952=com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest, var1513=r0, var2860=$r1, var1340=$i0, var3181=i2, var3832=i3, var3299=$r2, var2536=$i1, var1961=i4}
; {com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest=var2952, r0=var1513, $r1=var2860, $i0=var1340, i2=var3181, i3=var3832, $r2=var3299, $i1=var2536, i4=var1961}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest: java.lang.String specifier>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i2 = 1000003 ^ $i0;	i3 = i2 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteModulesToCommonJsModules_ModuleRequest: java.lang.String varName>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i4 = i3 ^ $i1;	return i4
;block_num 1