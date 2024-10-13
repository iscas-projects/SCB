(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2970 0)
(declare-sort var3860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3860_generateMatrix/2052817446 (String String) (Array Int (Array Int Int)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const var3699 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3699 null-String)))
(declare-const var1110 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1110 null-String)))
(define-const var2586 (Array Int (Array Int Int)) (var3860_generateMatrix/2052817446 var3699 var1110)) ; Statement: r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: int[][] generateMatrix(java.lang.String,java.lang.String)>(r0, r1) 
(assert true)
(define-const var1830 Int (length/-134980193 var3699)) ; Statement: i10 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1742 Int (length/-134980193 var1110)) ; Statement: i11 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2666 (Array Int Int) (select var2586 var1830)) ; Statement: $r3 = r2[i10] 
(define-const var3410 Int (select var2666 var1742)) ; Statement: $i0 = $r3[i11] 
(define-const var376 (Array Int Int) arr-Int-init) ; Statement: r4 = newarray (char)[$i0] 
(define-const var434 Int (getLength-Arr-Int-1 var376)) ; Statement: $i1 = lengthof r4 
(define-const var1513 Int (- var434 1)) ; Statement: i12 = $i1 - 1 
(assert true) ; Non Conditional
(define-const var1422 (Array Int Int) (select var2586 var1830)) ; Statement: $r10 = r2[i10] 
(define-const var1958 Int (select var1422 var1742)) ; Statement: $i13 = $r10[i11] 
 ; Statement: if $i13 == 0 goto $r11 = new java.lang.String 
(assert (= var1958 0)) ; Cond: $i13 == 0 
(define-const var3949 String String-init) ; Statement: $r11 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3949 var376)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(char[])>(r4) 

(declare-const var3949!1 String)
(declare-const var376!1 (Array Int Int))
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3860_generateMatrix/2052817446=([java.lang.String, java.lang.String], int[][]), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), getLength-Arr-Int-1=([char[]], int), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3699=r0, var2970=null_type, var1110=r1, var3860=cn.hutool.core.text.TextSimilarity, var2586=r2, var1830=i10, var1742=i11, var2666=$r3, var3410=$i0, var376=r4, var434=$i1, var1513=i12, var1422=$r10, var1958=$i13, var3949=$r11}
; {r0=var3699, null_type=var2970, r1=var1110, cn.hutool.core.text.TextSimilarity=var3860, r2=var2586, i10=var1830, i11=var1742, $r3=var2666, $i0=var3410, r4=var376, $i1=var434, i12=var1513, $r10=var1422, $i13=var1958, $r11=var3949}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: int[][] generateMatrix(java.lang.String,java.lang.String)>(r0, r1);	i10 = virtualinvoke r0.<java.lang.String: int length()>();	i11 = virtualinvoke r1.<java.lang.String: int length()>();	$r3 = r2[i10];	$i0 = $r3[i11];	r4 = newarray (char)[$i0];	$i1 = lengthof r4;	i12 = $i1 - 1;	$r10 = r2[i10];	$i13 = $r10[i11];	if $i13 == 0 goto $r11 = new java.lang.String;	$r11 = new java.lang.String;	specialinvoke $r11.<java.lang.String: void <init>(char[])>(r4);	return $r11
;block_num 3