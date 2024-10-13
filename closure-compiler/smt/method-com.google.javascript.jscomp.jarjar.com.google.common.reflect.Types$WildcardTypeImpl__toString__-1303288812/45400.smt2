(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1150 0)
(declare-sort var12 0)
(declare-sort var2292 0)
(declare-sort var1723 0)
(declare-sort var907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun lowerBounds/695403900 (var1150) var12)
(declare-fun iterator/-607031900 (var12) var2292)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var2292-to-Iterator (var2292) Iterator)
(declare-fun upperBounds/695403900 (var1150) var12)
(declare-fun var907_access$600/-708763079 (var1723) var1723)
(declare-fun cast-from-var12-to-var1723 (var12) var1723)
(declare-fun var1723_iterator/-693406491 (var1723) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1150 var1150)
(declare-const var1753 var1150) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl 
(assert (not (= var1753 null-var1150)))
(define-const var4 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var4 "?")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("?") 
(declare-const var4!1 String)
(assert (= var4!1 "?"))
(define-const var1961 var12 (lowerBounds/695403900 var1753)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList lowerBounds> 
(assert true)
(define-const var2560 var2292 (iterator/-607031900 var1961)) ; Statement: r14 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var61 Bool (Iterator_hasNext/-1669924200 (cast-from-var2292-to-Iterator var2560))) ; Statement: $z0 = interfaceinvoke r14.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList upperBounds> 
(assert (= (ite var61 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2617 var12 (upperBounds/695403900 var1753)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList upperBounds> 
(define-const var2272 var1723 (var907_access$600/-708763079 (cast-from-var12-to-var1723 var2617))) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: java.lang.Iterable access$600(java.lang.Iterable)>($r3) 
(define-const var559 Iterator (var1723_iterator/-693406491 var2272)) ; Statement: r16 = interfaceinvoke $r4.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3610 Bool (Iterator_hasNext/-1669924200 var559)) ; Statement: $z1 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3610 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2476 String (toString/-2075883882 var4!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), lowerBounds/695403900=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), iterator/-607031900=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var2292-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), upperBounds/695403900=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), var907_access$600/-708763079=([java.lang.Iterable], java.lang.Iterable), cast-from-var12-to-var1723=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.lang.Iterable), var1723_iterator/-693406491=([java.lang.Iterable], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1150=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl, var1753=r1, var4=$r0, var12=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1961=$r2, var2292=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var2560=r14, var61=$z0, var2617=$r3, var1723=java.lang.Iterable, var907=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types, var2272=$r4, var559=r16, var3610=$z1, var2476=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl=var1150, r1=var1753, $r0=var4, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var12, $r2=var1961, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var2292, r14=var2560, $z0=var61, $r3=var2617, java.lang.Iterable=var1723, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types=var907, $r4=var2272, r16=var559, $z1=var3610, $r5=var2476}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("?");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList lowerBounds>;	r14 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r14.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList upperBounds>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$WildcardTypeImpl: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList upperBounds>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: java.lang.Iterable access$600(java.lang.Iterable)>($r3);	r16 = interfaceinvoke $r4.<java.lang.Iterable: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5