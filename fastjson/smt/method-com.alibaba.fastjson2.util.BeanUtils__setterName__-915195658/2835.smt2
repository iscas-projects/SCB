(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2072 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2072 null-String)))
(declare-const var2750 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2750 null-Int)))
(assert true)
(define-const var2580 Int (length/-134980193 var2072)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2182 Int (- var2580 var2750)) ; Statement: $i2 = i0 - i1 
(define-const var2995 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i2] 
(assert true)
;(assert (getChars/1306883398 var2072 var2750 var2580 var2995 0)) ; Statement: virtualinvoke r0.<java.lang.String: void getChars(int,int,char[],int)>(i1, i0, r1, 0) 

(declare-const var2072!1 String)
(declare-const var2750!1 Int)
(declare-const var2580!1 Int)
(declare-const var2995!1 (Array Int Int))
(declare-const var919 Int)
(define-const var517 Int (select var2995!1 0)) ; Statement: c3 = r1[0] 
(define-const var1864 Int (getLength-Arr-Int-1 var2995!1)) ; Statement: $i4 = lengthof r1 
 ; Statement: if $i4 <= 1 goto $z0 = 0 
(assert (<= var1864 1)) ; Cond: $i4 <= 1 
(define-const var1241 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
(define-const var3711 Int (cast-from-Int-to-Int var517)) ; Statement: $i11 = (int) c3 
 ; Statement: if $i11 < 65 goto $r3 = new java.lang.String 
(assert (< var3711 65)) ; Cond: $i11 < 65 
(define-const var2751 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2751 var2995!1)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var2751!1 String)
(declare-const var2995!2 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), getLength-Arr-Int-1=([char[]], int), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2072=r0, var1843=null_type, var2750=i1, var2580=i0, var2182=$i2, var2995=r1, var919=0, var517=c3, var1864=$i4, var1241=$z0, var3711=$i11, var2751=$r3}
; {r0=var2072, null_type=var1843, i1=var2750, i0=var2580, $i2=var2182, r1=var2995, 0=var919, c3=var517, $i4=var1864, $z0=var1241, $i11=var3711, $r3=var2751}
;seq <java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = i0 - i1;	r1 = newarray (char)[$i2];	virtualinvoke r0.<java.lang.String: void getChars(int,int,char[],int)>(i1, i0, r1, 0);	c3 = r1[0];	$i4 = lengthof r1;	if $i4 <= 1 goto $z0 = 0;	$z0 = 0;	$i11 = (int) c3;	if $i11 < 65 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r1);	return $r3
;block_num 4