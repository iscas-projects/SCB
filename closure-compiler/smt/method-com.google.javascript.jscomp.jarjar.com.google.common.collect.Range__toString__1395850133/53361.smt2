(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun describeAsLowerBound/563709229 (var1123 String) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describeAsUpperBound/-221453460 (var1123 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1123 var1123)
(declare-const var1109 var1123) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut 
(assert (not (= var1109 null-var1123)))
(declare-const var3151 var1123) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut 
(assert (not (= var3151 null-var1123)))
(define-const var3858 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3858 16)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(16) 

(declare-const var3858!1 String)
(declare-const var82 Int)
(assert true)
;(assert (describeAsLowerBound/563709229 var1109 var3858!1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: void describeAsLowerBound(java.lang.StringBuilder)>($r0) 

(declare-const var1109!1 var1123)
(declare-const var3858!2 String)
(assert true)
;(assert (append/672562846 var3858!2 "..")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var3858!3 String)
(assert (= var3858!3 (str.++ var3858!2 "..")))
(assert true)
;(assert (describeAsUpperBound/-221453460 var3151 var3858!3)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: void describeAsUpperBound(java.lang.StringBuilder)>($r0) 

(declare-const var3151!1 var1123)
(declare-const var3858!4 String)
(assert true)
(define-const var2336 String (toString/-2075883882 var3858!4)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), describeAsLowerBound/563709229=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describeAsUpperBound/-221453460=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1123=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var1109=r1, var3151=r2, var3858=$r0, var82=16, var2336=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var1123, r1=var1109, r2=var3151, $r0=var3858, 16=var82, $r3=var2336}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(16);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: void describeAsLowerBound(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: void describeAsUpperBound(java.lang.StringBuilder)>($r0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1