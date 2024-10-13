(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var634 0)
(declare-sort var2963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2963-init () var2963)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2963 String) void)
(declare-const null-var634 var634)
(declare-const null-Int Int)
(declare-const var490 var634) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream 
(assert (not (= var490 null-var634)))
(declare-const var3103 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3103 null-Int)))
 ; Statement: if i0 >= 0 goto i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int recursionLimit> 
(assert (not (>= var3103 0))) ; Negate: Cond: i0 >= 0  
(define-const var2211 var2963 var2963-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2645 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2645)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2645!1 String)
(assert (= var2645!1 ""))
(assert true)
(define-const var2577 String (append/672562846 var2645!1 "Recursion limit cannot be negative: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Recursion limit cannot be negative: ") 
(declare-const var2645!2 String)
(assert (= var2645!2 (str.++ var2645!1 "Recursion limit cannot be negative: ")))
(assert true)
(define-const var2082 String (append/-1001720160 var2577 var3103)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2577!1 String)
(assert (str.prefixof var2577 var2577!1))
(assert true)
(define-const var2748 String (toString/-2075883882 var2082)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2211 var2748)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2211!1 var2963)
(declare-const var2748!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2963-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var634=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream, var490=r0, var3103=i0, var2963=java.lang.IllegalArgumentException, var2211=$r1, var2645=$r2, var2577=$r3, var2082=$r4, var2748=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream=var634, r0=var490, i0=var3103, java.lang.IllegalArgumentException=var2963, $r1=var2211, $r2=var2645, $r3=var2577, $r4=var2082, $r5=var2748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream;	i0 := @parameter0: int;	if i0 >= 0 goto i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int recursionLimit>;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Recursion limit cannot be negative: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2