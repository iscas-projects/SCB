(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var887 0)
(declare-sort var3380 0)
(declare-sort var3715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var887 var887)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3715 var3715)
(declare-const var3626 var887) ; Statement: r3 := @parameter0: java.util.ArrayList 
(assert (not (= var3626 null-var887)))
(declare-const var579 var887) ; Statement: r4 := @parameter1: java.util.ArrayList 
(assert (not (= var579 null-var887)))
(declare-const var2957 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2957 null-String)))
(declare-const var2752 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2752 null-Int)))
(define-const var2844 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2844)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2844!1 String)
(assert (= var2844!1 ""))
(define-const var2076 String var2844!1) ; Statement: r8 = $r10 
(define-const var3103 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3103)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3103!1 String)
(assert (= var3103!1 ""))
(define-const var1058 String var3103!1) ; Statement: r9 = $r11 
(define-const var213 Int var2752) ; Statement: i1 = i0 
(assert true) ; Non Conditional
(define-const var213!1 Int (+ var213 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var979 var3715) ; Statement: $r7 := @caughtexception 
(assert (not (= var979 null-var3715)))
(define-const var3718 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i13 = (int) -2 
 ; Statement: return $i13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int)}
; {var887=java.util.ArrayList, var3626=r3, var579=r4, var2957=r2, var3380=null_type, var2752=i0, var2844=$r10, var2076=r8, var3103=$r11, var1058=r9, var213=i1, var3715=java.lang.IndexOutOfBoundsException, var979=$r7, var3718=$i13}
; {java.util.ArrayList=var887, r3=var3626, r4=var579, r2=var2957, null_type=var3380, i0=var2752, $r10=var2844, r8=var2076, $r11=var3103, r9=var1058, i1=var213, java.lang.IndexOutOfBoundsException=var3715, $r7=var979, $i13=var3718}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r3 := @parameter0: java.util.ArrayList;	r4 := @parameter1: java.util.ArrayList;	r2 := @parameter2: java.lang.String;	i0 := @parameter3: int;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	r8 = $r10;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	r9 = $r11;	i1 = i0;	i1 = i1 + 1;	$r7 := @caughtexception;	$i13 = (int) -2;	return $i13
;block_num 3