(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var768 0)
(declare-sort var978 0)
(declare-sort var2566 0)
(declare-sort var390 0)
(declare-sort var2002 0)
(declare-sort var3665 0)
(declare-sort var3255 0)
(declare-sort var1005 0)
(declare-sort var437 0)
(declare-sort var1121 0)
(declare-sort var3645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var978_currentTimeMillis/630293680 () Int)
(declare-fun var2566-init () var2566)
(declare-fun <init>/-325640736 (var2566) void)
(declare-fun mAllEvents/1776671299 (var768) var390)
(declare-fun var2002_size/-649653377 (var2002) Int)
(declare-fun cast-from-var390-to-var2002 (var390) var2002)
(declare-fun var2002_iterator/1911472585 (var2002) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun mFilteredEvents/1776671299 (var768) (Array Int var3665))
(declare-fun getLength-Arr-var3665-1 ((Array Int var3665)) Int)
(declare-fun var1005_toArray/-775711681 (var1005 (Array Int var3255)) (Array Int var3255))
(declare-fun cast-from-var2566-to-var1005 (var2566) var1005)
(declare-fun cast-from-__Array__Int__var3665__-to-__Array__Int__var3255__ ((Array Int var3665)) (Array Int var3255))
(declare-fun cast-from-__Array__Int__var3255__-to-__Array__Int__var3665__ ((Array Int var3255)) (Array Int var3665))
(define-fun cast-from-__Array__Int__var3665__-to-__Array__Int__var3665__ ((arg (Array Int var3665))) (Array Int var3665) arg)
(declare-fun fireTableDataChanged/-2048879066 (var437) void)
(declare-fun cast-from-var768-to-var437 (var768) var437)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1447793227 (String Int) String)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var3645 var3255) void)
(declare-fun cast-from-var1121-to-var3645 (var1121) var3645)
(declare-fun cast-from-String-to-var3255 (String) var3255)
(declare-const null-var768 var768)
(declare-const null-Bool Bool)
(declare-const var768-EMPTY_LIST (Array Int var3665))
(declare-const var768-LOG var1121)
(declare-const var3090 var768) ; Statement: r1 := @this: org.apache.log4j.chainsaw.MyTableModel 
(assert (not (= var3090 null-var768)))
(declare-const var3394 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3394 null-Bool)))
(define-const var3085 Int var978_currentTimeMillis/630293680) ; Statement: l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var3541 var2566 var2566-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3541)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var3541!1 var2566)
(define-const var3535 var390 (mAllEvents/1776671299 var3090)) ; Statement: $r2 = r1.<org.apache.log4j.chainsaw.MyTableModel: java.util.SortedSet mAllEvents> 
(define-const var2590 Int (var2002_size/-649653377 (cast-from-var390-to-var2002 var3535))) ; Statement: i1 = interfaceinvoke $r2.<java.util.SortedSet: int size()>() 
(define-const var3307 var390 (mAllEvents/1776671299 var3090)) ; Statement: $r3 = r1.<org.apache.log4j.chainsaw.MyTableModel: java.util.SortedSet mAllEvents> 
(define-const var1859 Iterator (var2002_iterator/1911472585 (cast-from-var390-to-var2002 var3307))) ; Statement: r4 = interfaceinvoke $r3.<java.util.SortedSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var739 Bool (Iterator_hasNext/-1669924200 var1859)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> 
(assert (= (ite var739 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2751 (Array Int var3665) (mFilteredEvents/1776671299 var3090)) ; Statement: $r5 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> 
(define-const var2328 Int (getLength-Arr-var3665-1 var2751)) ; Statement: $i2 = lengthof $r5 
 ; Statement: if $i2 != 0 goto $r6 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> 
(assert (not (= var2328 0))) ; Cond: $i2 != 0 
(define-const var304 (Array Int var3665) (mFilteredEvents/1776671299 var3090)) ; Statement: $r6 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> 
(define-const var1591 var3665 (select var304 0)) ; Statement: $r14 = $r6[0] 
(assert true) ; Non Conditional
(define-const var236 (Array Int var3665) var768-EMPTY_LIST) ; Statement: $r7 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] EMPTY_LIST> 
(define-const var259 (Array Int var3255) (var1005_toArray/-775711681 (cast-from-var2566-to-var1005 var3541!1) (cast-from-__Array__Int__var3665__-to-__Array__Int__var3255__ var236))) ; Statement: $r8 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r7) 
(define-const var1981 (Array Int var3665) (cast-from-__Array__Int__var3255__-to-__Array__Int__var3665__ var259)) ; Statement: $r9 = (org.apache.log4j.chainsaw.EventDetails[]) $r8 
(define-const var2110 (Array Int var3665) (cast-from-__Array__Int__var3665__-to-__Array__Int__var3665__ var1981)) ; Statement: $r10 = (org.apache.log4j.chainsaw.EventDetails[]) $r9 
(declare-const var3090!1 var768)
(assert (not (= var3090!1 null-var768)))
(assert (= (mFilteredEvents/1776671299 var3090!1) var2110)) ; Statement: r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> = $r10 
 ; Statement: if z1 == 0 goto virtualinvoke r1.<org.apache.log4j.chainsaw.MyTableModel: void fireTableDataChanged()>() 
