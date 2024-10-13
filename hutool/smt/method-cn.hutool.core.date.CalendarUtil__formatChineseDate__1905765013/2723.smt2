(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1865 0)
(declare-sort var450 0)
(declare-sort var3247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var450_builder/-311177978 () String)
(declare-fun get/335439681 (var1865 Int) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3247_formatThousand/-1371624812 (Int Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun length/-171891354 (String) Int)
(declare-fun delete/775836148 (String Int Int) String)
(declare-const null-var1865 var1865)
(declare-const null-Bool Bool)
(declare-const var3451 var1865) ; Statement: r1 := @parameter0: java.util.Calendar 
(assert (not (= var3451 null-var1865)))
(declare-const var280 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var280 null-Bool)))
(define-const var700 String var450_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var3541 Int (get/335439681 var3451 1)) ; Statement: $i0 = virtualinvoke r1.<java.util.Calendar: int get(int)>(1) 
(define-const var3339 String (String_valueOf/1240665136 var3541)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1200 Int (length/-134980193 var3339)) ; Statement: i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var380 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(24180) 
(assert (>= var380 var1200)) ; Cond: i9 >= i1 
(assert true)
;(assert (append/-1166366385 var700 24180)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(24180) 
(declare-const var700!1 String)
(assert (str.prefixof var700 var700!1))
(assert true)
(define-const var2764 Int (get/335439681 var3451 2)) ; Statement: $i2 = virtualinvoke r1.<java.util.Calendar: int get(int)>(2) 
(define-const var2912 Int (+ var2764 1)) ; Statement: i10 = $i2 + 1 
(define-const var2757 String (var3247_formatThousand/-1371624812 var2912 (ite (= 1 0) true false))) ; Statement: $r3 = staticinvoke <cn.hutool.core.convert.NumberChineseFormatter: java.lang.String formatThousand(int,boolean)>(i10, 0) 
(assert true)
;(assert (append/672562846 var700!1 var2757)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var700!2 String)
(assert (= var700!2 (str.++ var700!1 var2757)))
(assert true)
;(assert (append/-1166366385 var700!2 26376)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(26376) 
(declare-const var700!3 String)
(assert (str.prefixof var700!2 var700!3))
(assert true)
(define-const var3098 Int (get/335439681 var3451 5)) ; Statement: i3 = virtualinvoke r1.<java.util.Calendar: int get(int)>(5) 
(define-const var3471 String (var3247_formatThousand/-1371624812 var3098 (ite (= 1 0) true false))) ; Statement: $r4 = staticinvoke <cn.hutool.core.convert.NumberChineseFormatter: java.lang.String formatThousand(int,boolean)>(i3, 0) 
(assert true)
;(assert (append/672562846 var700!3 var3471)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var700!4 String)
(assert (= var700!4 (str.++ var700!3 var3471)))
(assert true)
;(assert (append/-1166366385 var700!4 26085)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(26085) 
(declare-const var700!5 String)
(assert (str.prefixof var700!4 var700!5))
(assert true)
(define-const var733 String (toString/-2075883882 var700!5)) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3745 String (replace/1524665721 var733 38646 12295)) ; Statement: r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(char,char)>(38646, 12295) 
(assert true)
(define-const var1782 Int (length/-171891354 var700!5)) ; Statement: $i4 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
;(assert (delete/775836148 var700!5 0 var1782)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>(0, $i4) 

(declare-const var700!6 String)
(declare-const var277 Int)
(declare-const var1782!1 Int)
(assert true)
;(assert (append/672562846 var700!6 var3745)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var700!7 String)
(assert (= var700!7 (str.++ var700!6 var3745)))
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var280 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1102 String (toString/-2075883882 var700!7)) ; Statement: $r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var450_builder/-311177978=([], java.lang.StringBuilder), get/335439681=([java.util.Calendar, int], int), String_valueOf/1240665136=([int], java.lang.String), length/-134980193=([java.lang.String], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3247_formatThousand/-1371624812=([int, boolean], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), length/-171891354=([java.lang.StringBuilder], int), delete/775836148=([java.lang.StringBuilder, int, int], java.lang.StringBuilder)}
; {var1865=java.util.Calendar, var3451=r1, var280=z0, var450=cn.hutool.core.util.StrUtil, var700=r0, var3541=$i0, var3339=r2, var1200=i1, var380=i9, var2764=$i2, var2912=i10, var3247=cn.hutool.core.convert.NumberChineseFormatter, var2757=$r3, var3098=i3, var3471=$r4, var733=$r5, var3745=r6, var1782=$i4, var277=0, var1102=$r7}
; {java.util.Calendar=var1865, r1=var3451, z0=var280, cn.hutool.core.util.StrUtil=var450, r0=var700, $i0=var3541, r2=var3339, i1=var1200, i9=var380, $i2=var2764, i10=var2912, cn.hutool.core.convert.NumberChineseFormatter=var3247, $r3=var2757, i3=var3098, $r4=var3471, $r5=var733, r6=var3745, $i4=var1782, 0=var277, $r7=var1102}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>": 1}
;stmts r1 := @parameter0: java.util.Calendar;	z0 := @parameter1: boolean;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$i0 = virtualinvoke r1.<java.util.Calendar: int get(int)>(1);	r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	i1 = virtualinvoke r2.<java.lang.String: int length()>();	i9 = 0;	if i9 >= i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(24180);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(24180);	$i2 = virtualinvoke r1.<java.util.Calendar: int get(int)>(2);	i10 = $i2 + 1;	$r3 = staticinvoke <cn.hutool.core.convert.NumberChineseFormatter: java.lang.String formatThousand(int,boolean)>(i10, 0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(26376);	i3 = virtualinvoke r1.<java.util.Calendar: int get(int)>(5);	$r4 = staticinvoke <cn.hutool.core.convert.NumberChineseFormatter: java.lang.String formatThousand(int,boolean)>(i3, 0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(26085);	$r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(char,char)>(38646, 12295);	$i4 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>(0, $i4);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z0 == 0 goto $r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4