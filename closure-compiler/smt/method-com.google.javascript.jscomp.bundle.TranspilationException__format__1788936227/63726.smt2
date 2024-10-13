(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var383 0)
(declare-sort var2134 0)
(declare-sort var646 0)
(declare-sort var2988 0)
(declare-sort var1349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toFormatter/-536173848 (var646 var383 Bool) var2988)
(declare-fun iterator/-607031900 (var2134) var1349)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var1349-to-Iterator (var1349) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var383 var383)
(declare-const null-var2134 var2134)
(declare-const var646-SOURCELESS var646)
(declare-const var3810 var383) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.SourceExcerptProvider 
(assert (not (= var3810 null-var383)))
(declare-const var2640 var2134) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList 
(assert (not (= var2640 null-var2134)))
(declare-const var1116 var2134) ; Statement: r6 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList 
(assert (not (= var1116 null-var2134)))
(define-const var3826 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3826)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3826!1 String)
(assert (= var3826!1 ""))
(assert true)
(define-const var1086 String (append/672562846 var3826!1 "Transpilation failed:\n")) ; Statement: r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Transpilation failed:\n") 
(declare-const var3826!2 String)
(assert (= var3826!2 (str.++ var3826!1 "Transpilation failed:\n")))
 ; Statement: if r2 == null goto $r3 = <com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.ErrorFormat SOURCELESS> 
(assert (= var3810 null-var383)) ; Cond: r2 == null 
(define-const var3950 var646 var646-SOURCELESS) ; Statement: $r3 = <com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.ErrorFormat SOURCELESS> 
(assert true)
(define-const var2283 var2988 (toFormatter/-536173848 var3950 var3810 (ite (= 1 0) true false))) ; Statement: $r16 = virtualinvoke $r3.<com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.MessageFormatter toFormatter(com.google.javascript.jscomp.SourceExcerptProvider,boolean)>(r2, 0) 
(assert true) ; Non Conditional
(define-const var2643 var2988 var2283) ; Statement: r4 = $r16 
(assert true)
(define-const var1870 var1349 (iterator/-607031900 var2640)) ; Statement: $r15 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3689 Bool (Iterator_hasNext/-1669924200 (cast-from-var1349-to-Iterator var1870))) ; Statement: $z1 = interfaceinvoke $r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto r18 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert (= (ite var3689 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var591 var1349 (iterator/-607031900 var1116)) ; Statement: r18 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var259 Bool (Iterator_hasNext/-1669924200 (cast-from-var1349-to-Iterator var591))) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var259 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var599 String (toString/-2075883882 var1086)) ; Statement: $r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toFormatter/-536173848=([com.google.javascript.jscomp.ErrorFormat, com.google.javascript.jscomp.SourceExcerptProvider, boolean], com.google.javascript.jscomp.MessageFormatter), iterator/-607031900=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var1349-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var383=com.google.javascript.jscomp.SourceExcerptProvider, var3810=r2, var2134=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2640=r5, var1116=r6, var3826=$r0, var1086=r1, var646=com.google.javascript.jscomp.ErrorFormat, var3950=$r3, var2988=com.google.javascript.jscomp.MessageFormatter, var2283=$r16, var2643=r4, var1349=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var1870=$r15, var3689=$z1, var591=r18, var259=$z0, var599=$r7}
; {com.google.javascript.jscomp.SourceExcerptProvider=var383, r2=var3810, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2134, r5=var2640, r6=var1116, $r0=var3826, r1=var1086, com.google.javascript.jscomp.ErrorFormat=var646, $r3=var3950, com.google.javascript.jscomp.MessageFormatter=var2988, $r16=var2283, r4=var2643, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var1349, $r15=var1870, $z1=var3689, r18=var591, $z0=var259, $r7=var599}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: com.google.javascript.jscomp.SourceExcerptProvider;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList;	r6 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Transpilation failed:\n");	if r2 == null goto $r3 = <com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.ErrorFormat SOURCELESS>;	$r3 = <com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.ErrorFormat SOURCELESS>;	$r16 = virtualinvoke $r3.<com.google.javascript.jscomp.ErrorFormat: com.google.javascript.jscomp.MessageFormatter toFormatter(com.google.javascript.jscomp.SourceExcerptProvider,boolean)>(r2, 0);	r4 = $r16;	$r15 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z1 = interfaceinvoke $r15.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto r18 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	r18 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 7