(assert (= (ite var3394 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (fireTableDataChanged/-2048879066 (cast-from-var768-to-var437 var3090!1))) ; Statement: virtualinvoke r1.<org.apache.log4j.chainsaw.MyTableModel: void fireTableDataChanged()>() 

(declare-const var3090!2 var768)
(assert true) ; Non Conditional
(define-const var686 Int var978_currentTimeMillis/630293680) ; Statement: $l5 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var3636 var1121 var768-LOG) ; Statement: $r15 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.Logger LOG> 
(define-const var3145 String String-init) ; Statement: $r16 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3145)) ; Statement: specialinvoke $r16.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3145!1 String)
(assert true)
(define-const var2216 String (append/1560614132 var3145!1 "Total time [ms]: ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Total time [ms]: ") 
(declare-const var3145!2 String)
(assert (str.prefixof var3145!1 var3145!2))
(define-const var1483 Int (- var686 var3085)) ; Statement: $l6 = $l5 - l0 
(assert true)
(define-const var2506 String (append/1447793227 var2216 var1483)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l6) 
(assert true)
(define-const var133 String (append/1560614132 var2506 " in update, size: ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" in update, size: ") 
(declare-const var2506!1 String)
(assert (str.prefixof var2506 var2506!1))
(assert true)
(define-const var784 String (append/1845021834 var133 var2590)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
(define-const var3614 String (toString/-222306083 var784)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var1121-to-var3645 var3636) (cast-from-String-to-var3255 var3614))) ; Statement: virtualinvoke $r15.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r21) 

(declare-const var3636!1 var1121)
(declare-const var3614!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var978_currentTimeMillis/630293680=([], long), var2566-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), mAllEvents/1776671299=([org.apache.log4j.chainsaw.MyTableModel], java.util.SortedSet), var2002_size/-649653377=([java.util.Set], int), cast-from-var390-to-var2002=([java.util.SortedSet], java.util.Set), var2002_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), mFilteredEvents/1776671299=([org.apache.log4j.chainsaw.MyTableModel], org.apache.log4j.chainsaw.EventDetails[]), getLength-Arr-var3665-1=([org.apache.log4j.chainsaw.EventDetails[]], int), var1005_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-var2566-to-var1005=([java.util.ArrayList], java.util.List), cast-from-__Array__Int__var3665__-to-__Array__Int__var3255__=([org.apache.log4j.chainsaw.EventDetails[]], java.lang.Object[]), cast-from-__Array__Int__var3255__-to-__Array__Int__var3665__=([java.lang.Object[]], org.apache.log4j.chainsaw.EventDetails[]), cast-from-__Array__Int__var3665__-to-__Array__Int__var3665__=([org.apache.log4j.chainsaw.EventDetails[]], org.apache.log4j.chainsaw.EventDetails[]), fireTableDataChanged/-2048879066=([javax.swing.table.AbstractTableModel], void), cast-from-var768-to-var437=([org.apache.log4j.chainsaw.MyTableModel], javax.swing.table.AbstractTableModel), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var1121-to-var3645=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var3255=([java.lang.String], java.lang.Object)}
; {var768=org.apache.log4j.chainsaw.MyTableModel, var3090=r1, var3394=z1, var978=java.lang.System, var3085=l0, var2566=java.util.ArrayList, var3541=$r0, var390=java.util.SortedSet, var3535=$r2, var2002=java.util.Set, var2590=i1, var3307=$r3, var1859=r4, var739=$z0, var3665=org.apache.log4j.chainsaw.EventDetails, var2751=$r5, var2328=$i2, var304=$r6, var1591=$r14, var236=$r7, var3255=java.lang.Object, var1005=java.util.List, var259=$r8, var1981=$r9, var2110=$r10, var437=javax.swing.table.AbstractTableModel, var686=$l5, var1121=org.apache.log4j.Logger, var3636=$r15, var3145=$r16, var2216=$r17, var1483=$l6, var2506=$r18, var133=$r19, var784=$r20, var3614=$r21, var3645=org.apache.log4j.Category}
; {org.apache.log4j.chainsaw.MyTableModel=var768, r1=var3090, z1=var3394, java.lang.System=var978, l0=var3085, java.util.ArrayList=var2566, $r0=var3541, java.util.SortedSet=var390, $r2=var3535, java.util.Set=var2002, i1=var2590, $r3=var3307, r4=var1859, $z0=var739, org.apache.log4j.chainsaw.EventDetails=var3665, $r5=var2751, $i2=var2328, $r6=var304, $r14=var1591, $r7=var236, java.lang.Object=var3255, java.util.List=var1005, $r8=var259, $r9=var1981, $r10=var2110, javax.swing.table.AbstractTableModel=var437, $l5=var686, org.apache.log4j.Logger=var1121, $r15=var3636, $r16=var3145, $r17=var2216, $l6=var1483, $r18=var2506, $r19=var133, $r20=var784, $r21=var3614, org.apache.log4j.Category=var3645}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(long)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.chainsaw.MyTableModel;	z1 := @parameter0: boolean;	l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.log4j.chainsaw.MyTableModel: java.util.SortedSet mAllEvents>;	i1 = interfaceinvoke $r2.<java.util.SortedSet: int size()>();	$r3 = r1.<org.apache.log4j.chainsaw.MyTableModel: java.util.SortedSet mAllEvents>;	r4 = interfaceinvoke $r3.<java.util.SortedSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents>;	$r5 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents>;	$i2 = lengthof $r5;	if $i2 != 0 goto $r6 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents>;	$r6 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents>;	$r14 = $r6[0];	$r7 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] EMPTY_LIST>;	$r8 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r7);	$r9 = (org.apache.log4j.chainsaw.EventDetails[]) $r8;	$r10 = (org.apache.log4j.chainsaw.EventDetails[]) $r9;	r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> = $r10;	if z1 == 0 goto virtualinvoke r1.<org.apache.log4j.chainsaw.MyTableModel: void fireTableDataChanged()>();	virtualinvoke r1.<org.apache.log4j.chainsaw.MyTableModel: void fireTableDataChanged()>();	$l5 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r15 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.Logger LOG>;	$r16 = new java.lang.StringBuffer;	specialinvoke $r16.<java.lang.StringBuffer: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Total time [ms]: ");	$l6 = $l5 - l0;	$r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l6);	$r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" in update, size: ");	$r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	$r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r15.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r21);	return
;block_num 7