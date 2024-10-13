(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1155 0)
(declare-sort var316 0)
(declare-sort var3231 0)
(declare-sort var2080 0)
(declare-sort var2259 0)
(declare-sort var2350 0)
(declare-sort var1712 0)
(declare-sort var749 0)
(declare-sort var3997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3231_getProperties/656610844 () var316)
(declare-fun var2080-init () var2080)
(declare-fun stringPropertyNames/841652110 (var316) var2259)
(declare-fun <init>/2032108350 (var2080 var2350) void)
(declare-fun cast-from-var2259-to-var2350 (var2259) var2350)
(declare-fun var1712_sort/-787612144 (var749) void)
(declare-fun cast-from-var2080-to-var749 (var2080) var749)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/529268990 (var2080) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3997)
(declare-fun cast-from-var3997-to-String (var3997) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3231_getProperty/258823597 (String) String)
(declare-fun var1155_string/1310973599 (String String) void)
(declare-const null-var1155 var1155)
(declare-const null-String String)
(declare-const var2038 var1155) ; Statement: r10 := @this: lombok.javac.apt.Processor 
(assert (not (= var2038 null-var1155)))
(declare-const var1645 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1645 null-String)))
(define-const var2748 var316 var3231_getProperties/656610844) ; Statement: r0 = staticinvoke <java.lang.System: java.util.Properties getProperties()>() 
(define-const var884 var2080 var2080-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
(define-const var1843 var2259 (stringPropertyNames/841652110 var2748)) ; Statement: $r2 = virtualinvoke r0.<java.util.Properties: java.util.Set stringPropertyNames()>() 
(assert true)
;(assert (<init>/2032108350 var884 (cast-from-var2259-to-var2350 var1843))) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>(java.util.Collection)>($r2) 

(declare-const var884!1 var2080)
(declare-const var1843!1 var2259)
;(assert (var1712_sort/-787612144 (cast-from-var2080-to-var749 var884!1))) ; Statement: staticinvoke <java.util.Collections: void sort(java.util.List)>($r1) 

(declare-const var884!2 var2080)
(assert true)
;(assert (append/672562846 var1645 "Properties: \n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties: \n") 
(declare-const var1645!1 String)
(assert (= var1645!1 (str.++ var1645 "Properties: \n")))
(assert true)
(define-const var2421 Iterator (iterator/529268990 var884!2)) ; Statement: r4 = virtualinvoke $r1.<java.util.ArrayList: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1365 Bool (Iterator_hasNext/-1669924200 var2421)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1365 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1988 var3997 (Iterator_next/-1124697587 var2421)) ; Statement: $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2421!1 Iterator)
(define-const var2517 String (cast-from-var3997-to-String var1988)) ; Statement: r6 = (java.lang.String) $r5 
(assert true)
(define-const var1490 Bool (startsWith/-1785782452 var2517 "user.")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("user.") 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("- ") 
(assert (= (ite var1490 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var551 String (append/672562846 var1645!1 "- ")) ; Statement: $r7 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("- ") 
(declare-const var1645!2 String)
(assert (= var1645!2 (str.++ var1645!1 "- ")))
(assert true)
(define-const var425 String (append/672562846 var551 var2517)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var551!1 String)
(assert (= var551!1 (str.++ var551 var2517)))
(assert true)
;(assert (append/672562846 var425 " = ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var425!1 String)
(assert (= var425!1 (str.++ var425 " = ")))
(define-const var2160 String (var3231_getProperty/258823597 var2517)) ; Statement: $r9 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>(r6) 
;(assert (var1155_string/1310973599 var1645!2 var2160)) ; Statement: staticinvoke <lombok.javac.apt.Processor: void string(java.lang.StringBuilder,java.lang.String)>(r3, $r9) 

(declare-const var1645!3 String)
(declare-const var2160!1 String)
(assert true)
;(assert (append/672562846 var1645!3 "\n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1645!4 String)
(assert (= var1645!4 (str.++ var1645!3 "\n")))
(assert true) ; Non Conditional
(define-const var1365!1 Bool (Iterator_hasNext/-1669924200 var2421!1)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1365!1 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
;(assert (append/672562846 var1645!4 "\n")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1645!5 String)
(assert (= var1645!5 (str.++ var1645!4 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3231_getProperties/656610844=([], java.util.Properties), var2080-init=([], java.util.ArrayList), stringPropertyNames/841652110=([java.util.Properties], java.util.Set), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var2259-to-var2350=([java.util.Set], java.util.Collection), var1712_sort/-787612144=([java.util.List], void), cast-from-var2080-to-var749=([java.util.ArrayList], java.util.List), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/529268990=([java.util.ArrayList], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3997-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3231_getProperty/258823597=([java.lang.String], java.lang.String), var1155_string/1310973599=([java.lang.StringBuilder, java.lang.String], void)}
; {var1155=lombok.javac.apt.Processor, var2038=r10, var1645=r3, var316=java.util.Properties, var3231=java.lang.System, var2748=r0, var2080=java.util.ArrayList, var884=$r1, var2259=java.util.Set, var1843=$r2, var2350=java.util.Collection, var1712=java.util.Collections, var749=java.util.List, var2421=r4, var1365=$z1, var3997=java.lang.Object, var1988=$r5, var2517=r6, var1490=$z0, var551=$r7, var425=$r8, var2160=$r9}
; {lombok.javac.apt.Processor=var1155, r10=var2038, r3=var1645, java.util.Properties=var316, java.lang.System=var3231, r0=var2748, java.util.ArrayList=var2080, $r1=var884, java.util.Set=var2259, $r2=var1843, java.util.Collection=var2350, java.util.Collections=var1712, java.util.List=var749, r4=var2421, $z1=var1365, java.lang.Object=var3997, $r5=var1988, r6=var2517, $z0=var1490, $r7=var551, $r8=var425, $r9=var2160}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r10 := @this: lombok.javac.apt.Processor;	r3 := @parameter0: java.lang.StringBuilder;	r0 = staticinvoke <java.lang.System: java.util.Properties getProperties()>();	$r1 = new java.util.ArrayList;	$r2 = virtualinvoke r0.<java.util.Properties: java.util.Set stringPropertyNames()>();	specialinvoke $r1.<java.util.ArrayList: void <init>(java.util.Collection)>($r2);	staticinvoke <java.util.Collections: void sort(java.util.List)>($r1);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Properties: \n");	r4 = virtualinvoke $r1.<java.util.ArrayList: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>();	$r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>();	r6 = (java.lang.String) $r5;	$z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("user.");	if $z0 == 0 goto $r7 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("- ");	$r7 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("- ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r9 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>(r6);	staticinvoke <lombok.javac.apt.Processor: void string(java.lang.StringBuilder,java.lang.String)>(r3, $r9);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r5 = interfaceinvoke r4.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 6