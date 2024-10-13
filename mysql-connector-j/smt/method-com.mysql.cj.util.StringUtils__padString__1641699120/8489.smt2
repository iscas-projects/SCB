(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1960 0)
(declare-sort var1323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1323-EMPTY_SPACE (Array Int Int))
(declare-const var2661 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2661 null-String)))
(declare-const var753 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var753 null-Int)))
(assert true)
(define-const var3816 Int (length/-134980193 var2661)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1349 Int (- var753 var3816)) ; Statement: i2 = i1 - i0 
 ; Statement: if i2 <= 0 goto return r0 
(assert (not (<= var1349 0))) ; Negate: Cond: i2 <= 0  
(define-const var1840 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1840 var753)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var1840!1 String)
(declare-const var753!1 Int)
(assert true)
;(assert (append/672562846 var1840!1 var2661)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1840!2 String)
(assert (= var1840!2 (str.++ var1840!1 var2661)))
(define-const var2630 (Array Int Int) var1323-EMPTY_SPACE) ; Statement: $r2 = <com.mysql.cj.util.StringUtils: char[] EMPTY_SPACE> 
(assert true)
;(assert (append/-1748486345 var1840!2 var2630 0 var1349)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r2, 0, i2) 
(declare-const var1840!3 String)
(assert (str.prefixof var1840!2 var1840!3))
(assert true)
(define-const var3900 String (toString/-2075883882 var1840!3)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2661=r0, var1960=null_type, var753=i1, var3816=i0, var1349=i2, var1840=$r1, var1323=com.mysql.cj.util.StringUtils, var2630=$r2, var3900=$r3}
; {r0=var2661, null_type=var1960, i1=var753, i0=var3816, i2=var1349, $r1=var1840, com.mysql.cj.util.StringUtils=var1323, $r2=var2630, $r3=var3900}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = i1 - i0;	if i2 <= 0 goto return r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r2 = <com.mysql.cj.util.StringUtils: char[] EMPTY_SPACE>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r2, 0, i2);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2