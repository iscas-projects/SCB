(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1731_stringSize/-1233370881 (Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun var1731_writeInt32/117163739 ((Array Int Int) Int Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var233 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var233 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "fieldReader0";     case 1: goto return "fieldReader1";     case 2: goto return "fieldReader2";     case 3: goto return "fieldReader3";     case 4: goto return "fieldReader4";     case 5: goto return "fieldReader5";     case 6: goto return "fieldReader6";     case 7: goto return "fieldReader7";     case 8: goto return "fieldReader8";     case 9: goto return "fieldReader9";     case 10: goto return "fieldReader10";     case 11: goto return "fieldReader11";     case 12: goto return "fieldReader12";     case 13: goto return "fieldReader13";     case 14: goto return "fieldReader14";     case 15: goto return "fieldReader15";     default: goto r0 = "fieldReader"; } 
(assert (and (not (= var233 15)) (and (not (= var233 14)) (and (not (= var233 13)) (and (not (= var233 12)) (and (not (= var233 11)) (and (not (= var233 10)) (and (not (= var233 9)) (and (not (= var233 8)) (and (not (= var233 7)) (and (not (= var233 6)) (and (not (= var233 5)) (and (not (= var233 4)) (and (not (= var233 3)) (and (not (= var233 2)) (and (not (= var233 1)) (and (not (= var233 0)) true))))))))))))))))) ; Intersect: Negate: Cond: i0 == 15   and Intersect: Negate: Cond: i0 == 14   and Intersect: Negate: Cond: i0 == 13   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional                
(define-const var939 String "fieldReader") ; Statement: r0 = "fieldReader" 
(define-const var2337 String "fieldReader") ; Statement: r4 = "fieldReader" 
(define-const var1501 String "fieldReader") ; Statement: r3 = "fieldReader" 
(assert true)
(define-const var2914 Int (length/-134980193 var2337)) ; Statement: i1 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var3345 Int (var1731_stringSize/-1233370881 var233)) ; Statement: i2 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>(i0) 
(define-const var627 Int (+ var2914 var3345)) ; Statement: $i3 = i1 + i2 
(define-const var3501 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i3] 
(assert true)
;(assert (getChars/1306883398 var1501 0 var2914 var3501 0)) ; Statement: virtualinvoke r3.<java.lang.String: void getChars(int,int,char[],int)>(0, i1, r1, 0) 

(declare-const var1501!1 String)
(declare-const var2006 Int)
(declare-const var2914!1 Int)
(declare-const var3501!1 (Array Int Int))
(declare-const var2006!1 Int)
;(assert (var1731_writeInt32/117163739 var3501!1 var2914!1 var233)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.IOUtils: int writeInt32(char[],int,int)>(r1, i1, i0) 

(declare-const var3501!2 (Array Int Int))
(declare-const var2914!2 Int)
(declare-const var233!1 Int)
(define-const var2774 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2774 var3501!2)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var2774!1 String)
(declare-const var3501!3 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1731_stringSize/-1233370881=([int], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), var1731_writeInt32/117163739=([char[], int, int], int), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var233=i0, var939=r0, var2337=r4, var1501=r3, var2914=i1, var1731=com.alibaba.fastjson2.util.IOUtils, var3345=i2, var627=$i3, var3501=r1, var2006=0, var2774=$r2}
; {i0=var233, r0=var939, r4=var2337, r3=var1501, i1=var2914, com.alibaba.fastjson2.util.IOUtils=var1731, i2=var3345, $i3=var627, r1=var3501, 0=var2006, $r2=var2774}
;seq <java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "fieldReader0";     case 1: goto return "fieldReader1";     case 2: goto return "fieldReader2";     case 3: goto return "fieldReader3";     case 4: goto return "fieldReader4";     case 5: goto return "fieldReader5";     case 6: goto return "fieldReader6";     case 7: goto return "fieldReader7";     case 8: goto return "fieldReader8";     case 9: goto return "fieldReader9";     case 10: goto return "fieldReader10";     case 11: goto return "fieldReader11";     case 12: goto return "fieldReader12";     case 13: goto return "fieldReader13";     case 14: goto return "fieldReader14";     case 15: goto return "fieldReader15";     default: goto r0 = "fieldReader"; };	r0 = "fieldReader";	r4 = "fieldReader";	r3 = "fieldReader";	i1 = virtualinvoke r4.<java.lang.String: int length()>();	i2 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>(i0);	$i3 = i1 + i2;	r1 = newarray (char)[$i3];	virtualinvoke r3.<java.lang.String: void getChars(int,int,char[],int)>(0, i1, r1, 0);	staticinvoke <com.alibaba.fastjson2.util.IOUtils: int writeInt32(char[],int,int)>(r1, i1, i0);	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 2