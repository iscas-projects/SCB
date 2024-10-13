(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1604 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1604 null-String)))
(declare-const var1456 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1456 null-String)))
(declare-const var3063 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3063 null-String)))
(define-const var1000 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1000)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1000!1 String)
(assert (= var1000!1 ""))
 ; Statement: if r1 == null goto (branch) 
(assert (= var1604 null-String)) ; Cond: r1 == null 
 ; Statement: if r2 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(assert (= var1456 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var1194 String (append/672562846 var1000!1 var3063)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1000!2 String)
(assert (= var1000!2 (str.++ var1000!1 var3063)))
(assert true)
(define-const var3079 String (toString/-2075883882 var1194)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1604=r1, var1488=null_type, var1456=r2, var3063=r3, var1000=$r0, var1194=$r4, var3079=$r5}
; {r1=var1604, null_type=var1488, r2=var1456, r3=var3063, $r0=var1000, $r4=var1194, $r5=var3079}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto (branch);	if r2 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3