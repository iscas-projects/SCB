(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3361 0)
(declare-sort var1697 0)
(declare-sort var719 0)
(declare-sort var3914 0)
(declare-sort var1726 0)
(declare-sort var1046 0)
(declare-sort var331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var719_checkNotNull/1446102589 (var3914) var3914)
(declare-fun cast-from-String-to-var3914 (String) var3914)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1046_builder/1529695113 () var1726)
(declare-fun getTopLevelClasses/1945970518 (var3361) var1046)
(declare-fun iterator/-1001106692 (var1046) var331)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var331-to-Iterator (var331) Iterator)
(declare-fun build/274856470 (var1726) var1046)
(declare-const null-var3361 var3361)
(declare-const null-String String)
(declare-const var2189 var3361) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath 
(assert (not (= var2189 null-var3361)))
(declare-const var2645 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2645 null-String)))
;(assert (var719_checkNotNull/1446102589 (cast-from-String-to-var3914 var2645))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2645!1 String)
(define-const var2836 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2836)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2836!1 String)
(assert (= var2836!1 ""))
(assert true)
(define-const var376 String (append/672562846 var2836!1 var2645!1)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2836!2 String)
(assert (= var2836!2 (str.++ var2836!1 var2645!1)))
(assert true)
(define-const var1027 String (append/-1166366385 var376 46)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var376!1 String)
(assert (str.prefixof var376 var376!1))
(assert true)
(define-const var1813 String (toString/-2075883882 var1027)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var642 var1726 var1046_builder/1529695113) ; Statement: r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder builder()>() 
(assert true)
(define-const var3624 var1046 (getTopLevelClasses/1945970518 var2189)) ; Statement: $r7 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet getTopLevelClasses()>() 
(assert true)
(define-const var2867 var331 (iterator/-1001106692 var3624)) ; Statement: r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var304 Bool (Iterator_hasNext/-1669924200 (cast-from-var331-to-Iterator var2867))) ; Statement: $z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r9 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>() 
(assert (= (ite var304 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var768 var1046 (build/274856470 var642)) ; Statement: $r9 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var719_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var3914=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1046_builder/1529695113=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder), getTopLevelClasses/1945970518=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), iterator/-1001106692=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var331-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), build/274856470=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet)}
; {var3361=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath, var2189=r6, var2645=r0, var1697=null_type, var719=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3914=java.lang.Object, var2836=$r1, var376=$r2, var1027=$r3, var1813=r4, var1726=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder, var1046=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var642=r5, var3624=$r7, var331=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var2867=r8, var304=$z0, var768=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath=var3361, r6=var2189, r0=var2645, null_type=var1697, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var719, java.lang.Object=var3914, $r1=var2836, $r2=var376, $r3=var1027, r4=var1813, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder=var1726, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1046, r5=var642, $r7=var3624, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var331, r8=var2867, $z0=var304, $r9=var768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath;	r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder builder()>();	$r7 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet getTopLevelClasses()>();	r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r9 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>();	$r9 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>();	return $r9
;block_num 3