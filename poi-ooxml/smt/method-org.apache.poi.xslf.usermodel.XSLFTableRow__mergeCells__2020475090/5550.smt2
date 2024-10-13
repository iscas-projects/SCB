(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2547 0)
(declare-sort var3844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3844-init () var3844)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3844 String) void)
(declare-const null-var2547 var2547)
(declare-const null-Int Int)
(declare-const var1744 var2547) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTableRow 
(assert (not (= var1744 null-var2547)))
(declare-const var2572 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2572 null-Int)))
(declare-const var241 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var241 null-Int)))
 ; Statement: if i0 < i1 goto $i2 = i1 - i0 
(assert (not (< var2572 var241))) ; Negate: Cond: i0 < i1  
(define-const var1431 var3844 var3844-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var2212 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2212)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2212!1 String)
(assert (= var2212!1 ""))
(assert true)
(define-const var2196 String (append/672562846 var2212!1 "Cannot merge, first column >= last column : ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot merge, first column >= last column : ") 
(declare-const var2212!2 String)
(assert (= var2212!2 (str.++ var2212!1 "Cannot merge, first column >= last column : ")))
(assert true)
(define-const var159 String (append/-1001720160 var2196 var2572)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2196!1 String)
(assert (str.prefixof var2196 var2196!1))
(assert true)
(define-const var2240 String (append/672562846 var159 " >= ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" >= ") 
(declare-const var159!1 String)
(assert (= var159!1 (str.++ var159 " >= ")))
(assert true)
(define-const var2659 String (append/-1001720160 var2240 var241)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2240!1 String)
(assert (str.prefixof var2240 var2240!1))
(assert true)
(define-const var904 String (toString/-2075883882 var2659)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1431 var904)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var1431!1 var3844)
(declare-const var904!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3844-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2547=org.apache.poi.xslf.usermodel.XSLFTableRow, var1744=r0, var2572=i0, var241=i1, var3844=java.lang.IllegalArgumentException, var1431=$r9, var2212=$r10, var2196=$r11, var159=$r12, var2240=$r13, var2659=$r14, var904=$r15}
; {org.apache.poi.xslf.usermodel.XSLFTableRow=var2547, r0=var1744, i0=var2572, i1=var241, java.lang.IllegalArgumentException=var3844, $r9=var1431, $r10=var2212, $r11=var2196, $r12=var159, $r13=var2240, $r14=var2659, $r15=var904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTableRow;	i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 < i1 goto $i2 = i1 - i0;	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot merge, first column >= last column : ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" >= ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 2