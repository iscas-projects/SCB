(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var880 0)
(declare-sort var2585 0)
(declare-sort var1765 0)
(declare-sort var2098 0)
(declare-sort var866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1765-init () var1765)
(declare-fun <init>/484455981 (var1765) void)
(declare-fun getAncestorInterfaces/547981128 (var2585) var2098)
(declare-fun var2098_iterator/-1617794947 (var2098) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var866_iterator/1911472585 (var866) Iterator)
(declare-fun cast-from-var1765-to-var866 (var1765) var866)
(declare-fun isStructuralInterface/-406166409 (var2585) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var880 var880)
(declare-const null-String String)
(declare-const null-var2585 var2585)
(declare-const var3265 var880) ; Statement: r8 := @this: com.google.javascript.jscomp.TypedCodeGenerator 
(assert (not (= var3265 null-var880)))
(declare-const var3847 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3847 null-String)))
(declare-const var3074 var2585) ; Statement: r1 := @parameter1: com.google.javascript.rhino.jstype.FunctionType 
(assert (not (= var3074 null-var2585)))
(define-const var71 var1765 var1765-init) ; Statement: $r0 = new java.util.TreeSet 
(assert true)
;(assert (<init>/484455981 var71)) ; Statement: specialinvoke $r0.<java.util.TreeSet: void <init>()>() 

(declare-const var71!1 var1765)
(assert true)
(define-const var2185 var2098 (getAncestorInterfaces/547981128 var3074)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: java.util.Collection getAncestorInterfaces()>() 
(define-const var1625 Iterator (var2098_iterator/-1617794947 var2185)) ; Statement: r9 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3565 Bool (Iterator_hasNext/-1669924200 var1625)) ; Statement: $z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r11 = interfaceinvoke $r0.<java.util.Set: java.util.Iterator iterator()>() 
(assert (= (ite var3565 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2953 Iterator (var866_iterator/1911472585 (cast-from-var1765-to-var866 var71!1))) ; Statement: r11 = interfaceinvoke $r0.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3183 Bool (Iterator_hasNext/-1669924200 var2953)) ; Statement: $z1 = interfaceinvoke r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: boolean isStructuralInterface()>() 
(assert (= (ite var3183 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var711 Bool (isStructuralInterface/-406166409 var3074)) ; Statement: $z2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: boolean isStructuralInterface()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" * @interface\n") 
(assert (= (ite var711 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var3847 " * @interface\n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" * @interface\n") 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 " * @interface\n")))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1765-init=([], java.util.TreeSet), <init>/484455981=([java.util.TreeSet], void), getAncestorInterfaces/547981128=([com.google.javascript.rhino.jstype.FunctionType], java.util.Collection), var2098_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var866_iterator/1911472585=([java.util.Set], java.util.Iterator), cast-from-var1765-to-var866=([java.util.TreeSet], java.util.Set), isStructuralInterface/-406166409=([com.google.javascript.rhino.jstype.FunctionType], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var880=com.google.javascript.jscomp.TypedCodeGenerator, var3265=r8, var3847=r3, var2585=com.google.javascript.rhino.jstype.FunctionType, var3074=r1, var1765=java.util.TreeSet, var71=$r0, var2098=java.util.Collection, var2185=$r2, var1625=r9, var3565=$z0, var866=java.util.Set, var2953=r11, var3183=$z1, var711=$z2}
; {com.google.javascript.jscomp.TypedCodeGenerator=var880, r8=var3265, r3=var3847, com.google.javascript.rhino.jstype.FunctionType=var2585, r1=var3074, java.util.TreeSet=var1765, $r0=var71, java.util.Collection=var2098, $r2=var2185, r9=var1625, $z0=var3565, java.util.Set=var866, r11=var2953, $z1=var3183, $z2=var711}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.TypedCodeGenerator;	r3 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: com.google.javascript.rhino.jstype.FunctionType;	$r0 = new java.util.TreeSet;	specialinvoke $r0.<java.util.TreeSet: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: java.util.Collection getAncestorInterfaces()>();	r9 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r11 = interfaceinvoke $r0.<java.util.Set: java.util.Iterator iterator()>();	r11 = interfaceinvoke $r0.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r11.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: boolean isStructuralInterface()>();	$z2 = virtualinvoke r1.<com.google.javascript.rhino.jstype.FunctionType: boolean isStructuralInterface()>();	if $z2 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" * @interface\n");	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" * @interface\n");	return
;block_num 7