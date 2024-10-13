(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2960 0)
(declare-sort var1723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1723) void)
(declare-fun cast-from-var2960-to-var1723 (var2960) var1723)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sb/-511963710 (var2960) String)
(declare-fun first/-511963710 (var2960) Bool)
(declare-const null-var2960 var2960)
(declare-const var2648 var2960) ; Statement: r0 := @this: jdk.management.jfr.Stringifier 
(assert (not (= var2648 null-var2960)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2960-to-var1723 var2648))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2648!1 var2960)
(define-const var3791 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3791)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3791!1 String)
(assert (= var3791!1 ""))
(declare-const var2648!2 var2960)
(assert (not (= var2648!2 null-var2960)))
(assert (= (sb/-511963710 var2648!2) var3791!1)) ; Statement: r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> = $r1 
(declare-const var2648!3 var2960)
(assert (not (= var2648!3 null-var2960)))
(assert (= (first/-511963710 var2648!3) (ite (= 1 1) true false))) ; Statement: r0.<jdk.management.jfr.Stringifier: boolean first> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2960-to-var1723=([jdk.management.jfr.Stringifier], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sb/-511963710=([jdk.management.jfr.Stringifier], java.lang.StringBuilder), first/-511963710=([jdk.management.jfr.Stringifier], boolean)}
; {var2960=jdk.management.jfr.Stringifier, var2648=r0, var1723=java.lang.Object, var3791=$r1}
; {jdk.management.jfr.Stringifier=var2960, r0=var2648, java.lang.Object=var1723, $r1=var3791}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: jdk.management.jfr.Stringifier;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> = $r1;	r0.<jdk.management.jfr.Stringifier: boolean first> = 1;	return
;block_num 1