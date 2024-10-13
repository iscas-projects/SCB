(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1733 0)
(declare-sort var2405 0)
(declare-sort var2285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2285-init () var2285)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2285 String) void)
(declare-const null-var1733 var1733)
(declare-const null-String String)
(declare-const var3716 var1733) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= var3716 null-var1733)))
(declare-const var762 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var762 null-String)))
(declare-const var170 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var170 null-String)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var762 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var155 Int (length/-134980193 var762)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 255 goto (branch) 
(assert (not (<= var155 255))) ; Negate: Cond: $i1 <= 255  
(define-const var1343 var2285 var2285-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var9 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var9)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var9!1 String)
(assert (= var9!1 ""))
(assert true)
(define-const var1671 String (append/672562846 var9!1 "Error-title cannot be longer than 32 characters, but had: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error-title cannot be longer than 32 characters, but had: ") 
(declare-const var9!2 String)
(assert (= var9!2 (str.++ var9!1 "Error-title cannot be longer than 32 characters, but had: ")))
(assert true)
(define-const var978 String (append/672562846 var1671 var762)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1671!1 String)
(assert (= var1671!1 (str.++ var1671 var762)))
(assert true)
(define-const var3923 String (toString/-2075883882 var978)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1343 var3923)) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var1343!1 var2285)
(declare-const var3923!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2285-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1733=org.apache.poi.xssf.usermodel.XSSFDataValidation, var3716=r2, var762=r0, var2405=null_type, var170=r1, var155=$i1, var2285=java.lang.IllegalStateException, var1343=$r12, var9=$r13, var1671=$r14, var978=$r15, var3923=$r16}
; {org.apache.poi.xssf.usermodel.XSSFDataValidation=var1733, r2=var3716, r0=var762, null_type=var2405, r1=var170, $i1=var155, java.lang.IllegalStateException=var2285, $r12=var1343, $r13=var9, $r14=var1671, $r15=var978, $r16=var3923}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 == null goto (branch);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 <= 255 goto (branch);	$r12 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error-title cannot be longer than 32 characters, but had: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r12
;block_num 3