(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var168 0)
(declare-sort var134 0)
(declare-sort var3240 0)
(declare-sort var431 0)
(declare-sort var1672 0)
(declare-sort var2861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3240_checkNotNullParameter/-2060636419 (var431 String) void)
(declare-fun cast-from-String-to-var431 (String) var431)
(declare-fun var1672_toUnicode/612999267 (String) String)
(declare-fun var3240_checkNotNullExpressionValue/47304269 (var431 String) void)
(declare-fun splitDomain/171713773 (var168 String) var2861)
(declare-fun findMatchingRule/-11390144 (var168 var2861) var2861)
(declare-fun var2861_size/-959786421 (var2861) Int)
(declare-fun var2861_get/-1216255739 (var2861 Int) var431)
(declare-fun cast-from-var431-to-String (var431) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var168 var168)
(declare-const null-String String)
(declare-const var2707 var168) ; Statement: r2 := @this: okhttp3.internal.publicsuffix.PublicSuffixDatabase 
(assert (not (= var2707 null-var168)))
(declare-const var3177 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3177 null-String)))
;(assert (var3240_checkNotNullParameter/-2060636419 (cast-from-String-to-var431 var3177) "domain")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "domain") 

(declare-const var3177!1 String)
(declare-const var3831 String)
(define-const var3848 String (var1672_toUnicode/612999267 var3177!1)) ; Statement: r1 = staticinvoke <java.net.IDN: java.lang.String toUnicode(java.lang.String)>(r0) 
;(assert (var3240_checkNotNullExpressionValue/47304269 (cast-from-String-to-var431 var3848) "unicodeDomain")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>(r1, "unicodeDomain") 

(declare-const var3848!1 String)
(declare-const var3620 String)
(assert true)
(define-const var1117 var2861 (splitDomain/171713773 var2707 var3848!1)) ; Statement: r3 = specialinvoke r2.<okhttp3.internal.publicsuffix.PublicSuffixDatabase: java.util.List splitDomain(java.lang.String)>(r1) 
(assert true)
(define-const var1932 var2861 (findMatchingRule/-11390144 var2707 var1117)) ; Statement: r4 = specialinvoke r2.<okhttp3.internal.publicsuffix.PublicSuffixDatabase: java.util.List findMatchingRule(java.util.List)>(r3) 
(define-const var3376 Int (var2861_size/-959786421 var1117)) ; Statement: $i1 = interfaceinvoke r3.<java.util.List: int size()>() 
(define-const var3920 Int (var2861_size/-959786421 var1932)) ; Statement: $i0 = interfaceinvoke r4.<java.util.List: int size()>() 
 ; Statement: if $i1 != $i0 goto $r5 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(0) 
(assert (not (not (= var3376 var3920)))) ; Negate: Cond: $i1 != $i0  
(define-const var904 var431 (var2861_get/-1216255739 var1932 0)) ; Statement: $r13 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1970 String (cast-from-var431-to-String var904)) ; Statement: $r14 = (java.lang.String) $r13 
(assert (and true (and (> (str.len var1970) 0) (<= 0 0))))
(define-const var1891 Int (charAt/698050440 var1970 0)) ; Statement: $c8 = virtualinvoke $r14.<java.lang.String: char charAt(int)>(0) 
(define-const var731 Int (cast-from-Int-to-Int var1891)) ; Statement: $i10 = (int) $c8 
 ; Statement: if $i10 == 33 goto $r5 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(0) 
(assert (not (= var731 33))) ; Negate: Cond: $i10 == 33  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3240_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var431=([java.lang.String], java.lang.Object), var1672_toUnicode/612999267=([java.lang.String], java.lang.String), var3240_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), splitDomain/171713773=([okhttp3.internal.publicsuffix.PublicSuffixDatabase, java.lang.String], java.util.List), findMatchingRule/-11390144=([okhttp3.internal.publicsuffix.PublicSuffixDatabase, java.util.List], java.util.List), var2861_size/-959786421=([java.util.List], int), var2861_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var431-to-String=([java.lang.Object], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var168=okhttp3.internal.publicsuffix.PublicSuffixDatabase, var2707=r2, var3177=r0, var134=null_type, var3240=kotlin.jvm.internal.Intrinsics, var431=java.lang.Object, var3831="domain", var1672=java.net.IDN, var3848=r1, var3620="unicodeDomain", var2861=java.util.List, var1117=r3, var1932=r4, var3376=$i1, var3920=$i0, var904=$r13, var1970=$r14, var1891=$c8, var731=$i10}
; {okhttp3.internal.publicsuffix.PublicSuffixDatabase=var168, r2=var2707, r0=var3177, null_type=var134, kotlin.jvm.internal.Intrinsics=var3240, java.lang.Object=var431, "domain"=var3831, java.net.IDN=var1672, r1=var3848, "unicodeDomain"=var3620, java.util.List=var2861, r3=var1117, r4=var1932, $i1=var3376, $i0=var3920, $r13=var904, $r14=var1970, $c8=var1891, $i10=var731}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: okhttp3.internal.publicsuffix.PublicSuffixDatabase;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "domain");	r1 = staticinvoke <java.net.IDN: java.lang.String toUnicode(java.lang.String)>(r0);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>(r1, "unicodeDomain");	r3 = specialinvoke r2.<okhttp3.internal.publicsuffix.PublicSuffixDatabase: java.util.List splitDomain(java.lang.String)>(r1);	r4 = specialinvoke r2.<okhttp3.internal.publicsuffix.PublicSuffixDatabase: java.util.List findMatchingRule(java.util.List)>(r3);	$i1 = interfaceinvoke r3.<java.util.List: int size()>();	$i0 = interfaceinvoke r4.<java.util.List: int size()>();	if $i1 != $i0 goto $r5 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(0);	$r13 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(0);	$r14 = (java.lang.String) $r13;	$c8 = virtualinvoke $r14.<java.lang.String: char charAt(int)>(0);	$i10 = (int) $c8;	if $i10 == 33 goto $r5 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(0);	return null
;block_num 3