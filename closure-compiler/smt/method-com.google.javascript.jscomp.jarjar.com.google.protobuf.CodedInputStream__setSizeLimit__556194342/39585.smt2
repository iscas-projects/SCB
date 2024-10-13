(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var836 0)
(declare-sort var3538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3538-init () var3538)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3538 String) void)
(declare-const null-var836 var836)
(declare-const null-Int Int)
(declare-const var1829 var836) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream 
(assert (not (= var1829 null-var836)))
(declare-const var619 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var619 null-Int)))
 ; Statement: if i0 >= 0 goto i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int sizeLimit> 
(assert (not (>= var619 0))) ; Negate: Cond: i0 >= 0  
(define-const var290 var3538 var3538-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2061 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2061)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2061!1 String)
(assert (= var2061!1 ""))
(assert true)
(define-const var3684 String (append/672562846 var2061!1 "Size limit cannot be negative: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size limit cannot be negative: ") 
(declare-const var2061!2 String)
(assert (= var2061!2 (str.++ var2061!1 "Size limit cannot be negative: ")))
(assert true)
(define-const var3830 String (append/-1001720160 var3684 var619)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3684!1 String)
(assert (str.prefixof var3684 var3684!1))
(assert true)
(define-const var2514 String (toString/-2075883882 var3830)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var290 var2514)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var290!1 var3538)
(declare-const var2514!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3538-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var836=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream, var1829=r0, var619=i0, var3538=java.lang.IllegalArgumentException, var290=$r1, var2061=$r2, var3684=$r3, var3830=$r4, var2514=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream=var836, r0=var1829, i0=var619, java.lang.IllegalArgumentException=var3538, $r1=var290, $r2=var2061, $r3=var3684, $r4=var3830, $r5=var2514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream;	i0 := @parameter0: int;	if i0 >= 0 goto i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int sizeLimit>;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size limit cannot be negative: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2