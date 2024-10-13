(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3862 0)
(declare-sort var3157 0)
(declare-sort var1655 0)
(declare-sort var3156 0)
(declare-sort var505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var505) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun setIndex/-453939609 (var505 Int) void)
(declare-fun field/-42773609 (var3862) Int)
(declare-fun modify/1617327677 (var3862 var3157 Int) Int)
(declare-fun set/-1736220299 (var1655 Int Int) void)
(declare-const null-var3862 var3862)
(declare-const null-var3157 var3157)
(declare-const null-var1655 var1655)
(declare-const null-String String)
(declare-const null-var505 var505)
(declare-const null-Int Int)
(declare-const var3752 var3862) ; Statement: r4 := @this: cn.hutool.core.date.format.FastDateParser$NumberStrategy 
(assert (not (= var3752 null-var3862)))
(declare-const var2397 var3157) ; Statement: r5 := @parameter0: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var2397 null-var3157)))
(declare-const var2461 var1655) ; Statement: r3 := @parameter1: java.util.Calendar 
(assert (not (= var2461 null-var1655)))
(declare-const var2573 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2573 null-String)))
(declare-const var815 var505) ; Statement: r0 := @parameter3: java.text.ParsePosition 
(assert (not (= var815 null-var505)))
(declare-const var37 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var37 null-Int)))
(assert true)
(define-const var1039 Int (getIndex/-2136393185 var815)) ; Statement: i5 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var3948 Int (length/-134980193 var2573)) ; Statement: i6 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto i8 = i5 + i0 
(assert (not (= var37 0))) ; Cond: i0 != 0 
(define-const var3651 Int (+ var1039 var37)) ; Statement: i8 = i5 + i0 
 ; Statement: if i6 <= i8 goto (branch) 
(assert (<= var3948 var3651)) ; Cond: i6 <= i8 
 ; Statement: if i5 >= i6 goto $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (>= var1039 var3948)) ; Cond: i5 >= i6 
(assert true)
(define-const var1566 Int (getIndex/-2136393185 var815)) ; Statement: $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
 ; Statement: if $i1 != i5 goto $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (not (= var1566 var1039))) ; Cond: $i1 != i5 
(assert true)
(define-const var664 Int (getIndex/-2136393185 var815)) ; Statement: $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (not (and true (and (>= var664 0) (>= (str.len var2573) var1039) (>= var1039 var664)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), setIndex/-453939609=([java.text.ParsePosition, int], void), field/-42773609=([cn.hutool.core.date.format.FastDateParser$NumberStrategy], int), modify/1617327677=([cn.hutool.core.date.format.FastDateParser$NumberStrategy, cn.hutool.core.date.format.FastDateParser, int], int), set/-1736220299=([java.util.Calendar, int, int], void)}
; {var3862=cn.hutool.core.date.format.FastDateParser$NumberStrategy, var3752=r4, var3157=cn.hutool.core.date.format.FastDateParser, var2397=r5, var1655=java.util.Calendar, var2461=r3, var2573=r1, var3156=null_type, var505=java.text.ParsePosition, var815=r0, var37=i0, var1039=i5, var3948=i6, var3651=i8, var1566=$i1, var664=$i2, var1516=$r2, var1305=i10, var3577=$i3, var546=$i4}
; {cn.hutool.core.date.format.FastDateParser$NumberStrategy=var3862, r4=var3752, cn.hutool.core.date.format.FastDateParser=var3157, r5=var2397, java.util.Calendar=var1655, r3=var2461, r1=var2573, null_type=var3156, java.text.ParsePosition=var505, r0=var815, i0=var37, i5=var1039, i6=var3948, i8=var3651, $i1=var1566, $i2=var664, $r2=var1516, i10=var1305, $i3=var3577, $i4=var546}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r4 := @this: cn.hutool.core.date.format.FastDateParser$NumberStrategy;	r5 := @parameter0: cn.hutool.core.date.format.FastDateParser;	r3 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	r0 := @parameter3: java.text.ParsePosition;	i0 := @parameter4: int;	i5 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	i6 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto i8 = i5 + i0;	i8 = i5 + i0;	if i6 <= i8 goto (branch);	if i5 >= i6 goto $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	if $i1 != i5 goto $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i2, i5);	i10 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	virtualinvoke r0.<java.text.ParsePosition: void setIndex(int)>(i5);	$i3 = r4.<cn.hutool.core.date.format.FastDateParser$NumberStrategy: int field>;	$i4 = virtualinvoke r4.<cn.hutool.core.date.format.FastDateParser$NumberStrategy: int modify(cn.hutool.core.date.format.FastDateParser,int)>(r5, i10);	virtualinvoke r3.<java.util.Calendar: void set(int,int)>($i3, $i4);	return 1
;block_num 5