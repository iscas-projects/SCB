(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2770 0)
(declare-sort var338 0)
(declare-sort var392 0)
(declare-sort var730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var392_checkPositionIndex/1928365885 (Int Int) Int)
(declare-fun var730-init () var730)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/458632265 (var2770) var338)
(declare-fun append/-1031950772 (String var338) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var730 String) void)
(declare-const null-var2770 var2770)
(declare-const null-Int Int)
(declare-const null-var338 var338)
(declare-const var2437 var2770) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList 
(assert (not (= var2437 null-var2770)))
(declare-const var221 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var221 null-Int)))
(declare-const var1380 var338) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var1380 null-var338)))
;(assert (var392_checkPositionIndex/1928365885 var221 0)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i0, 0) 

(declare-const var221!1 Int)
(declare-const var106 Int)
(define-const var603 var730 var730-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var772 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var772)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var772!1 String)
(assert (= var772!1 ""))
(assert true)
(define-const var778 String (append/672562846 var772!1 "Key does not satisfy predicate: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key does not satisfy predicate: ") 
(declare-const var772!2 String)
(assert (= var772!2 (str.++ var772!1 "Key does not satisfy predicate: ")))
(define-const var3231 var338 (key/458632265 var2437)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList: java.lang.Object key> 
(assert true)
(define-const var1802 String (append/-1031950772 var778 var3231)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var778!1 String)
(assert (str.prefixof var778 var778!1))
(assert true)
(define-const var2294 String (toString/-2075883882 var1802)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var603 var2294)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var603!1 var730)
(declare-const var2294!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var392_checkPositionIndex/1928365885=([int, int], int), var730-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/458632265=([com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2770=com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList, var2437=r2, var221=i0, var338=java.lang.Object, var1380=r7, var392=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var106=0, var730=java.lang.IllegalArgumentException, var603=$r0, var772=$r1, var778=$r4, var3231=$r3, var1802=$r5, var2294=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList=var2770, r2=var2437, i0=var221, java.lang.Object=var338, r7=var1380, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var392, 0=var106, java.lang.IllegalArgumentException=var730, $r0=var603, $r1=var772, $r4=var778, $r3=var3231, $r5=var1802, $r6=var2294}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList;	i0 := @parameter0: int;	r7 := @parameter1: java.lang.Object;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i0, 0);	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key does not satisfy predicate: ");	$r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList: java.lang.Object key>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1