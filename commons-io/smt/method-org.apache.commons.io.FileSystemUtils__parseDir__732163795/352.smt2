(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3761 0)
(declare-sort var3519 0)
(declare-sort var1487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1487-init () var1487)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1487 String) void)
(declare-const null-var3761 var3761)
(declare-const null-String String)
(declare-const var2648 var3761) ; Statement: r3 := @this: org.apache.commons.io.FileSystemUtils 
(assert (not (= var2648 null-var3761)))
(declare-const var1225 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1225 null-String)))
(declare-const var3896 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3896 null-String)))
(define-const var3174 Int 0) ; Statement: i6 = 0 
(define-const var99 Int 0) ; Statement: i7 = 0 
(assert true)
(define-const var3970 Int (length/-134980193 var1225)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var147 Int (- var3970 1)) ; Statement: i8 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i8 < 0 goto (branch) 
(assert (< var147 0)) ; Cond: i8 < 0 
 ; Statement: if i8 < 0 goto (branch) 
(assert (< var147 0)) ; Cond: i8 < 0 
 ; Statement: if i8 >= 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (>= var147 0))) ; Negate: Cond: i8 >= 0  
(define-const var3799 var1487 var1487-init) ; Statement: $r13 = new java.io.IOException 
(define-const var944 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var944)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var944!1 String)
(assert (= var944!1 ""))
(assert true)
(define-const var2956 String (append/672562846 var944!1 "Command line \u0027dir /-c\u0027 did not return valid info for path \u0027")) ; Statement: $r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command line \'dir /-c\' did not return valid info for path \'") 
(declare-const var944!2 String)
(assert (= var944!2 (str.++ var944!1 "Command line \u0027dir /-c\u0027 did not return valid info for path \u0027")))
(assert true)
(define-const var1988 String (append/672562846 var2956 var3896)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2956!1 String)
(assert (= var2956!1 (str.++ var2956 var3896)))
(assert true)
(define-const var3984 String (append/672562846 var1988 "\u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1988!1 String)
(assert (= var1988!1 (str.++ var1988 "\u0027")))
(assert true)
(define-const var3031 String (toString/-2075883882 var3984)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3799 var3031)) ; Statement: specialinvoke $r13.<java.io.IOException: void <init>(java.lang.String)>($r11) 

(declare-const var3799!1 var1487)
(declare-const var3031!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1487-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3761=org.apache.commons.io.FileSystemUtils, var2648=r3, var1225=r0, var3519=null_type, var3896=r4, var3174=i6, var99=i7, var3970=$i0, var147=i8, var1487=java.io.IOException, var3799=$r13, var944=$r12, var2956=$r8, var1988=$r9, var3984=$r10, var3031=$r11}
; {org.apache.commons.io.FileSystemUtils=var3761, r3=var2648, r0=var1225, null_type=var3519, r4=var3896, i6=var3174, i7=var99, $i0=var3970, i8=var147, java.io.IOException=var1487, $r13=var3799, $r12=var944, $r8=var2956, $r9=var1988, $r10=var3984, $r11=var3031}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.commons.io.FileSystemUtils;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	i6 = 0;	i7 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i8 = $i0 - 1;	if i8 < 0 goto (branch);	if i8 < 0 goto (branch);	if i8 >= 0 goto $r14 = new java.lang.StringBuilder;	$r13 = new java.io.IOException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command line \'dir /-c\' did not return valid info for path \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.io.IOException: void <init>(java.lang.String)>($r11);	throw $r13
;block_num 5