(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2908 0)
(declare-sort var3654 0)
(declare-sort var3746 0)
(declare-sort var835 0)
(declare-sort var3207 0)
(declare-sort var1140 0)
(declare-sort var2639 0)
(declare-sort var1986 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3746_getProperties/656610844 () var3654)
(declare-fun var835-init () var835)
(declare-fun stringPropertyNames/841652110 (var3654) var3207)
(declare-fun <init>/2032108350 (var835 var1140) void)
(declare-fun cast-from-var3207-to-var1140 (var3207) var1140)
(declare-fun var2639_sort/-787612144 (var1986) void)
(declare-fun cast-from-var835-to-var1986 (var835) var1986)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/529268990 (var835) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1709)
(declare-fun cast-from-var1709-to-String (var1709) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2908 var2908)
(declare-const null-String String)
(declare-const var3926 var2908) ; Statement: r10 := @this: lombok.javac.apt.Processor 
(assert (not (= var3926 null-var2908)))
(declare-const var2910 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2910 null-String)))
(define-const var847 var3654 var3746_getProperties/656610844) ; Statement: r0 = staticinvoke <java.lang.System: java.util.Properties getProperties()>() 
(define-const var3517 var835 var835-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
(define-const var2127 var3207 (stringPropertyNames/841652110 var847)) ; Statement: $r2 = virtualinvoke r0.<java.util.Properties: java.util.Set stringPropertyNames()>() 
(assert true)
;(assert (<init>/2032108350 var3517 (cast-from-var3207-to-var1140 var2127))) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>(java.util.Collection)>($r2) 

(declare-const var3517!1 var835)
(declare-const var2127!1 var3207)
;(assert (var2639_sort/-787612144 (cast-from-var835-to-var1986 var3517!1))) ; Statement: staticinvoke <java.util.Collections: void sort(java.util.List)>($r1) 

(declare-const var3517!2 var835)
(assert true)
;(assert (append/672562846 var2910 "Properties: \n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties: \n") 
(declare-const var2910!1 String)
(assert (= var2910!1 (str.++ var2910 "Properties: \n")))
(assert true)
(define-const var186 Iterator (iterator/529268990 var3517!2)) ; Statement: r4 = virtualinvoke $r1.<java.util.ArrayList: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1440 Bool (Iterator_hasNext/-1669924200 var186)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1440 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3451 var1709 (Iterator_next/-1124697587 var186)) ; Statement: $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var186!1 Iterator)
(define-const var820 String (cast-from-var1709-to-String var3451)) ; Statement: r6 = (java.lang.String) $r5 
(assert true)
(define-const var2876 Bool (startsWith/-1785782452 var820 "user.")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("user.") 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("- ") 
(assert (not (= (ite var2876 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1440!1 Bool (Iterator_hasNext/-1669924200 var186!1)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1440!1 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
;(assert (append/672562846 var2910!1 "\n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2910!2 String)
(assert (= var2910!2 (str.++ var2910!1 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3746_getProperties/656610844=([], java.util.Properties), var835-init=([], java.util.ArrayList), stringPropertyNames/841652110=([java.util.Properties], java.util.Set), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var3207-to-var1140=([java.util.Set], java.util.Collection), var2639_sort/-787612144=([java.util.List], void), cast-from-var835-to-var1986=([java.util.ArrayList], java.util.List), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/529268990=([java.util.ArrayList], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1709-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2908=lombok.javac.apt.Processor, var3926=r10, var2910=r3, var3654=java.util.Properties, var3746=java.lang.System, var847=r0, var835=java.util.ArrayList, var3517=$r1, var3207=java.util.Set, var2127=$r2, var1140=java.util.Collection, var2639=java.util.Collections, var1986=java.util.List, var186=r4, var1440=$z1, var1709=java.lang.Object, var3451=$r5, var820=r6, var2876=$z0}
; {lombok.javac.apt.Processor=var2908, r10=var3926, r3=var2910, java.util.Properties=var3654, java.lang.System=var3746, r0=var847, java.util.ArrayList=var835, $r1=var3517, java.util.Set=var3207, $r2=var2127, java.util.Collection=var1140, java.util.Collections=var2639, java.util.List=var1986, r4=var186, $z1=var1440, java.lang.Object=var1709, $r5=var3451, r6=var820, $z0=var2876}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r10 := @this: lombok.javac.apt.Processor;	r3 := @parameter0: java.lang.StringBuilder;	r0 = staticinvoke <java.lang.System: java.util.Properties getProperties()>();	$r1 = new java.util.ArrayList;	$r2 = virtualinvoke r0.<java.util.Properties: java.util.Set stringPropertyNames()>();	specialinvoke $r1.<java.util.ArrayList: void <init>(java.util.Collection)>($r2);	staticinvoke <java.util.Collections: void sort(java.util.List)>($r1);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties: \n");	r4 = virtualinvoke $r1.<java.util.ArrayList: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>();	$r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>();	r6 = (java.lang.String) $r5;	$z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("user.");	if $z0 == 0 goto $r7 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("- ");	goto [?= $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 6