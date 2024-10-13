(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3951 0)
(declare-sort var1764 0)
(declare-sort var1790 0)
(declare-sort var3489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fMessage/904603087 (var3951) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fIndices/904603087 (var3951) var1790)
(declare-fun var1790_iterator/-912451715 (var1790) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getCause/257566077 (var3951) var3489)
(declare-fun getMessage/849299655 (var3489) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3951 var3951)
(declare-const null-String String)
(declare-const var898 var3951) ; Statement: r1 := @this: org.junit.internal.ArrayComparisonFailure 
(assert (not (= var898 null-var3951)))
(define-const var3126 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3126)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3126!1 String)
(assert (= var3126!1 ""))
(define-const var432 String (fMessage/904603087 var898)) ; Statement: $r2 = r1.<org.junit.internal.ArrayComparisonFailure: java.lang.String fMessage> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arrays first differed at element ") 
(assert (= var432 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var3126!1 "arrays first differed at element ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arrays first differed at element ") 
(declare-const var3126!2 String)
(assert (= var3126!2 (str.++ var3126!1 "arrays first differed at element ")))
(define-const var3422 var1790 (fIndices/904603087 var898)) ; Statement: $r3 = r1.<org.junit.internal.ArrayComparisonFailure: java.util.List fIndices> 
(define-const var1144 Iterator (var1790_iterator/-912451715 var3422)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var757 Bool (Iterator_hasNext/-1669924200 var1144)) ; Statement: $z0 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; ") 
(assert (= (ite var757 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3126!2 "; ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; ") 
(declare-const var3126!3 String)
(assert (= var3126!3 (str.++ var3126!2 "; ")))
(assert true)
(define-const var18 var3489 (getCause/257566077 var898)) ; Statement: $r4 = virtualinvoke r1.<org.junit.internal.ArrayComparisonFailure: java.lang.Throwable getCause()>() 
(assert true)
(define-const var491 String (getMessage/849299655 var18)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
;(assert (append/672562846 var3126!3 var491)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3126!4 String)
(assert (= var3126!4 (str.++ var3126!3 var491)))
(assert true)
(define-const var1161 String (toString/-2075883882 var3126!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fMessage/904603087=([org.junit.internal.ArrayComparisonFailure], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fIndices/904603087=([org.junit.internal.ArrayComparisonFailure], java.util.List), var1790_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getCause/257566077=([org.junit.internal.ArrayComparisonFailure], java.lang.Throwable), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3951=org.junit.internal.ArrayComparisonFailure, var898=r1, var3126=$r0, var432=$r2, var1764=null_type, var1790=java.util.List, var3422=$r3, var1144=$r10, var757=$z0, var3489=java.lang.Throwable, var18=$r4, var491=$r5, var1161=$r6}
; {org.junit.internal.ArrayComparisonFailure=var3951, r1=var898, $r0=var3126, $r2=var432, null_type=var1764, java.util.List=var1790, $r3=var3422, $r10=var1144, $z0=var757, java.lang.Throwable=var3489, $r4=var18, $r5=var491, $r6=var1161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.internal.ArrayComparisonFailure;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.junit.internal.ArrayComparisonFailure: java.lang.String fMessage>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arrays first differed at element ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arrays first differed at element ");	$r3 = r1.<org.junit.internal.ArrayComparisonFailure: java.util.List fIndices>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; ");	$r4 = virtualinvoke r1.<org.junit.internal.ArrayComparisonFailure: java.lang.Throwable getCause()>();	$r5 = virtualinvoke $r4.<java.lang.Throwable: java.lang.String getMessage()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4