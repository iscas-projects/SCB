(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3374 0)
(declare-sort var1293 0)
(declare-sort var163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getAllSymbols/512915288 (var3374) var1293)
(declare-fun iterator/-607031900 (var1293) var163)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var163-to-Iterator (var163) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3374 var3374)
(declare-const var1597 var3374) ; Statement: r1 := @this: com.google.javascript.jscomp.SymbolTable 
(assert (not (= var1597 null-var3374)))
(define-const var712 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var712)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var712!1 String)
(assert (= var712!1 ""))
(assert true)
(define-const var3079 var1293 (getAllSymbols/512915288 var1597)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getAllSymbols()>() 
(assert true)
(define-const var304 var163 (iterator/-607031900 var3079)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var820 Bool (Iterator_hasNext/-1669924200 (cast-from-var163-to-Iterator var304))) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var820 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1057 String (toString/-2075883882 var712!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getAllSymbols/512915288=([com.google.javascript.jscomp.SymbolTable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), iterator/-607031900=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var163-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3374=com.google.javascript.jscomp.SymbolTable, var1597=r1, var712=$r0, var1293=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3079=$r2, var163=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var304=r3, var820=$z0, var1057=$r4}
; {com.google.javascript.jscomp.SymbolTable=var3374, r1=var1597, $r0=var712, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1293, $r2=var3079, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var163, r3=var304, $z0=var820, $r4=var1057}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SymbolTable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getAllSymbols()>();	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3