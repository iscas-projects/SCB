(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3072 0)
(declare-sort var3459 0)
(declare-sort var2919 0)
(declare-sort var2309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3459-init () var3459)
(declare-fun columnValues/615155166 (var3072) var2919)
(declare-fun var2919_size/-959786421 (var2919) Int)
(declare-fun <init>/1228603609 (var3459 Int) void)
(declare-fun var2919_iterator/-912451715 (var2919) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2309_toString/-522406933 (var2309) String)
(declare-fun cast-from-var3459-to-var2309 (var3459) var2309)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3072 var3072)
(declare-const var1114 var3072) ; Statement: r1 := @this: org.apache.ibatis.logging.jdbc.BaseJdbcLogger 
(assert (not (= var1114 null-var3072)))
(define-const var692 var3459 var3459-init) ; Statement: $r0 = new java.util.ArrayList 
(define-const var1920 var2919 (columnValues/615155166 var1114)) ; Statement: $r2 = r1.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: java.util.List columnValues> 
(define-const var1512 Int (var2919_size/-959786421 var1920)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(assert true)
;(assert (<init>/1228603609 var692 var1512)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var692!1 var3459)
(declare-const var1512!1 Int)
(define-const var1660 var2919 (columnValues/615155166 var1114)) ; Statement: $r3 = r1.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: java.util.List columnValues> 
(define-const var1094 Iterator (var2919_iterator/-912451715 var1660)) ; Statement: r15 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var829 Bool (Iterator_hasNext/-1669924200 var1094)) ; Statement: $z0 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r16 = interfaceinvoke $r0.<java.util.List: java.lang.String toString()>() 
(assert (= (ite var829 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2825 String (var2309_toString/-522406933 (cast-from-var3459-to-var2309 var692!1))) ; Statement: r16 = interfaceinvoke $r0.<java.util.List: java.lang.String toString()>() 
(assert true)
(define-const var2075 Int (length/-134980193 var2825)) ; Statement: $i1 = virtualinvoke r16.<java.lang.String: int length()>() 
(define-const var2666 Int (- var2075 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var2825) var2666) (>= var2666 1))))
(define-const var3807 String (substring/-1240304868 var2825 1 var2666)) ; Statement: $r4 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(1, $i2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3459-init=([], java.util.ArrayList), columnValues/615155166=([org.apache.ibatis.logging.jdbc.BaseJdbcLogger], java.util.List), var2919_size/-959786421=([java.util.List], int), <init>/1228603609=([java.util.ArrayList, int], void), var2919_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2309_toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3459-to-var2309=([java.util.ArrayList], java.lang.Object), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3072=org.apache.ibatis.logging.jdbc.BaseJdbcLogger, var1114=r1, var3459=java.util.ArrayList, var692=$r0, var2919=java.util.List, var1920=$r2, var1512=$i0, var1660=$r3, var1094=r15, var829=$z0, var2309=java.lang.Object, var2825=r16, var2075=$i1, var2666=$i2, var3807=$r4}
; {org.apache.ibatis.logging.jdbc.BaseJdbcLogger=var3072, r1=var1114, java.util.ArrayList=var3459, $r0=var692, java.util.List=var2919, $r2=var1920, $i0=var1512, $r3=var1660, r15=var1094, $z0=var829, java.lang.Object=var2309, r16=var2825, $i1=var2075, $i2=var2666, $r4=var3807}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: org.apache.ibatis.logging.jdbc.BaseJdbcLogger;	$r0 = new java.util.ArrayList;	$r2 = r1.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: java.util.List columnValues>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	specialinvoke $r0.<java.util.ArrayList: void <init>(int)>($i0);	$r3 = r1.<org.apache.ibatis.logging.jdbc.BaseJdbcLogger: java.util.List columnValues>;	r15 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r16 = interfaceinvoke $r0.<java.util.List: java.lang.String toString()>();	r16 = interfaceinvoke $r0.<java.util.List: java.lang.String toString()>();	$i1 = virtualinvoke r16.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$r4 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(1, $i2);	return $r4
;block_num 3