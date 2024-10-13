(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2384 0)
(declare-sort var2489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2384 var2384)
(declare-const null-var2489 var2489)
(declare-const var1705 var2384) ; Statement: r6 := @this: org.antlr.v4.runtime.TokenStreamRewriter 
(assert (not (= var1705 null-var2384)))
(declare-const var802 var2489) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var802 null-var2489)))
(declare-const var1791 var2489) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1791 null-var2489)))
(define-const var1902 String "") ; Statement: r7 = "" 
(define-const var3644 String "") ; Statement: r8 = "" 
 ; Statement: if r0 == null goto (branch) 
(assert (= var802 null-var2489)) ; Cond: r0 == null 
 ; Statement: if r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var1791 null-var2489)) ; Cond: r1 == null 
(define-const var1921 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1921)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1921!1 String)
(assert (= var1921!1 ""))
(assert true)
(define-const var1710 String (append/672562846 var1921!1 var1902)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1921!2 String)
(assert (= var1921!2 (str.++ var1921!1 var1902)))
(assert true)
(define-const var541 String (append/672562846 var1710 var3644)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var1710!1 String)
(assert (= var1710!1 (str.++ var1710 var3644)))
(assert true)
(define-const var2713 String (toString/-2075883882 var541)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2384=org.antlr.v4.runtime.TokenStreamRewriter, var1705=r6, var2489=java.lang.Object, var802=r0, var1791=r1, var1902=r7, var3644=r8, var1921=$r2, var1710=$r3, var541=$r4, var2713=$r5}
; {org.antlr.v4.runtime.TokenStreamRewriter=var2384, r6=var1705, java.lang.Object=var2489, r0=var802, r1=var1791, r7=var1902, r8=var3644, $r2=var1921, $r3=var1710, $r4=var541, $r5=var2713}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.antlr.v4.runtime.TokenStreamRewriter;	r0 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object;	r7 = "";	r8 = "";	if r0 == null goto (branch);	if r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3