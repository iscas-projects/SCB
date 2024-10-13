(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var224 0)
(declare-sort var1224 0)
(declare-sort var2041 0)
(declare-sort var3663 0)
(declare-sort var1277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var1277) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun setIndex/-453939609 (var1277 Int) void)
(declare-fun field/-524421381 (var224) Int)
(declare-fun modify/1710419509 (var224 var1224 Int) Int)
(declare-fun set/-1736220299 (var2041 Int Int) void)
(declare-const null-var224 var224)
(declare-const null-var1224 var1224)
(declare-const null-var2041 var2041)
(declare-const null-String String)
(declare-const null-var1277 var1277)
(declare-const null-Int Int)
(declare-const var78 var224) ; Statement: r4 := @this: org.apache.commons.lang3.time.FastDateParser$NumberStrategy 
(assert (not (= var78 null-var224)))
(declare-const var33 var1224) ; Statement: r5 := @parameter0: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var33 null-var1224)))
(declare-const var3076 var2041) ; Statement: r3 := @parameter1: java.util.Calendar 
(assert (not (= var3076 null-var2041)))
(declare-const var1427 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1427 null-String)))
(declare-const var609 var1277) ; Statement: r0 := @parameter3: java.text.ParsePosition 
(assert (not (= var609 null-var1277)))
(declare-const var3256 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var3256 null-Int)))
(assert true)
(define-const var2694 Int (getIndex/-2136393185 var609)) ; Statement: i5 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var2924 Int (length/-134980193 var1427)) ; Statement: i6 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto i8 = i5 + i0 
(assert (not (= var3256 0))) ; Cond: i0 != 0 
(define-const var2721 Int (+ var2694 var3256)) ; Statement: i8 = i5 + i0 
 ; Statement: if i6 <= i8 goto (branch) 
(assert (<= var2924 var2721)) ; Cond: i6 <= i8 
 ; Statement: if i5 >= i6 goto $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (>= var2694 var2924)) ; Cond: i5 >= i6 
(assert true)
(define-const var1416 Int (getIndex/-2136393185 var609)) ; Statement: $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
 ; Statement: if $i1 != i5 goto $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (not (= var1416 var2694))) ; Cond: $i1 != i5 
(assert true)
(define-const var1721 Int (getIndex/-2136393185 var609)) ; Statement: $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (not (and true (and (>= var1721 0) (>= (str.len var1427) var2694) (>= var2694 var1721)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), setIndex/-453939609=([java.text.ParsePosition, int], void), field/-524421381=([org.apache.commons.lang3.time.FastDateParser$NumberStrategy], int), modify/1710419509=([org.apache.commons.lang3.time.FastDateParser$NumberStrategy, org.apache.commons.lang3.time.FastDateParser, int], int), set/-1736220299=([java.util.Calendar, int, int], void)}
; {var224=org.apache.commons.lang3.time.FastDateParser$NumberStrategy, var78=r4, var1224=org.apache.commons.lang3.time.FastDateParser, var33=r5, var2041=java.util.Calendar, var3076=r3, var1427=r1, var3663=null_type, var1277=java.text.ParsePosition, var609=r0, var3256=i0, var2694=i5, var2924=i6, var2721=i8, var1416=$i1, var1721=$i2, var1422=$r2, var2445=i10, var1610=$i3, var1561=$i4}
; {org.apache.commons.lang3.time.FastDateParser$NumberStrategy=var224, r4=var78, org.apache.commons.lang3.time.FastDateParser=var1224, r5=var33, java.util.Calendar=var2041, r3=var3076, r1=var1427, null_type=var3663, java.text.ParsePosition=var1277, r0=var609, i0=var3256, i5=var2694, i6=var2924, i8=var2721, $i1=var1416, $i2=var1721, $r2=var1422, i10=var2445, $i3=var1610, $i4=var1561}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r4 := @this: org.apache.commons.lang3.time.FastDateParser$NumberStrategy;	r5 := @parameter0: org.apache.commons.lang3.time.FastDateParser;	r3 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	r0 := @parameter3: java.text.ParsePosition;	i0 := @parameter4: int;	i5 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	i6 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto i8 = i5 + i0;	i8 = i5 + i0;	if i6 <= i8 goto (branch);	if i5 >= i6 goto $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	if $i1 != i5 goto $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i2, i5);	i10 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	virtualinvoke r0.<java.text.ParsePosition: void setIndex(int)>(i5);	$i3 = r4.<org.apache.commons.lang3.time.FastDateParser$NumberStrategy: int field>;	$i4 = virtualinvoke r4.<org.apache.commons.lang3.time.FastDateParser$NumberStrategy: int modify(org.apache.commons.lang3.time.FastDateParser,int)>(r5, i10);	virtualinvoke r3.<java.util.Calendar: void set(int,int)>($i3, $i4);	return 1
;block_num 5