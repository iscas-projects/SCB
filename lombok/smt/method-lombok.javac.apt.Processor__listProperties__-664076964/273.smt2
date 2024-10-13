(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3991 0)
(declare-sort var2898 0)
(declare-sort var3183 0)
(declare-sort var552 0)
(declare-sort var2176 0)
(declare-sort var3344 0)
(declare-sort var2472 0)
(declare-sort var797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3183_getProperties/656610844 () var2898)
(declare-fun var552-init () var552)
(declare-fun stringPropertyNames/841652110 (var2898) var2176)
(declare-fun <init>/2032108350 (var552 var3344) void)
(declare-fun cast-from-var2176-to-var3344 (var2176) var3344)
(declare-fun var2472_sort/-787612144 (var797) void)
(declare-fun cast-from-var552-to-var797 (var552) var797)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/529268990 (var552) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var3991 var3991)
(declare-const null-String String)
(declare-const var1876 var3991) ; Statement: r10 := @this: lombok.javac.apt.Processor 
(assert (not (= var1876 null-var3991)))
(declare-const var1052 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1052 null-String)))
(define-const var2513 var2898 var3183_getProperties/656610844) ; Statement: r0 = staticinvoke <java.lang.System: java.util.Properties getProperties()>() 
(define-const var972 var552 var552-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
(define-const var237 var2176 (stringPropertyNames/841652110 var2513)) ; Statement: $r2 = virtualinvoke r0.<java.util.Properties: java.util.Set stringPropertyNames()>() 
(assert true)
;(assert (<init>/2032108350 var972 (cast-from-var2176-to-var3344 var237))) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>(java.util.Collection)>($r2) 

(declare-const var972!1 var552)
(declare-const var237!1 var2176)
;(assert (var2472_sort/-787612144 (cast-from-var552-to-var797 var972!1))) ; Statement: staticinvoke <java.util.Collections: void sort(java.util.List)>($r1) 

(declare-const var972!2 var552)
(assert true)
;(assert (append/672562846 var1052 "Properties: \n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties: \n") 
(declare-const var1052!1 String)
(assert (= var1052!1 (str.++ var1052 "Properties: \n")))
(assert true)
(define-const var2338 Iterator (iterator/529268990 var972!2)) ; Statement: r4 = virtualinvoke $r1.<java.util.ArrayList: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2201 Bool (Iterator_hasNext/-1669924200 var2338)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var2201 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
;(assert (append/672562846 var1052!1 "\n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1052!2 String)
(assert (= var1052!2 (str.++ var1052!1 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3183_getProperties/656610844=([], java.util.Properties), var552-init=([], java.util.ArrayList), stringPropertyNames/841652110=([java.util.Properties], java.util.Set), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var2176-to-var3344=([java.util.Set], java.util.Collection), var2472_sort/-787612144=([java.util.List], void), cast-from-var552-to-var797=([java.util.ArrayList], java.util.List), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/529268990=([java.util.ArrayList], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var3991=lombok.javac.apt.Processor, var1876=r10, var1052=r3, var2898=java.util.Properties, var3183=java.lang.System, var2513=r0, var552=java.util.ArrayList, var972=$r1, var2176=java.util.Set, var237=$r2, var3344=java.util.Collection, var2472=java.util.Collections, var797=java.util.List, var2338=r4, var2201=$z1}
; {lombok.javac.apt.Processor=var3991, r10=var1876, r3=var1052, java.util.Properties=var2898, java.lang.System=var3183, r0=var2513, java.util.ArrayList=var552, $r1=var972, java.util.Set=var2176, $r2=var237, java.util.Collection=var3344, java.util.Collections=var2472, java.util.List=var797, r4=var2338, $z1=var2201}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r10 := @this: lombok.javac.apt.Processor;	r3 := @parameter0: java.lang.StringBuilder;	r0 = staticinvoke <java.lang.System: java.util.Properties getProperties()>();	$r1 = new java.util.ArrayList;	$r2 = virtualinvoke r0.<java.util.Properties: java.util.Set stringPropertyNames()>();	specialinvoke $r1.<java.util.ArrayList: void <init>(java.util.Collection)>($r2);	staticinvoke <java.util.Collections: void sort(java.util.List)>($r1);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties: \n");	r4 = virtualinvoke $r1.<java.util.ArrayList: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 3