(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1636_stringSize/-1233370881 (Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1636_getChars/-942248452 (Int Int (Array Int Int)) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var416 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var416 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "objectReader0";     case 1: goto return "objectReader1";     case 2: goto return "objectReader2";     case 3: goto return "objectReader3";     case 4: goto return "objectReader4";     case 5: goto return "objectReader5";     case 6: goto return "objectReader6";     case 7: goto return "objectReader7";     case 8: goto return "objectReader8";     case 9: goto return "objectReader9";     case 10: goto return "objectReader10";     case 11: goto return "objectReader11";     case 12: goto return "objectReader12";     case 13: goto return "objectReader13";     case 14: goto return "objectReader14";     case 15: goto return "objectReader15";     default: goto r0 = "objectReader"; } 
(assert (and (not (= var416 15)) (and (not (= var416 14)) (and (not (= var416 13)) (and (not (= var416 12)) (and (not (= var416 11)) (and (not (= var416 10)) (and (not (= var416 9)) (and (not (= var416 8)) (and (not (= var416 7)) (and (not (= var416 6)) (and (not (= var416 5)) (and (not (= var416 4)) (and (not (= var416 3)) (and (not (= var416 2)) (and (not (= var416 1)) (and (not (= var416 0)) true))))))))))))))))) ; Intersect: Negate: Cond: i0 == 15   and Intersect: Negate: Cond: i0 == 14   and Intersect: Negate: Cond: i0 == 13   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional                
(define-const var3839 String "objectReader") ; Statement: r0 = "objectReader" 
(define-const var2057 String "objectReader") ; Statement: r5 = "objectReader" 
(define-const var280 String "objectReader") ; Statement: r4 = "objectReader" 
(define-const var1377 String "objectReader") ; Statement: r3 = "objectReader" 
(define-const var507 Int (var1636_stringSize/-1233370881 var416)) ; Statement: i1 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>(i0) 
(assert true)
(define-const var3475 Int (length/-134980193 var280)) ; Statement: $i2 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var2771 Int (+ var3475 var507)) ; Statement: $i3 = $i2 + i1 
(define-const var1447 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i3] 
(assert true)
(define-const var3558 Int (length/-134980193 var1377)) ; Statement: $i4 = virtualinvoke r3.<java.lang.String: int length()>() 
(assert true)
;(assert (getChars/1306883398 var2057 0 var3558 var1447 0)) ; Statement: virtualinvoke r5.<java.lang.String: void getChars(int,int,char[],int)>(0, $i4, r1, 0) 

(declare-const var2057!1 String)
(declare-const var2385 Int)
(declare-const var3558!1 Int)
(declare-const var1447!1 (Array Int Int))
(declare-const var2385!1 Int)
(define-const var616 Int (getLength-Arr-Int-1 var1447!1)) ; Statement: $i5 = lengthof r1 
;(assert (var1636_getChars/-942248452 var416 var616 var1447!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,char[])>(i0, $i5, r1) 

(declare-const var416!1 Int)
(declare-const var616!1 Int)
(declare-const var1447!2 (Array Int Int))
(define-const var302 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var302 var1447!2)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var302!1 String)
(declare-const var1447!3 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1636_stringSize/-1233370881=([int], int), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), getLength-Arr-Int-1=([char[]], int), var1636_getChars/-942248452=([int, int, char[]], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var416=i0, var3839=r0, var2057=r5, var280=r4, var1377=r3, var1636=com.alibaba.fastjson2.util.IOUtils, var507=i1, var3475=$i2, var2771=$i3, var1447=r1, var3558=$i4, var2385=0, var616=$i5, var302=$r2}
; {i0=var416, r0=var3839, r5=var2057, r4=var280, r3=var1377, com.alibaba.fastjson2.util.IOUtils=var1636, i1=var507, $i2=var3475, $i3=var2771, r1=var1447, $i4=var3558, 0=var2385, $i5=var616, $r2=var302}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "objectReader0";     case 1: goto return "objectReader1";     case 2: goto return "objectReader2";     case 3: goto return "objectReader3";     case 4: goto return "objectReader4";     case 5: goto return "objectReader5";     case 6: goto return "objectReader6";     case 7: goto return "objectReader7";     case 8: goto return "objectReader8";     case 9: goto return "objectReader9";     case 10: goto return "objectReader10";     case 11: goto return "objectReader11";     case 12: goto return "objectReader12";     case 13: goto return "objectReader13";     case 14: goto return "objectReader14";     case 15: goto return "objectReader15";     default: goto r0 = "objectReader"; };	r0 = "objectReader";	r5 = "objectReader";	r4 = "objectReader";	r3 = "objectReader";	i1 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>(i0);	$i2 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = $i2 + i1;	r1 = newarray (char)[$i3];	$i4 = virtualinvoke r3.<java.lang.String: int length()>();	virtualinvoke r5.<java.lang.String: void getChars(int,int,char[],int)>(0, $i4, r1, 0);	$i5 = lengthof r1;	staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,char[])>(i0, $i5, r1);	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 2