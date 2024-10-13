(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1116 0)
(declare-sort var2969 0)
(declare-sort var2046 0)
(declare-sort var777 0)
(declare-sort var614 0)
(declare-sort var3230 0)
(declare-sort var1661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2046_builder/-1094253099 () var2969)
(declare-fun getAllScopes/737172076 (var1116) var777)
(declare-fun var777_iterator/-1617794947 (var777) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun build/361856880 (var2969) var2046)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var614-init () var614)
(declare-fun <init>/22626498 (var614 var777) void)
(declare-fun getAllSymbols/512915288 (var1116) var3230)
(declare-fun iterator/-607031900 (var3230) var1661)
(declare-fun cast-from-var1661-to-Iterator (var1661) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1116 var1116)
(declare-const var383 var1116) ; Statement: r1 := @this: com.google.javascript.jscomp.SymbolTable 
(assert (not (= var383 null-var1116)))
(define-const var650 var2969 var2046_builder/-1094253099) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder builder()>() 
(assert true)
(define-const var1450 var777 (getAllScopes/737172076 var383)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: java.util.Collection getAllScopes()>() 
(define-const var3172 Iterator (var777_iterator/-1617794947 var1450)) ; Statement: r20 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3356 Bool (Iterator_hasNext/-1669924200 var3172)) ; Statement: $z0 = interfaceinvoke r20.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap build()>() 
(assert (= (ite var3356 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2247 var2046 (build/361856880 var650)) ; Statement: r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap build()>() 
(define-const var2817 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2817)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2817!1 String)
(assert (= var2817!1 ""))
(assert true)
(define-const var329 var777 (getAllScopes/737172076 var383)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: java.util.Collection getAllScopes()>() 
(define-const var3763 Iterator (var777_iterator/-1617794947 var329)) ; Statement: r23 = interfaceinvoke $r4.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3428 Bool (Iterator_hasNext/-1669924200 var3763)) ; Statement: $z1 = interfaceinvoke r23.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = new java.util.LinkedHashSet 
(assert (= (ite var3428 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2823 var614 var614-init) ; Statement: $r5 = new java.util.LinkedHashSet 
(assert true)
(define-const var496 var777 (getAllScopes/737172076 var383)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: java.util.Collection getAllScopes()>() 
(assert true)
;(assert (<init>/22626498 var2823 var496)) ; Statement: specialinvoke $r5.<java.util.LinkedHashSet: void <init>(java.util.Collection)>($r6) 

(declare-const var2823!1 var614)
(declare-const var496!1 var777)
(assert true)
(define-const var3868 var3230 (getAllSymbols/512915288 var383)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getAllSymbols()>() 
(assert true)
(define-const var3332 var1661 (iterator/-607031900 var3868)) ; Statement: r25 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1474 Bool (Iterator_hasNext/-1669924200 (cast-from-var1661-to-Iterator var3332))) ; Statement: $z3 = interfaceinvoke r25.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1474 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var140 String (toString/-2075883882 var2817!1)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2046_builder/-1094253099=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder), getAllScopes/737172076=([com.google.javascript.jscomp.SymbolTable], java.util.Collection), var777_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), build/361856880=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var614-init=([], java.util.LinkedHashSet), <init>/22626498=([java.util.LinkedHashSet, java.util.Collection], void), getAllSymbols/512915288=([com.google.javascript.jscomp.SymbolTable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), iterator/-607031900=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), cast-from-var1661-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1116=com.google.javascript.jscomp.SymbolTable, var383=r1, var2969=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder, var2046=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap, var650=r0, var777=java.util.Collection, var1450=$r2, var3172=r20, var3356=$z0, var2247=r22, var2817=$r3, var329=$r4, var3763=r23, var3428=$z1, var614=java.util.LinkedHashSet, var2823=$r5, var496=$r6, var3230=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3868=$r7, var1661=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var3332=r25, var1474=$z3, var140=$r8}
; {com.google.javascript.jscomp.SymbolTable=var1116, r1=var383, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder=var2969, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap=var2046, r0=var650, java.util.Collection=var777, $r2=var1450, r20=var3172, $z0=var3356, r22=var2247, $r3=var2817, $r4=var329, r23=var3763, $z1=var3428, java.util.LinkedHashSet=var614, $r5=var2823, $r6=var496, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3230, $r7=var3868, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var1661, r25=var3332, $z3=var1474, $r8=var140}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SymbolTable;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder builder()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: java.util.Collection getAllScopes()>();	r20 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r20.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap build()>();	r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap build()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: java.util.Collection getAllScopes()>();	r23 = interfaceinvoke $r4.<java.util.Collection: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r23.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = new java.util.LinkedHashSet;	$r5 = new java.util.LinkedHashSet;	$r6 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: java.util.Collection getAllScopes()>();	specialinvoke $r5.<java.util.LinkedHashSet: void <init>(java.util.Collection)>($r6);	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getAllSymbols()>();	r25 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z3 = interfaceinvoke r25.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 7