(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1215 0)
(declare-sort var2268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var1215 var1215)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var534 var1215) ; Statement: r2 := @this: org.apache.ibatis.javassist.bytecode.analysis.Type 
(assert (not (= var534 null-var1215)))
(declare-const var2388 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2388 null-String)))
(declare-const var1985 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1985 null-Int)))
(assert true)
(define-const var3717 Int (length/-134980193 var2388)) ; Statement: i3 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var414 Int (* var1985 2)) ; Statement: $i1 = i0 * 2 
(define-const var1620 Int (+ var3717 var414)) ; Statement: i2 = i3 + $i1 
(define-const var3444 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[i2] 
(assert true)
;(assert (getChars/1306883398 var2388 0 var3717 var3444 0)) ; Statement: virtualinvoke r3.<java.lang.String: void getChars(int,int,char[],int)>(0, i3, r0, 0) 

(declare-const var2388!1 String)
(declare-const var997 Int)
(declare-const var3717!1 Int)
(declare-const var3444!1 (Array Int Int))
(declare-const var997!1 Int)
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto $r1 = new java.lang.String 
(assert (>= var3717!1 var1620)) ; Cond: i3 >= i2 
(define-const var1163 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1163 var3444!1)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var1163!1 String)
(declare-const var3444!2 (Array Int Int))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1215=org.apache.ibatis.javassist.bytecode.analysis.Type, var534=r2, var2388=r3, var2268=null_type, var1985=i0, var3717=i3, var414=$i1, var1620=i2, var3444=r0, var997=0, var1163=$r1}
; {org.apache.ibatis.javassist.bytecode.analysis.Type=var1215, r2=var534, r3=var2388, null_type=var2268, i0=var1985, i3=var3717, $i1=var414, i2=var1620, r0=var3444, 0=var997, $r1=var1163}
;seq <java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.bytecode.analysis.Type;	r3 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = virtualinvoke r3.<java.lang.String: int length()>();	$i1 = i0 * 2;	i2 = i3 + $i1;	r0 = newarray (char)[i2];	virtualinvoke r3.<java.lang.String: void getChars(int,int,char[],int)>(0, i3, r0, 0);	if i3 >= i2 goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0);	return $r1
;block_num 3