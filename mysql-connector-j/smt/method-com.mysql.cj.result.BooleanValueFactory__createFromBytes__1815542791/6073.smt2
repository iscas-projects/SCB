(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var187 0)
(declare-sort var2446 0)
(declare-sort var2455 0)
(declare-sort var303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEncoding/1735483214 (var2446) String)
(declare-fun var2455_toString/-1641697207 ((Array Int Int) Int Int String) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun createFromLong/-487627613 (var187 Int) var303)
(declare-const null-var187 var187)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var2446 var2446)
(declare-const var74 var187) ; Statement: r3 := @this: com.mysql.cj.result.BooleanValueFactory 
(assert (not (= var74 null-var187)))
(declare-const var2156 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2156 null-__Array__Int__Int__)))
(declare-const var2914 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2914 null-Int)))
(declare-const var2504 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2504 null-Int)))
(declare-const var3938 var2446) ; Statement: r1 := @parameter3: com.mysql.cj.result.Field 
(assert (not (= var3938 null-var2446)))
 ; Statement: if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(assert (not (= var2504 0))) ; Cond: i0 != 0 
(assert true)
(define-const var3355 String (getEncoding/1735483214 var3938)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(define-const var3961 String (var2455_toString/-1641697207 var2156 var2914 var2504 var3355)) ; Statement: $r13 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2) 
(assert true)
(define-const var3477 (Array Int Int) (getBytes/1068683673 var3961)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.String: byte[] getBytes()>() 
(assert true)
(define-const var2948 Bool (equalsIgnoreCase/-92311102 var3961 "Y")) ; Statement: $z0 = virtualinvoke $r13.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("Y") 
 ; Statement: if $z0 != 0 goto $r16 = virtualinvoke r3.<com.mysql.cj.result.BooleanValueFactory: java.lang.Boolean createFromLong(long)>(1L) 
(assert (not (= (ite var2948 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1111 var303 (createFromLong/-487627613 var74 1)) ; Statement: $r16 = virtualinvoke r3.<com.mysql.cj.result.BooleanValueFactory: java.lang.Boolean createFromLong(long)>(1L) 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getEncoding/1735483214=([com.mysql.cj.result.Field], java.lang.String), var2455_toString/-1641697207=([byte[], int, int, java.lang.String], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), createFromLong/-487627613=([com.mysql.cj.result.BooleanValueFactory, long], java.lang.Boolean)}
; {var187=com.mysql.cj.result.BooleanValueFactory, var74=r3, var2156=r0, var2914=i1, var2504=i0, var2446=com.mysql.cj.result.Field, var3938=r1, var3355=$r2, var2455=com.mysql.cj.util.StringUtils, var3961=$r13, var3477=$r14, var2948=$z0, var303=java.lang.Boolean, var1111=$r16}
; {com.mysql.cj.result.BooleanValueFactory=var187, r3=var74, r0=var2156, i1=var2914, i0=var2504, com.mysql.cj.result.Field=var2446, r1=var3938, $r2=var3355, com.mysql.cj.util.StringUtils=var2455, $r13=var3961, $r14=var3477, $z0=var2948, java.lang.Boolean=var303, $r16=var1111}
;seq <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: byte[] getBytes()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: com.mysql.cj.result.BooleanValueFactory;	r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: com.mysql.cj.result.Field;	if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r13 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2);	$r14 = virtualinvoke $r13.<java.lang.String: byte[] getBytes()>();	$z0 = virtualinvoke $r13.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("Y");	if $z0 != 0 goto $r16 = virtualinvoke r3.<com.mysql.cj.result.BooleanValueFactory: java.lang.Boolean createFromLong(long)>(1L);	$r16 = virtualinvoke r3.<com.mysql.cj.result.BooleanValueFactory: java.lang.Boolean createFromLong(long)>(1L);	return $r16
;block_num 3