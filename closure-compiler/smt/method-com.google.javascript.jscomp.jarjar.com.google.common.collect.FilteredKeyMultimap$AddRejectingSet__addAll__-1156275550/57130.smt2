(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3116 0)
(declare-sort var3516 0)
(declare-sort var3363 0)
(declare-sort var1230 0)
(declare-sort var1139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3363_checkNotNull/1446102589 (var1230) var1230)
(declare-fun cast-from-var3516-to-var1230 (var3516) var1230)
(declare-fun var1139-init () var1139)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/1677369175 (var3116) var1230)
(declare-fun append/-1031950772 (String var1230) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1139 String) void)
(declare-const null-var3116 var3116)
(declare-const null-var3516 var3516)
(declare-const var40 var3116) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet 
(assert (not (= var40 null-var3116)))
(declare-const var2720 var3516) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var2720 null-var3516)))
;(assert (var3363_checkNotNull/1446102589 (cast-from-var3516-to-var1230 var2720))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2720!1 var3516)
(define-const var927 var1139 var1139-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2852 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2852)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2852!1 String)
(assert (= var2852!1 ""))
(assert true)
(define-const var3609 String (append/672562846 var2852!1 "Key does not satisfy predicate: ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key does not satisfy predicate: ") 
(declare-const var2852!2 String)
(assert (= var2852!2 (str.++ var2852!1 "Key does not satisfy predicate: ")))
(define-const var2043 var1230 (key/1677369175 var40)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet: java.lang.Object key> 
(assert true)
(define-const var342 String (append/-1031950772 var3609 var2043)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3609!1 String)
(assert (str.prefixof var3609 var3609!1))
(assert true)
(define-const var3219 String (toString/-2075883882 var342)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var927 var3219)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var927!1 var1139)
(declare-const var3219!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3363_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var3516-to-var1230=([java.util.Collection], java.lang.Object), var1139-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/1677369175=([com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3116=com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet, var40=r3, var3516=java.util.Collection, var2720=r0, var3363=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1230=java.lang.Object, var1139=java.lang.IllegalArgumentException, var927=$r1, var2852=$r2, var3609=$r5, var2043=$r4, var342=$r6, var3219=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet=var3116, r3=var40, java.util.Collection=var3516, r0=var2720, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3363, java.lang.Object=var1230, java.lang.IllegalArgumentException=var1139, $r1=var927, $r2=var2852, $r5=var3609, $r4=var2043, $r6=var342, $r7=var3219}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet;	r0 := @parameter0: java.util.Collection;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key does not satisfy predicate: ");	$r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet: java.lang.Object key>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 1