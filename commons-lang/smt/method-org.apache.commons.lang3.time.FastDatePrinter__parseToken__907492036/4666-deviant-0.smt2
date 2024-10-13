(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var30 0)
(declare-sort var1341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var30 var30)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2009 var30) ; Statement: r3 := @this: org.apache.commons.lang3.time.FastDatePrinter 
(assert (not (= var2009 null-var30)))
(declare-const var2124 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2124 null-String)))
(declare-const var3759 (Array Int Int)) ; Statement: r1 := @parameter1: int[] 
(assert (not (= var3759 null-__Array__Int__Int__)))
(define-const var2250 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2250)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2250!1 String)
(assert (= var2250!1 ""))
(define-const var1165 Int (select var3759 0)) ; Statement: i5 = r1[0] 
(assert true)
(define-const var3742 Int (length/-134980193 var2124)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (not (and true (and (> (str.len var2124) var1165) (<= 0 var1165)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var30=org.apache.commons.lang3.time.FastDatePrinter, var2009=r3, var2124=r2, var1341=null_type, var3759=r1, var2250=$r5, var1165=i5, var3742=i0, var1798=c6, var3264=$i10, var3313=$i11, var3568=$i7, var1820=$r4}
; {org.apache.commons.lang3.time.FastDatePrinter=var30, r3=var2009, r2=var2124, null_type=var1341, r1=var3759, $r5=var2250, i5=var1165, i0=var3742, c6=var1798, $i10=var3264, $i11=var3313, $i7=var3568, $r4=var1820}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.commons.lang3.time.FastDatePrinter;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: int[];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	i5 = r1[0];	i0 = virtualinvoke r2.<java.lang.String: int length()>();	c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i5);	$i10 = (int) c6;	if $i10 < 65 goto $i12 = (int) c6;	$i11 = (int) c6;	if $i11 <= 90 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c6);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c6);	$i7 = i5 + 1;	if $i7 >= i0 goto r1[0] = i5;	r1[0] = i5;	$r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5