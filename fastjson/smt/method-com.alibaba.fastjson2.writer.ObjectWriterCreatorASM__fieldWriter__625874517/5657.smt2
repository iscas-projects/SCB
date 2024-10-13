(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var375_stringSize/-1233370881 (Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var375_getChars/-942248452 (Int Int (Array Int Int)) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var2489 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2489 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "fieldWriter0";     case 1: goto return "fieldWriter1";     case 2: goto return "fieldWriter2";     case 3: goto return "fieldWriter3";     case 4: goto return "fieldWriter4";     case 5: goto return "fieldWriter5";     case 6: goto return "fieldWriter6";     case 7: goto return "fieldWriter7";     case 8: goto return "fieldWriter8";     case 9: goto return "fieldWriter9";     case 10: goto return "fieldWriter10";     case 11: goto return "fieldWriter11";     case 12: goto return "fieldWriter12";     case 13: goto return "fieldWriter13";     case 14: goto return "fieldWriter14";     case 15: goto return "fieldWriter15";     default: goto r0 = "fieldWriter"; } 
(assert (and (not (= var2489 15)) (and (not (= var2489 14)) (and (not (= var2489 13)) (and (not (= var2489 12)) (and (not (= var2489 11)) (and (not (= var2489 10)) (and (not (= var2489 9)) (and (not (= var2489 8)) (and (not (= var2489 7)) (and (not (= var2489 6)) (and (not (= var2489 5)) (and (not (= var2489 4)) (and (not (= var2489 3)) (and (not (= var2489 2)) (and (not (= var2489 1)) (and (not (= var2489 0)) true))))))))))))))))) ; Intersect: Negate: Cond: i0 == 15   and Intersect: Negate: Cond: i0 == 14   and Intersect: Negate: Cond: i0 == 13   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional                
(define-const var2059 String "fieldWriter") ; Statement: r0 = "fieldWriter" 
(define-const var2773 String "fieldWriter") ; Statement: r5 = "fieldWriter" 
(define-const var3407 String "fieldWriter") ; Statement: r4 = "fieldWriter" 
(define-const var3223 String "fieldWriter") ; Statement: r3 = "fieldWriter" 
(define-const var1592 Int (var375_stringSize/-1233370881 var2489)) ; Statement: i1 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>(i0) 
(assert true)
(define-const var3033 Int (length/-134980193 var3407)) ; Statement: $i2 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var3734 Int (+ var3033 var1592)) ; Statement: $i3 = $i2 + i1 
(define-const var2600 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i3] 
(assert true)
(define-const var3128 Int (length/-134980193 var3223)) ; Statement: $i4 = virtualinvoke r3.<java.lang.String: int length()>() 
(assert true)
;(assert (getChars/1306883398 var2773 0 var3128 var2600 0)) ; Statement: virtualinvoke r5.<java.lang.String: void getChars(int,int,char[],int)>(0, $i4, r1, 0) 

(declare-const var2773!1 String)
(declare-const var3969 Int)
(declare-const var3128!1 Int)
(declare-const var2600!1 (Array Int Int))
(declare-const var3969!1 Int)
(define-const var2792 Int (getLength-Arr-Int-1 var2600!1)) ; Statement: $i5 = lengthof r1 
;(assert (var375_getChars/-942248452 var2489 var2792 var2600!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,char[])>(i0, $i5, r1) 

(declare-const var2489!1 Int)
(declare-const var2792!1 Int)
(declare-const var2600!2 (Array Int Int))
(define-const var569 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var569 var2600!2)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var569!1 String)
(declare-const var2600!3 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var375_stringSize/-1233370881=([int], int), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), getLength-Arr-Int-1=([char[]], int), var375_getChars/-942248452=([int, int, char[]], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2489=i0, var2059=r0, var2773=r5, var3407=r4, var3223=r3, var375=com.alibaba.fastjson2.util.IOUtils, var1592=i1, var3033=$i2, var3734=$i3, var2600=r1, var3128=$i4, var3969=0, var2792=$i5, var569=$r2}
; {i0=var2489, r0=var2059, r5=var2773, r4=var3407, r3=var3223, com.alibaba.fastjson2.util.IOUtils=var375, i1=var1592, $i2=var3033, $i3=var3734, r1=var2600, $i4=var3128, 0=var3969, $i5=var2792, $r2=var569}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "fieldWriter0";     case 1: goto return "fieldWriter1";     case 2: goto return "fieldWriter2";     case 3: goto return "fieldWriter3";     case 4: goto return "fieldWriter4";     case 5: goto return "fieldWriter5";     case 6: goto return "fieldWriter6";     case 7: goto return "fieldWriter7";     case 8: goto return "fieldWriter8";     case 9: goto return "fieldWriter9";     case 10: goto return "fieldWriter10";     case 11: goto return "fieldWriter11";     case 12: goto return "fieldWriter12";     case 13: goto return "fieldWriter13";     case 14: goto return "fieldWriter14";     case 15: goto return "fieldWriter15";     default: goto r0 = "fieldWriter"; };	r0 = "fieldWriter";	r5 = "fieldWriter";	r4 = "fieldWriter";	r3 = "fieldWriter";	i1 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>(i0);	$i2 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = $i2 + i1;	r1 = newarray (char)[$i3];	$i4 = virtualinvoke r3.<java.lang.String: int length()>();	virtualinvoke r5.<java.lang.String: void getChars(int,int,char[],int)>(0, $i4, r1, 0);	$i5 = lengthof r1;	staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,char[])>(i0, $i5, r1);	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 2