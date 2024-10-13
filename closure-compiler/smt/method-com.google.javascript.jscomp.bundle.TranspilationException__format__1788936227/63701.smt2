(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2967 0)
(declare-sort var820 0)
(declare-sort var877 0)
(declare-sort var2312 0)
(declare-sort var332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toFormatter/-536173848 (var877 var2967 Bool) var2312)
(declare-fun iterator/-607031900 (var820) var332)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var332-to-Iterator (var332) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2967 var2967)
(declare-const null-var820 var820)
(declare-const var877-SINGLELINE var877)
(declare-const var3015 var2967) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.SourceExcerptProvider 
(assert (not (= var3015 null-var2967)))
(declare-const var972 var820) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList 
(assert (not (= var972 null-var820)))
(declare-const var2657 var820) ; Statement: r6 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList 
(assert (not (= var2657 null-var820)))
(define-const var1794 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1794)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1794!1 String)
(assert (= var1794!1 ""))
(assert true)
(define-const var1368 String (append/672562846 var1794!1 "Transpilation failed:\n")) ; Statement: r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Transpilation failed:\n") 
(declare-const var1794!2 String)
(assert (= var1794!2 (str.++ var1794!1 "Transpilation failed:\n")))
 ; Statement: if r2 == null goto $r3 = <com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.ErrorFormat SOURCELESS> 
(assert (not (= var3015 null-var2967))) ; Negate: Cond: r2 == null  
(define-const var2424 var877 var877-SINGLELINE) ; Statement: $r14 = <com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.ErrorFormat SINGLELINE> 
(assert true)
(define-const var2648 var2312 (toFormatter/-536173848 var2424 var3015 (ite (= 1 0) true false))) ; Statement: $r16 = virtualinvoke $r14.<com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.MessageFormatter toFormatter(com.google.javascript.jscomp.SourceExcerptProvider,boolean)>(r2, 0) 
 ; Statement: goto [?= r4 = $r16] 
(assert true) ; Non Conditional
(define-const var202 var2312 var2648) ; Statement: r4 = $r16 
(assert true)
(define-const var3275 var332 (iterator/-607031900 var972)) ; Statement: $r15 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3888 Bool (Iterator_hasNext/-1669924200 (cast-from-var332-to-Iterator var3275))) ; Statement: $z1 = interfaceinvoke $r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto r18 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert (= (ite var3888 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var107 var332 (iterator/-607031900 var2657)) ; Statement: r18 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1178 Bool (Iterator_hasNext/-1669924200 (cast-from-var332-to-Iterator var107))) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1178 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2454 String (toString/-2075883882 var1368)) ; Statement: $r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toFormatter/-536173848=([com.google.javascript.jscomp.ErrorFormat, com.google.javascript.jscomp.SourceExcerptProvider, boolean], com.google.javascript.jscomp.MessageFormatter), iterator/-607031900=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var332-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2967=com.google.javascript.jscomp.SourceExcerptProvider, var3015=r2, var820=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var972=r5, var2657=r6, var1794=$r0, var1368=r1, var877=com.google.javascript.jscomp.ErrorFormat, var2424=$r14, var2312=com.google.javascript.jscomp.MessageFormatter, var2648=$r16, var202=r4, var332=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var3275=$r15, var3888=$z1, var107=r18, var1178=$z0, var2454=$r7}
; {com.google.javascript.jscomp.SourceExcerptProvider=var2967, r2=var3015, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var820, r5=var972, r6=var2657, $r0=var1794, r1=var1368, com.google.javascript.jscomp.ErrorFormat=var877, $r14=var2424, com.google.javascript.jscomp.MessageFormatter=var2312, $r16=var2648, r4=var202, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var332, $r15=var3275, $z1=var3888, r18=var107, $z0=var1178, $r7=var2454}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: com.google.javascript.jscomp.SourceExcerptProvider;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList;	r6 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Transpilation failed:\n");	if r2 == null goto $r3 = <com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.ErrorFormat SOURCELESS>;	$r14 = <com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.ErrorFormat SINGLELINE>;	$r16 = virtualinvoke $r14.<com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.MessageFormatter toFormatter(com.google.javascript.jscomp.SourceExcerptProvider,boolean)>(r2, 0);	goto [?= r4 = $r16];	r4 = $r16;	$r15 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z1 = interfaceinvoke $r15.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto r18 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	r18 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 7