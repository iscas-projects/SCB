(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2635 0)
(declare-sort var710 0)
(declare-sort var2704 0)
(declare-sort var3816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/1873055324 (var2635) var710)
(declare-fun stripNameSuffixes/1014631976 (var710) var2704)
(declare-fun iterator/-1001106692 (var2704) var3816)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var3816-to-Iterator (var3816) Iterator)
(declare-fun stripNamePrefixes/1014631976 (var710) var2704)
(declare-fun stripTypesList/1014631976 (var710) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun stripTypePrefixesList/1014631976 (var710) (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2635 var2635)
(declare-const var2022 var2635) ; Statement: r1 := @this: com.google.javascript.jscomp.StripCode$StripCodeConfigRecord 
(assert (not (= var2022 null-var2635)))
(define-const var1316 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1316)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1316!1 String)
(assert (= var1316!1 ""))
(assert true)
;(assert (append/672562846 var1316!1 "=== stripNameSuffixes ===\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=== stripNameSuffixes ===\n") 
(declare-const var1316!2 String)
(assert (= var1316!2 (str.++ var1316!1 "=== stripNameSuffixes ===\n")))
(define-const var1271 var710 (this$0/1873055324 var2022)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.StripCode$StripCodeConfigRecord: com.google.javascript.jscomp.StripCode this$0> 
(define-const var620 var2704 (stripNameSuffixes/1014631976 var1271)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.StripCode: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet stripNameSuffixes> 
(assert true)
(define-const var489 var3816 (iterator/-1001106692 var620)) ; Statement: r15 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var502 Bool (Iterator_hasNext/-1669924200 (cast-from-var3816-to-Iterator var489))) ; Statement: $z0 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(assert (= (ite var502 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1316!2 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1316!3 String)
(assert (= var1316!3 (str.++ var1316!2 "\n")))
(assert true)
;(assert (append/672562846 var1316!3 "=== stripNamePrefixes ===\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=== stripNamePrefixes ===\n") 
(declare-const var1316!4 String)
(assert (= var1316!4 (str.++ var1316!3 "=== stripNamePrefixes ===\n")))
(define-const var2030 var710 (this$0/1873055324 var2022)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.StripCode$StripCodeConfigRecord: com.google.javascript.jscomp.StripCode this$0> 
(define-const var2209 var2704 (stripNamePrefixes/1014631976 var2030)) ; Statement: $r5 = $r4.<com.google.javascript.jscomp.StripCode: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet stripNamePrefixes> 
(assert true)
(define-const var531 var3816 (iterator/-1001106692 var2209)) ; Statement: r17 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var882 Bool (Iterator_hasNext/-1669924200 (cast-from-var3816-to-Iterator var531))) ; Statement: $z1 = interfaceinvoke r17.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(assert (= (ite var882 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/672562846 var1316!4 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1316!5 String)
(assert (= var1316!5 (str.++ var1316!4 "\n")))
(assert true)
;(assert (append/672562846 var1316!5 "=== stripTypesList ===\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=== stripTypesList ===\n") 
(declare-const var1316!6 String)
(assert (= var1316!6 (str.++ var1316!5 "=== stripTypesList ===\n")))
(define-const var2701 var710 (this$0/1873055324 var2022)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.StripCode$StripCodeConfigRecord: com.google.javascript.jscomp.StripCode this$0> 
(define-const var3429 (Array Int String) (stripTypesList/1014631976 var2701)) ; Statement: r19 = $r6.<com.google.javascript.jscomp.StripCode: java.lang.String[] stripTypesList> 
(define-const var3717 Int (getLength-Arr-String-1 var3429)) ; Statement: i0 = lengthof r19 
(define-const var1933 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(assert (>= var1933 var3717)) ; Cond: i1 >= i0 
(assert true)
;(assert (append/672562846 var1316!6 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1316!7 String)
(assert (= var1316!7 (str.++ var1316!6 "\n")))
(assert true)
;(assert (append/672562846 var1316!7 "=== stripTypePrefixesList ===\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=== stripTypePrefixesList ===\n") 
(declare-const var1316!8 String)
(assert (= var1316!8 (str.++ var1316!7 "=== stripTypePrefixesList ===\n")))
(define-const var3546 var710 (this$0/1873055324 var2022)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.StripCode$StripCodeConfigRecord: com.google.javascript.jscomp.StripCode this$0> 
(define-const var629 (Array Int String) (stripTypePrefixesList/1014631976 var3546)) ; Statement: r21 = $r7.<com.google.javascript.jscomp.StripCode: java.lang.String[] stripTypePrefixesList> 
(define-const var202 Int (getLength-Arr-String-1 var629)) ; Statement: i2 = lengthof r21 
(define-const var3876 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(assert (>= var3876 var202)) ; Cond: i3 >= i2 
(assert true)
;(assert (append/672562846 var1316!8 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1316!9 String)
(assert (= var1316!9 (str.++ var1316!8 "\n")))
(assert true)
(define-const var1596 String (toString/-2075883882 var1316!9)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/1873055324=([com.google.javascript.jscomp.StripCode$StripCodeConfigRecord], com.google.javascript.jscomp.StripCode), stripNameSuffixes/1014631976=([com.google.javascript.jscomp.StripCode], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), iterator/-1001106692=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var3816-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), stripNamePrefixes/1014631976=([com.google.javascript.jscomp.StripCode], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), stripTypesList/1014631976=([com.google.javascript.jscomp.StripCode], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), stripTypePrefixesList/1014631976=([com.google.javascript.jscomp.StripCode], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2635=com.google.javascript.jscomp.StripCode$StripCodeConfigRecord, var2022=r1, var1316=$r0, var710=com.google.javascript.jscomp.StripCode, var1271=$r2, var2704=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var620=$r3, var3816=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var489=r15, var502=$z0, var2030=$r4, var2209=$r5, var531=r17, var882=$z1, var2701=$r6, var3429=r19, var3717=i0, var1933=i1, var3546=$r7, var629=r21, var202=i2, var3876=i3, var1596=$r8}
; {com.google.javascript.jscomp.StripCode$StripCodeConfigRecord=var2635, r1=var2022, $r0=var1316, com.google.javascript.jscomp.StripCode=var710, $r2=var1271, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2704, $r3=var620, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var3816, r15=var489, $z0=var502, $r4=var2030, $r5=var2209, r17=var531, $z1=var882, $r6=var2701, r19=var3429, i0=var3717, i1=var1933, $r7=var3546, r21=var629, i2=var202, i3=var3876, $r8=var1596}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.StripCode$StripCodeConfigRecord;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=== stripNameSuffixes ===\n");	$r2 = r1.<com.google.javascript.jscomp.StripCode$StripCodeConfigRecord: com.google.javascript.jscomp.StripCode this$0>;	$r3 = $r2.<com.google.javascript.jscomp.StripCode: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet stripNameSuffixes>;	r15 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=== stripNamePrefixes ===\n");	$r4 = r1.<com.google.javascript.jscomp.StripCode$StripCodeConfigRecord: com.google.javascript.jscomp.StripCode this$0>;	$r5 = $r4.<com.google.javascript.jscomp.StripCode: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet stripNamePrefixes>;	r17 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z1 = interfaceinvoke r17.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=== stripTypesList ===\n");	$r6 = r1.<com.google.javascript.jscomp.StripCode$StripCodeConfigRecord: com.google.javascript.jscomp.StripCode this$0>;	r19 = $r6.<com.google.javascript.jscomp.StripCode: java.lang.String[] stripTypesList>;	i0 = lengthof r19;	i1 = 0;	if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=== stripTypePrefixesList ===\n");	$r7 = r1.<com.google.javascript.jscomp.StripCode$StripCodeConfigRecord: com.google.javascript.jscomp.StripCode this$0>;	r21 = $r7.<com.google.javascript.jscomp.StripCode: java.lang.String[] stripTypePrefixesList>;	i2 = lengthof r21;	i3 = 0;	if i3 >= i2 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 9