(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2843 0)
(declare-sort var527 0)
(declare-sort var1343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun nodes/134522577 (var2843) var527)
(declare-fun iterator/-607031900 (var527) var1343)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var1343-to-Iterator (var1343) Iterator)
(declare-fun formatWithoutDoc/-1823172368 (var2843) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2843 var2843)
(declare-const var1433 var2843) ; Statement: r1 := @this: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement 
(assert (not (= var1433 null-var2843)))
(define-const var709 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var709)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var709!1 String)
(assert (= var709!1 ""))
(assert true)
(define-const var2592 var527 (nodes/134522577 var1433)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes()>() 
(assert true)
(define-const var1389 var1343 (iterator/-607031900 var2592)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3253 Bool (Iterator_hasNext/-1669924200 (cast-from-var1343-to-Iterator var1389))) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String formatWithoutDoc()>() 
(assert (= (ite var3253 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var54 String (formatWithoutDoc/-1823172368 var1433)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String formatWithoutDoc()>() 
(assert true)
;(assert (append/672562846 var709!1 var54)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var709!2 String)
(assert (= var709!2 (str.++ var709!1 var54)))
(assert true)
(define-const var1847 String (toString/-2075883882 var709!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), nodes/134522577=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), iterator/-607031900=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var1343-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), formatWithoutDoc/-1823172368=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2843=com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement, var1433=r1, var709=$r0, var527=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2592=$r2, var1343=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var1389=r3, var3253=$z0, var54=$r4, var1847=$r5}
; {com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement=var2843, r1=var1433, $r0=var709, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var527, $r2=var2592, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var1343, r3=var1389, $z0=var3253, $r4=var54, $r5=var1847}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList nodes()>();	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String formatWithoutDoc()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String formatWithoutDoc()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3