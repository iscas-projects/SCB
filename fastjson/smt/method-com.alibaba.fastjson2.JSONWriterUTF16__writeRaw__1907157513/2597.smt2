(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1060 0)
(declare-sort var777 0)
(declare-sort var199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun off/1442430106 (var199) Int)
(declare-fun cast-from-var1060-to-var199 (var1060) var199)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun ensureCapacity/993961316 (var1060 Int) void)
(declare-fun chars/1482366354 (var1060) (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-const null-var1060 var1060)
(declare-const null-String String)
(declare-const var280 var1060) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var280 null-var1060)))
(declare-const var1480 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1480 null-String)))
(define-const var2890 Int (off/1442430106 (cast-from-var1060-to-var199 var280))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(assert true)
(define-const var1206 Int (length/-134980193 var1480)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var750 Int (+ var2890 var1206)) ; Statement: $i2 = $i0 + $i1 
(assert true)
;(assert (ensureCapacity/993961316 var280 var750)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i2) 

(declare-const var280!1 var1060)
(declare-const var750!1 Int)
(assert true)
(define-const var3988 Int (length/-134980193 var1480)) ; Statement: $i4 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1801 (Array Int Int) (chars/1482366354 var280!1)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars> 
(define-const var2043 Int (off/1442430106 (cast-from-var1060-to-var199 var280!1))) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(assert true)
;(assert (getChars/1306883398 var1480 0 var3988 var1801 var2043)) ; Statement: virtualinvoke r1.<java.lang.String: void getChars(int,int,char[],int)>(0, $i4, $r2, $i3) 

(declare-const var1480!1 String)
(declare-const var3774 Int)
(declare-const var3988!1 Int)
(declare-const var1801!1 (Array Int Int))
(declare-const var2043!1 Int)
(define-const var3254 Int (off/1442430106 (cast-from-var1060-to-var199 var280!1))) ; Statement: $i5 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(assert true)
(define-const var3175 Int (length/-134980193 var1480!1)) ; Statement: $i6 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2829 Int (+ var3254 var3175)) ; Statement: $i7 = $i5 + $i6 
(declare-const var280!2 var1060)
(assert (not (= var280!2 null-var1060)))
(assert (= (off/1442430106 (cast-from-var1060-to-var199 var280!2)) var2829)) ; Statement: r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var1060-to-var199=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), length/-134980193=([java.lang.String], int), ensureCapacity/993961316=([com.alibaba.fastjson2.JSONWriterUTF16, int], void), chars/1482366354=([com.alibaba.fastjson2.JSONWriterUTF16], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void)}
; {var1060=com.alibaba.fastjson2.JSONWriterUTF16, var280=r0, var1480=r1, var777=null_type, var199=com.alibaba.fastjson2.JSONWriter, var2890=$i0, var1206=$i1, var750=$i2, var3988=$i4, var1801=$r2, var2043=$i3, var3774=0, var3254=$i5, var3175=$i6, var2829=$i7}
; {com.alibaba.fastjson2.JSONWriterUTF16=var1060, r0=var280, r1=var1480, null_type=var777, com.alibaba.fastjson2.JSONWriter=var199, $i0=var2890, $i1=var1206, $i2=var750, $i4=var3988, $r2=var1801, $i3=var2043, 0=var3774, $i5=var3254, $i6=var3175, $i7=var2829}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	r1 := @parameter0: java.lang.String;	$i0 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	virtualinvoke r0.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i2);	$i4 = virtualinvoke r1.<java.lang.String: int length()>();	$r2 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars>;	$i3 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	virtualinvoke r1.<java.lang.String: void getChars(int,int,char[],int)>(0, $i4, $r2, $i3);	$i5 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	$i6 = virtualinvoke r1.<java.lang.String: int length()>();	$i7 = $i5 + $i6;	r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i7;	return
;block_num 1