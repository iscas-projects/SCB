(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1964 0)
(declare-sort var2 0)
(declare-sort var1417 0)
(declare-sort var3574 0)
(declare-sort var3175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1417-init () var1417)
(declare-fun <init>/484455981 (var1417) void)
(declare-fun getAncestorInterfaces/547981128 (var2) var3574)
(declare-fun var3574_iterator/-1617794947 (var3574) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3175_iterator/1911472585 (var3175) Iterator)
(declare-fun cast-from-var1417-to-var3175 (var1417) var3175)
(declare-fun isStructuralInterface/-406166409 (var2) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1964 var1964)
(declare-const null-String String)
(declare-const null-var2 var2)
(declare-const var2894 var1964) ; Statement: r8 := @this: com.google.javascript.jscomp.TypedCodeGenerator 
(assert (not (= var2894 null-var1964)))
(declare-const var1741 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1741 null-String)))
(declare-const var3330 var2) ; Statement: r1 := @parameter1: com.google.javascript.rhino.jstype.FunctionType 
(assert (not (= var3330 null-var2)))
(define-const var3839 var1417 var1417-init) ; Statement: $r0 = new java.util.TreeSet 
(assert true)
;(assert (<init>/484455981 var3839)) ; Statement: specialinvoke $r0.<java.util.TreeSet: void <init>()>() 

(declare-const var3839!1 var1417)
(assert true)
(define-const var1842 var3574 (getAncestorInterfaces/547981128 var3330)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: java.util.Collection getAncestorInterfaces()>() 
(define-const var3822 Iterator (var3574_iterator/-1617794947 var1842)) ; Statement: r9 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1535 Bool (Iterator_hasNext/-1669924200 var3822)) ; Statement: $z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r11 = interfaceinvoke $r0.<java.util.Set: java.util.Iterator iterator()>() 
(assert (= (ite var1535 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3724 Iterator (var3175_iterator/1911472585 (cast-from-var1417-to-var3175 var3839!1))) ; Statement: r11 = interfaceinvoke $r0.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1668 Bool (Iterator_hasNext/-1669924200 var3724)) ; Statement: $z1 = interfaceinvoke r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: boolean isStructuralInterface()>() 
(assert (= (ite var1668 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var572 Bool (isStructuralInterface/-406166409 var3330)) ; Statement: $z2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: boolean isStructuralInterface()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" * @interface\n") 
(assert (not (= (ite var572 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (append/672562846 var1741 " * @record\n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" * @record\n") 
(declare-const var1741!1 String)
(assert (= var1741!1 (str.++ var1741 " * @record\n")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1417-init=([], java.util.TreeSet), <init>/484455981=([java.util.TreeSet], void), getAncestorInterfaces/547981128=([com.google.javascript.rhino.jstype.FunctionType], java.util.Collection), var3574_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3175_iterator/1911472585=([java.util.Set], java.util.Iterator), cast-from-var1417-to-var3175=([java.util.TreeSet], java.util.Set), isStructuralInterface/-406166409=([com.google.javascript.rhino.jstype.FunctionType], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1964=com.google.javascript.jscomp.TypedCodeGenerator, var2894=r8, var1741=r3, var2=com.google.javascript.rhino.jstype.FunctionType, var3330=r1, var1417=java.util.TreeSet, var3839=$r0, var3574=java.util.Collection, var1842=$r2, var3822=r9, var1535=$z0, var3175=java.util.Set, var3724=r11, var1668=$z1, var572=$z2}
; {com.google.javascript.jscomp.TypedCodeGenerator=var1964, r8=var2894, r3=var1741, com.google.javascript.rhino.jstype.FunctionType=var2, r1=var3330, java.util.TreeSet=var1417, $r0=var3839, java.util.Collection=var3574, $r2=var1842, r9=var3822, $z0=var1535, java.util.Set=var3175, r11=var3724, $z1=var1668, $z2=var572}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.TypedCodeGenerator;	r3 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: com.google.javascript.rhino.jstype.FunctionType;	$r0 = new java.util.TreeSet;	specialinvoke $r0.<java.util.TreeSet: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: java.util.Collection getAncestorInterfaces()>();	r9 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r11 = interfaceinvoke $r0.<java.util.Set: java.util.Iterator iterator()>();	r11 = interfaceinvoke $r0.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r11.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: boolean isStructuralInterface()>();	$z2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: boolean isStructuralInterface()>();	if $z2 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" * @interface\n");	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" * @record\n");	goto [?= return];	return
;block_num 7