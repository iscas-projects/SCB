(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2007 0)
(declare-sort var1314 0)
(declare-sort var909 0)
(declare-sort var3630 0)
(declare-sort var3787 0)
(declare-sort var3984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var909_containsKey/1715618542 (var909 var3787) Bool)
(declare-fun cast-from-String-to-var3787 (String) var3787)
(declare-fun var3984-init () var3984)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3984 String) void)
(declare-const null-String String)
(declare-const null-var1314 var1314)
(declare-const var3630-ARCH_TO_PROCESSOR var909)
(declare-const var3714 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3714 null-String)))
(declare-const var1367 var1314) ; Statement: r2 := @parameter1: org.apache.commons.lang3.arch.Processor 
(assert (not (= var1367 null-var1314)))
(define-const var1133 var909 var3630-ARCH_TO_PROCESSOR) ; Statement: $r1 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR> 
(define-const var423 Bool (var909_containsKey/1715618542 var1133 (cast-from-String-to-var3787 var3714))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Map: boolean containsKey(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR> 
(assert (not (= (ite var423 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3538 var3984 var3984-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var1140 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1140)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1140!1 String)
(assert (= var1140!1 ""))
(assert true)
(define-const var3449 String (append/672562846 var1140!1 "Key ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key ") 
(declare-const var1140!2 String)
(assert (= var1140!2 (str.++ var1140!1 "Key ")))
(assert true)
(define-const var3561 String (append/672562846 var3449 var3714)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3449!1 String)
(assert (= var3449!1 (str.++ var3449 var3714)))
(assert true)
(define-const var1464 String (append/672562846 var3561 " already exists in processor map")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already exists in processor map") 
(declare-const var3561!1 String)
(assert (= var3561!1 (str.++ var3561 " already exists in processor map")))
(assert true)
(define-const var501 String (toString/-2075883882 var1464)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3538 var501)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var3538!1 var3984)
(declare-const var501!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var909_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var3787=([java.lang.String], java.lang.Object), var3984-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3714=r0, var2007=null_type, var1314=org.apache.commons.lang3.arch.Processor, var1367=r2, var909=java.util.Map, var3630=org.apache.commons.lang3.ArchUtils, var1133=$r1, var3787=java.lang.Object, var423=$z0, var3984=java.lang.IllegalStateException, var3538=$r4, var1140=$r5, var3449=$r6, var3561=$r7, var1464=$r8, var501=$r9}
; {r0=var3714, null_type=var2007, org.apache.commons.lang3.arch.Processor=var1314, r2=var1367, java.util.Map=var909, org.apache.commons.lang3.ArchUtils=var3630, $r1=var1133, java.lang.Object=var3787, $z0=var423, java.lang.IllegalStateException=var3984, $r4=var3538, $r5=var1140, $r6=var3449, $r7=var3561, $r8=var1464, $r9=var501}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.commons.lang3.arch.Processor;	$r1 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR>;	$z0 = interfaceinvoke $r1.<java.util.Map: boolean containsKey(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR>;	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already exists in processor map");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2