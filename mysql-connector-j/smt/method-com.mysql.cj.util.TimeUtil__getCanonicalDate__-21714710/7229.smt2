(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1400 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1400 null-String)))
(assert true)
(define-const var1747 (Array Int String) (split/-636890950 var1400 "\u005cp{Punct}")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\p{Punct}") 
(define-const var3793 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3793)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3793!1 String)
(assert (= var3793!1 ""))
(define-const var618 String (select var1747 0)) ; Statement: $r3 = r1[0] 
(assert true)
(define-const var1308 Int (length/-134980193 var618)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 2 goto $r10 = r1[0] 
(assert (not (= var1308 2))) ; Cond: $i0 != 2 
(define-const var3409 String (select var1747 0)) ; Statement: $r10 = r1[0] 
(assert true)
;(assert (append/672562846 var3793!1 var3409)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3793!2 String)
(assert (= var3793!2 (str.++ var3793!1 var3409)))
(assert true)
;(assert (append/672562846 var3793!2 "-")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var3793!3 String)
(assert (= var3793!3 (str.++ var3793!2 "-")))
(define-const var821 String (select var1747 1)) ; Statement: $r11 = r1[1] 
(assert true)
(define-const var3432 Int (length/-134980193 var821)) ; Statement: $i3 = virtualinvoke $r11.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 1 goto $r4 = r1[1] 
(assert (not (= var3432 1))) ; Cond: $i3 != 1 
(define-const var1368 String (select var1747 1)) ; Statement: $r4 = r1[1] 
(assert true)
;(assert (append/672562846 var3793!3 var1368)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3793!4 String)
(assert (= var3793!4 (str.++ var3793!3 var1368)))
(assert true)
;(assert (append/672562846 var3793!4 "-")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var3793!5 String)
(assert (= var3793!5 (str.++ var3793!4 "-")))
(define-const var1017 String (select var1747 2)) ; Statement: $r5 = r1[2] 
(assert true)
(define-const var2816 Int (length/-134980193 var1017)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $r6 = r1[2] 
(assert (not (= var2816 1))) ; Cond: $i1 != 1 
(define-const var152 String (select var1747 2)) ; Statement: $r6 = r1[2] 
(assert true)
;(assert (append/672562846 var3793!5 var152)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3793!6 String)
(assert (= var3793!6 (str.++ var3793!5 var152)))
(assert true)
(define-const var881 String (toString/-2075883882 var3793!6)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1400=r0, var2469=null_type, var1747=r1, var3793=$r2, var618=$r3, var1308=$i0, var3409=$r10, var821=$r11, var3432=$i3, var1368=$r4, var1017=$r5, var2816=$i1, var152=$r6, var881=$r7}
; {r0=var1400, null_type=var2469, r1=var1747, $r2=var3793, $r3=var618, $i0=var1308, $r10=var3409, $r11=var821, $i3=var3432, $r4=var1368, $r5=var1017, $i1=var2816, $r6=var152, $r7=var881}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\p{Punct}");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r1[0];	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 != 2 goto $r10 = r1[0];	$r10 = r1[0];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r11 = r1[1];	$i3 = virtualinvoke $r11.<java.lang.String: int length()>();	if $i3 != 1 goto $r4 = r1[1];	$r4 = r1[1];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r5 = r1[2];	$i1 = virtualinvoke $r5.<java.lang.String: int length()>();	if $i1 != 1 goto $r6 = r1[2];	$r6 = r1[2];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4