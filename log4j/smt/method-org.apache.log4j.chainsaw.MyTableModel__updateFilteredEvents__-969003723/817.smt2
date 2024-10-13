(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2454 0)
(declare-sort var3792 0)
(declare-sort var1167 0)
(declare-sort var880 0)
(declare-sort var120 0)
(declare-sort var1649 0)
(declare-sort var2154 0)
(declare-sort var1598 0)
(declare-sort var1123 0)
(declare-sort var1621 0)
(declare-sort var3154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3792_currentTimeMillis/630293680 () Int)
(declare-fun var1167-init () var1167)
(declare-fun <init>/-325640736 (var1167) void)
(declare-fun mAllEvents/1776671299 (var2454) var880)
(declare-fun var120_size/-649653377 (var120) Int)
(declare-fun cast-from-var880-to-var120 (var880) var120)
(declare-fun var120_iterator/1911472585 (var120) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun mFilteredEvents/1776671299 (var2454) (Array Int var1649))
(declare-fun getLength-Arr-var1649-1 ((Array Int var1649)) Int)
(declare-fun var1598_toArray/-775711681 (var1598 (Array Int var2154)) (Array Int var2154))
(declare-fun cast-from-var1167-to-var1598 (var1167) var1598)
(declare-fun cast-from-__Array__Int__var1649__-to-__Array__Int__var2154__ ((Array Int var1649)) (Array Int var2154))
(declare-fun cast-from-__Array__Int__var2154__-to-__Array__Int__var1649__ ((Array Int var2154)) (Array Int var1649))
(define-fun cast-from-__Array__Int__var1649__-to-__Array__Int__var1649__ ((arg (Array Int var1649))) (Array Int var1649) arg)
(declare-fun fireTableDataChanged/-2048879066 (var1123) void)
(declare-fun cast-from-var2454-to-var1123 (var2454) var1123)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1447793227 (String Int) String)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var3154 var2154) void)
(declare-fun cast-from-var1621-to-var3154 (var1621) var3154)
(declare-fun cast-from-String-to-var2154 (String) var2154)
(declare-const null-var2454 var2454)
(declare-const null-Bool Bool)
(declare-const null-var1649 var1649)
(declare-const var2454-EMPTY_LIST (Array Int var1649))
(declare-const var2454-LOG var1621)
(declare-const var1393 var2454) ; Statement: r1 := @this: org.apache.log4j.chainsaw.MyTableModel 
(assert (not (= var1393 null-var2454)))
(declare-const var2210 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var2210 null-Bool)))
(define-const var1464 Int var3792_currentTimeMillis/630293680) ; Statement: l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var3982 var1167 var1167-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3982)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var3982!1 var1167)
(define-const var2886 var880 (mAllEvents/1776671299 var1393)) ; Statement: $r2 = r1.<org.apache.log4j.chainsaw.MyTableModel: java.util.SortedSet mAllEvents> 
(define-const var1904 Int (var120_size/-649653377 (cast-from-var880-to-var120 var2886))) ; Statement: i1 = interfaceinvoke $r2.<java.util.SortedSet: int size()>() 
(define-const var772 var880 (mAllEvents/1776671299 var1393)) ; Statement: $r3 = r1.<org.apache.log4j.chainsaw.MyTableModel: java.util.SortedSet mAllEvents> 
(define-const var2547 Iterator (var120_iterator/1911472585 (cast-from-var880-to-var120 var772))) ; Statement: r4 = interfaceinvoke $r3.<java.util.SortedSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2502 Bool (Iterator_hasNext/-1669924200 var2547)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> 
(assert (= (ite var2502 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3765 (Array Int var1649) (mFilteredEvents/1776671299 var1393)) ; Statement: $r5 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> 
(define-const var3147 Int (getLength-Arr-var1649-1 var3765)) ; Statement: $i2 = lengthof $r5 
 ; Statement: if $i2 != 0 goto $r6 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> 
(assert (not (not (= var3147 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3721 var1649 null-var1649) ; Statement: $r14 = null 
 ; Statement: goto [?= $r7 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] EMPTY_LIST>] 
(assert true) ; Non Conditional
(define-const var1064 (Array Int var1649) var2454-EMPTY_LIST) ; Statement: $r7 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] EMPTY_LIST> 
(define-const var928 (Array Int var2154) (var1598_toArray/-775711681 (cast-from-var1167-to-var1598 var3982!1) (cast-from-__Array__Int__var1649__-to-__Array__Int__var2154__ var1064))) ; Statement: $r8 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r7) 
(define-const var424 (Array Int var1649) (cast-from-__Array__Int__var2154__-to-__Array__Int__var1649__ var928)) ; Statement: $r9 = (org.apache.log4j.chainsaw.EventDetails[]) $r8 
(define-const var3193 (Array Int var1649) (cast-from-__Array__Int__var1649__-to-__Array__Int__var1649__ var424)) ; Statement: $r10 = (org.apache.log4j.chainsaw.EventDetails[]) $r9 
(declare-const var1393!1 var2454)
(assert (not (= var1393!1 null-var2454)))
(assert (= (mFilteredEvents/1776671299 var1393!1) var3193)) ; Statement: r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> = $r10 
 ; Statement: if z1 == 0 goto virtualinvoke r1.<org.apache.log4j.chainsaw.MyTableModel: void fireTableDataChanged()>() 
(assert (= (ite var2210 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (fireTableDataChanged/-2048879066 (cast-from-var2454-to-var1123 var1393!1))) ; Statement: virtualinvoke r1.<org.apache.log4j.chainsaw.MyTableModel: void fireTableDataChanged()>() 

(declare-const var1393!2 var2454)
(assert true) ; Non Conditional
(define-const var242 Int var3792_currentTimeMillis/630293680) ; Statement: $l5 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var1396 var1621 var2454-LOG) ; Statement: $r15 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.Logger LOG> 
(define-const var100 String String-init) ; Statement: $r16 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var100)) ; Statement: specialinvoke $r16.<java.lang.StringBuffer: void <init>()>() 

(declare-const var100!1 String)
(assert true)
(define-const var3716 String (append/1560614132 var100!1 "Total time [ms]: ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Total time [ms]: ") 
(declare-const var100!2 String)
(assert (str.prefixof var100!1 var100!2))
(define-const var3699 Int (- var242 var1464)) ; Statement: $l6 = $l5 - l0 
(assert true)
(define-const var1454 String (append/1447793227 var3716 var3699)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l6) 
(assert true)
(define-const var3061 String (append/1560614132 var1454 " in update, size: ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" in update, size: ") 
(declare-const var1454!1 String)
(assert (str.prefixof var1454 var1454!1))
(assert true)
(define-const var1251 String (append/1845021834 var3061 var1904)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
(define-const var1181 String (toString/-222306083 var1251)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var1621-to-var3154 var1396) (cast-from-String-to-var2154 var1181))) ; Statement: virtualinvoke $r15.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r21) 

(declare-const var1396!1 var1621)
(declare-const var1181!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3792_currentTimeMillis/630293680=([], long), var1167-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), mAllEvents/1776671299=([org.apache.log4j.chainsaw.MyTableModel], java.util.SortedSet), var120_size/-649653377=([java.util.Set], int), cast-from-var880-to-var120=([java.util.SortedSet], java.util.Set), var120_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), mFilteredEvents/1776671299=([org.apache.log4j.chainsaw.MyTableModel], org.apache.log4j.chainsaw.EventDetails[]), getLength-Arr-var1649-1=([org.apache.log4j.chainsaw.EventDetails[]], int), var1598_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-var1167-to-var1598=([java.util.ArrayList], java.util.List), cast-from-__Array__Int__var1649__-to-__Array__Int__var2154__=([org.apache.log4j.chainsaw.EventDetails[]], java.lang.Object[]), cast-from-__Array__Int__var2154__-to-__Array__Int__var1649__=([java.lang.Object[]], org.apache.log4j.chainsaw.EventDetails[]), cast-from-__Array__Int__var1649__-to-__Array__Int__var1649__=([org.apache.log4j.chainsaw.EventDetails[]], org.apache.log4j.chainsaw.EventDetails[]), fireTableDataChanged/-2048879066=([javax.swing.table.AbstractTableModel], void), cast-from-var2454-to-var1123=([org.apache.log4j.chainsaw.MyTableModel], javax.swing.table.AbstractTableModel), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var1621-to-var3154=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var2154=([java.lang.String], java.lang.Object)}
; {var2454=org.apache.log4j.chainsaw.MyTableModel, var1393=r1, var2210=z1, var3792=java.lang.System, var1464=l0, var1167=java.util.ArrayList, var3982=$r0, var880=java.util.SortedSet, var2886=$r2, var120=java.util.Set, var1904=i1, var772=$r3, var2547=r4, var2502=$z0, var1649=org.apache.log4j.chainsaw.EventDetails, var3765=$r5, var3147=$i2, var3721=$r14, var1064=$r7, var2154=java.lang.Object, var1598=java.util.List, var928=$r8, var424=$r9, var3193=$r10, var1123=javax.swing.table.AbstractTableModel, var242=$l5, var1621=org.apache.log4j.Logger, var1396=$r15, var100=$r16, var3716=$r17, var3699=$l6, var1454=$r18, var3061=$r19, var1251=$r20, var1181=$r21, var3154=org.apache.log4j.Category}
; {org.apache.log4j.chainsaw.MyTableModel=var2454, r1=var1393, z1=var2210, java.lang.System=var3792, l0=var1464, java.util.ArrayList=var1167, $r0=var3982, java.util.SortedSet=var880, $r2=var2886, java.util.Set=var120, i1=var1904, $r3=var772, r4=var2547, $z0=var2502, org.apache.log4j.chainsaw.EventDetails=var1649, $r5=var3765, $i2=var3147, $r14=var3721, $r7=var1064, java.lang.Object=var2154, java.util.List=var1598, $r8=var928, $r9=var424, $r10=var3193, javax.swing.table.AbstractTableModel=var1123, $l5=var242, org.apache.log4j.Logger=var1621, $r15=var1396, $r16=var100, $r17=var3716, $l6=var3699, $r18=var1454, $r19=var3061, $r20=var1251, $r21=var1181, org.apache.log4j.Category=var3154}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(long)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.chainsaw.MyTableModel;	z1 := @parameter0: boolean;	l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.log4j.chainsaw.MyTableModel: java.util.SortedSet mAllEvents>;	i1 = interfaceinvoke $r2.<java.util.SortedSet: int size()>();	$r3 = r1.<org.apache.log4j.chainsaw.MyTableModel: java.util.SortedSet mAllEvents>;	r4 = interfaceinvoke $r3.<java.util.SortedSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents>;	$r5 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents>;	$i2 = lengthof $r5;	if $i2 != 0 goto $r6 = r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents>;	$r14 = null;	goto [?= $r7 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] EMPTY_LIST>];	$r7 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] EMPTY_LIST>;	$r8 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r7);	$r9 = (org.apache.log4j.chainsaw.EventDetails[]) $r8;	$r10 = (org.apache.log4j.chainsaw.EventDetails[]) $r9;	r1.<org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.chainsaw.EventDetails[] mFilteredEvents> = $r10;	if z1 == 0 goto virtualinvoke r1.<org.apache.log4j.chainsaw.MyTableModel: void fireTableDataChanged()>();	virtualinvoke r1.<org.apache.log4j.chainsaw.MyTableModel: void fireTableDataChanged()>();	$l5 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r15 = <org.apache.log4j.chainsaw.MyTableModel: org.apache.log4j.Logger LOG>;	$r16 = new java.lang.StringBuffer;	specialinvoke $r16.<java.lang.StringBuffer: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Total time [ms]: ");	$l6 = $l5 - l0;	$r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l6);	$r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" in update, size: ");	$r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	$r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r15.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r21);	return
;block_num 7