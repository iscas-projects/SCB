(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var737 0)
(declare-sort var2294 0)
(declare-sort var541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var541-init () var541)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var541 String) void)
(declare-const null-var737 var737)
(declare-const null-String String)
(declare-const var2383 var737) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= var2383 null-var737)))
(declare-const var3076 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3076 null-String)))
(declare-const var625 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var625 null-String)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var3076 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var834 Int (length/-134980193 var3076)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 255 goto (branch) 
(assert (not (<= var834 255))) ; Negate: Cond: $i1 <= 255  
(define-const var2519 var541 var541-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var2036 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2036)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2036!1 String)
(assert (= var2036!1 ""))
(assert true)
(define-const var2288 String (append/672562846 var2036!1 "Error-title cannot be longer than 32 characters, but had: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error-title cannot be longer than 32 characters, but had: ") 
(declare-const var2036!2 String)
(assert (= var2036!2 (str.++ var2036!1 "Error-title cannot be longer than 32 characters, but had: ")))
(assert true)
(define-const var2647 String (append/672562846 var2288 var3076)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2288!1 String)
(assert (= var2288!1 (str.++ var2288 var3076)))
(assert true)
(define-const var1478 String (toString/-2075883882 var2647)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2519 var1478)) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var2519!1 var541)
(declare-const var1478!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var541-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var737=org.apache.poi.xssf.usermodel.XSSFDataValidation, var2383=r2, var3076=r0, var2294=null_type, var625=r1, var834=$i1, var541=java.lang.IllegalStateException, var2519=$r12, var2036=$r13, var2288=$r14, var2647=$r15, var1478=$r16}
; {org.apache.poi.xssf.usermodel.XSSFDataValidation=var737, r2=var2383, r0=var3076, null_type=var2294, r1=var625, $i1=var834, java.lang.IllegalStateException=var541, $r12=var2519, $r13=var2036, $r14=var2288, $r15=var2647, $r16=var1478}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 == null goto (branch);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 <= 255 goto (branch);	$r12 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error-title cannot be longer than 32 characters, but had: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r12
;block_num 3