(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1979 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1979 null-String)))
(declare-const var2003 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var2003 null-String)))
(declare-const var499 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var499 null-String)))
(declare-const var3418 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3418 null-Bool)))
(declare-const var1492 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1492 null-Bool)))
(assert true)
(define-const var1365 Int (length/-134980193 var2003)) ; Statement: i0 = virtualinvoke r12.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var1365 0)))) ; Negate: Cond: i0 != 0  
(assert true)
(define-const var564 Int (length/-134980193 var499)) ; Statement: i13 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i13 != 0 goto (branch) 
(assert (not (= var564 0))) ; Cond: i13 != 0 
 ; Statement: if z1 == 0 goto i14 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= (ite var1492 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var428 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var428)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var428!1 String)
(assert (= var428!1 ""))
(assert true)
(define-const var3303 String (append/672562846 var428!1 var499)) ; Statement: $r9 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var428!2 String)
(assert (= var428!2 (str.++ var428!1 var499)))
(assert true)
(define-const var2953 String (append/672562846 var3303 var1979)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3303!1 String)
(assert (= var3303!1 (str.++ var3303 var1979)))
(assert true)
(define-const var676 String (toString/-2075883882 var2953)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1979=r0, var571=null_type, var2003=r12, var499=r2, var3418=z0, var1492=z1, var1365=i0, var564=i13, var428=$r17, var3303=$r9, var2953=$r10, var676=$r11}
; {r0=var1979, null_type=var571, r12=var2003, r2=var499, z0=var3418, z1=var1492, i0=var1365, i13=var564, $r17=var428, $r9=var3303, $r10=var2953, $r11=var676}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r12 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	z1 := @parameter4: boolean;	i0 = virtualinvoke r12.<java.lang.String: int length()>();	if i0 != 0 goto (branch);	i13 = virtualinvoke r2.<java.lang.String: int length()>();	if i13 != 0 goto (branch);	if z1 == 0 goto i14 = virtualinvoke r0.<java.lang.String: int length()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 4