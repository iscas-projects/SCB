(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1915 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1915 null-String)))
(declare-const var329 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var329 null-Bool)))
(assert true)
(define-const var3737 Int (length/-134980193 var1915)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var431 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (>= var431 var3737)) ; Cond: i6 >= i0 
 ; Statement: if z0 == 0 goto $r7 = r0 
(assert (not (= (ite var329 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3538 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3538)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3538!1 String)
(assert (= var3538!1 ""))
(assert true)
(define-const var428 String (append/-1166366385 var3538!1 34)) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3538!2 String)
(assert (str.prefixof var3538!1 var3538!2))
(assert true)
(define-const var325 String (append/672562846 var428 var1915)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var428!1 String)
(assert (= var428!1 (str.++ var428 var1915)))
(assert true)
(define-const var3964 String (append/-1166366385 var325 34)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var325!1 String)
(assert (str.prefixof var325 var325!1))
(assert true)
(define-const var112 String (toString/-2075883882 var3964)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1915=r0, var3130=null_type, var329=z0, var3737=i0, var431=i6, var3538=$r9, var428=$r2, var325=$r3, var3964=$r4, var112=$r7}
; {r0=var1915, null_type=var3130, z0=var329, i0=var3737, i6=var431, $r9=var3538, $r2=var428, $r3=var325, $r4=var3964, $r7=var112}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	if z0 == 0 goto $r7 = r0;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r7];	return $r7
;block_num 5