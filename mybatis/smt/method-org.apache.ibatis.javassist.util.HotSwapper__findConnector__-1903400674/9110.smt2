(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var676 0)
(declare-sort var1517 0)
(declare-sort var3911 0)
(declare-sort var725 0)
(declare-sort var2021 0)
(declare-sort var1544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var725_virtualMachineManager/1902316787 () var3911)
(declare-fun var3911_allConnectors/-1135984437 (var3911) var2021)
(declare-fun var2021_iterator/-912451715 (var2021) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1544-init () var1544)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1544 String) void)
(declare-const null-var676 var676)
(declare-const null-String String)
(declare-const var3036 var676) ; Statement: r12 := @this: org.apache.ibatis.javassist.util.HotSwapper 
(assert (not (= var3036 null-var676)))
(declare-const var2923 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2923 null-String)))
(define-const var3005 var3911 var725_virtualMachineManager/1902316787) ; Statement: $r0 = staticinvoke <com.sun.jdi.Bootstrap: com.sun.jdi.VirtualMachineManager virtualMachineManager()>() 
(define-const var1710 var2021 (var3911_allConnectors/-1135984437 var3005)) ; Statement: r1 = interfaceinvoke $r0.<com.sun.jdi.VirtualMachineManager: java.util.List allConnectors()>() 
(define-const var3028 Iterator (var2021_iterator/-912451715 var1710)) ; Statement: r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1614 Bool (Iterator_hasNext/-1669924200 var3028)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.io.IOException 
(assert (= (ite var1614 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1475 var1544 var1544-init) ; Statement: $r3 = new java.io.IOException 
(define-const var3667 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3667)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3667!1 String)
(assert (= var3667!1 ""))
(assert true)
(define-const var1839 String (append/672562846 var3667!1 "Not found: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not found: ") 
(declare-const var3667!2 String)
(assert (= var3667!2 (str.++ var3667!1 "Not found: ")))
(assert true)
(define-const var1455 String (append/672562846 var1839 var2923)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1839!1 String)
(assert (= var1839!1 (str.++ var1839 var2923)))
(assert true)
(define-const var1601 String (toString/-2075883882 var1455)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1475 var1601)) ; Statement: specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r8) 

(declare-const var1475!1 var1544)
(declare-const var1601!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var725_virtualMachineManager/1902316787=([], com.sun.jdi.VirtualMachineManager), var3911_allConnectors/-1135984437=([com.sun.jdi.VirtualMachineManager], java.util.List), var2021_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1544-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var676=org.apache.ibatis.javassist.util.HotSwapper, var3036=r12, var2923=r5, var1517=null_type, var3911=com.sun.jdi.VirtualMachineManager, var725=com.sun.jdi.Bootstrap, var3005=$r0, var2021=java.util.List, var1710=r1, var3028=r2, var1614=$z0, var1544=java.io.IOException, var1475=$r3, var3667=$r4, var1839=$r6, var1455=$r7, var1601=$r8}
; {org.apache.ibatis.javassist.util.HotSwapper=var676, r12=var3036, r5=var2923, null_type=var1517, com.sun.jdi.VirtualMachineManager=var3911, com.sun.jdi.Bootstrap=var725, $r0=var3005, java.util.List=var2021, r1=var1710, r2=var3028, $z0=var1614, java.io.IOException=var1544, $r3=var1475, $r4=var3667, $r6=var1839, $r7=var1455, $r8=var1601}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.ibatis.javassist.util.HotSwapper;	r5 := @parameter0: java.lang.String;	$r0 = staticinvoke <com.sun.jdi.Bootstrap: com.sun.jdi.VirtualMachineManager virtualMachineManager()>();	r1 = interfaceinvoke $r0.<com.sun.jdi.VirtualMachineManager: java.util.List allConnectors()>();	r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = new java.io.IOException;	$r3 = new java.io.IOException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not found: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 3