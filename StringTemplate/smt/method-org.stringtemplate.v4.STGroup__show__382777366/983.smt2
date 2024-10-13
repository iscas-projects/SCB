(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var775 0)
(declare-sort var1615 0)
(declare-sort var3579 0)
(declare-sort var2023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun imports/787585255 (var775) var1615)
(declare-fun var1615_size/-959786421 (var1615) Int)
(declare-fun templates/787585255 (var775) var3579)
(declare-fun var3579_keySet/-712633290 (var3579) var2023)
(declare-fun var2023_iterator/1911472585 (var2023) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var775 var775)
(declare-const var966 var775) ; Statement: r1 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var966 null-var775)))
(define-const var3907 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3907)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3907!1 String)
(assert (= var3907!1 ""))
(define-const var3731 var1615 (imports/787585255 var966)) ; Statement: $r2 = r1.<org.stringtemplate.v4.STGroup: java.util.List imports> 
(define-const var3620 Int (var1615_size/-959786421 var3731)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if $i0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates> 
(assert (= var3620 0)) ; Cond: $i0 == 0 
(define-const var2391 var3579 (templates/787585255 var966)) ; Statement: $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates> 
(define-const var955 var2023 (var3579_keySet/-712633290 var2391)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>() 
(define-const var904 Iterator (var2023_iterator/1911472585 var955)) ; Statement: $r35 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2356 Bool (Iterator_hasNext/-1669924200 var904)) ; Statement: $z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2356 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var566 String (toString/-2075883882 var3907!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), imports/787585255=([org.stringtemplate.v4.STGroup], java.util.List), var1615_size/-959786421=([java.util.List], int), templates/787585255=([org.stringtemplate.v4.STGroup], java.util.Map), var3579_keySet/-712633290=([java.util.Map], java.util.Set), var2023_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var775=org.stringtemplate.v4.STGroup, var966=r1, var3907=$r0, var1615=java.util.List, var3731=$r2, var3620=$i0, var3579=java.util.Map, var2391=$r3, var2023=java.util.Set, var955=$r4, var904=$r35, var2356=$z1, var566=$r5}
; {org.stringtemplate.v4.STGroup=var775, r1=var966, $r0=var3907, java.util.List=var1615, $r2=var3731, $i0=var3620, java.util.Map=var3579, $r3=var2391, java.util.Set=var2023, $r4=var955, $r35=var904, $z1=var2356, $r5=var566}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.STGroup;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.stringtemplate.v4.STGroup: java.util.List imports>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if $i0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates>;	$r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>();	$r35 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4