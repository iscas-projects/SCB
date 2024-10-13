(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2913 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2913 null-String)))
 ; Statement: if r0 == null goto $r4 = "" 
(assert (not (= var2913 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var313 Int (length/-134980193 var2913)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $r4 = "" 
(assert (not (= var313 0))) ; Negate: Cond: $i0 == 0  
(define-const var1491 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1491)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1491!1 String)
(assert (= var1491!1 ""))
(assert true)
(define-const var941 String (append/672562846 var1491!1 var2913)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1491!2 String)
(assert (= var1491!2 (str.++ var1491!1 var2913)))
(assert true)
(define-const var3646 String (append/672562846 var941 ": ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var941!1 String)
(assert (= var941!1 (str.++ var941 ": ")))
(assert true)
(define-const var2134 String (toString/-2075883882 var3646)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2913=r0, var3822=null_type, var313=$i0, var1491=$r1, var941=$r2, var3646=$r3, var2134=$r4}
; {r0=var2913, null_type=var3822, $i0=var313, $r1=var1491, $r2=var941, $r3=var3646, $r4=var2134}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 == null goto $r4 = "";	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto $r4 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r4];	return $r4
;block_num 4