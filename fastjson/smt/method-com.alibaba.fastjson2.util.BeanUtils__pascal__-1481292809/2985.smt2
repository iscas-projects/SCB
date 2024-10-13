(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3477 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3477 null-String)))
(declare-const var842 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var842 null-Int)))
(declare-const var2743 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2743 null-Int)))
(define-const var1607 Int (- var842 var2743)) ; Statement: $i2 = i0 - i1 
(define-const var473 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[$i2] 
(assert true)
;(assert (getChars/1306883398 var3477 var2743 var842 var473 0)) ; Statement: virtualinvoke r1.<java.lang.String: void getChars(int,int,char[],int)>(i1, i0, r0, 0) 

(declare-const var3477!1 String)
(declare-const var2743!1 Int)
(declare-const var842!1 Int)
(declare-const var473!1 (Array Int Int))
(declare-const var880 Int)
(define-const var1992 Int (select var473!1 0)) ; Statement: c3 = r0[0] 
(define-const var2690 Int (cast-from-Int-to-Int var1992)) ; Statement: $i13 = (int) c3 
 ; Statement: if $i13 < 97 goto $i16 = (int) c3 
(assert (< var2690 97)) ; Cond: $i13 < 97 
(define-const var1857 Int (cast-from-Int-to-Int var1992)) ; Statement: $i16 = (int) c3 
 ; Statement: if $i16 != 95 goto $r3 = new java.lang.String 
(assert (not (= var1857 95))) ; Cond: $i16 != 95 
(define-const var972 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var972 var473!1)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var972!1 String)
(declare-const var473!2 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3477=r1, var953=null_type, var842=i0, var2743=i1, var1607=$i2, var473=r0, var880=0, var1992=c3, var2690=$i13, var1857=$i16, var972=$r3}
; {r1=var3477, null_type=var953, i0=var842, i1=var2743, $i2=var1607, r0=var473, 0=var880, c3=var1992, $i13=var2690, $i16=var1857, $r3=var972}
;seq <java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$i2 = i0 - i1;	r0 = newarray (char)[$i2];	virtualinvoke r1.<java.lang.String: void getChars(int,int,char[],int)>(i1, i0, r0, 0);	c3 = r0[0];	$i13 = (int) c3;	if $i13 < 97 goto $i16 = (int) c3;	$i16 = (int) c3;	if $i16 != 95 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r0);	return $r3
;block_num 3