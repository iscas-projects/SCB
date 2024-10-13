(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var409 0)
(declare-sort var2846 0)
(declare-sort var460 0)
(declare-sort var3720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var460_getKnownConfigurations/241516599 () var2846)
(declare-fun var2846_iterator/-912451715 (var2846) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3720-init () var3720)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1538552851 (var3720 String) void)
(declare-const null-String String)
(declare-const var3655 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3655 null-String)))
(define-const var95 var2846 var460_getKnownConfigurations/241516599) ; Statement: $r0 = staticinvoke <jdk.jfr.internal.jfc.JFC: java.util.List getKnownConfigurations()>() 
(define-const var3109 Iterator (var2846_iterator/-912451715 var95)) ; Statement: r1 = interfaceinvoke $r0.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2545 Bool (Iterator_hasNext/-1669924200 var3109)) ; Statement: $z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.nio.file.NoSuchFileException 
(assert (= (ite var2545 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1353 var3720 var3720-init) ; Statement: $r2 = new java.nio.file.NoSuchFileException 
(define-const var942 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var942)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var942!1 String)
(assert (= var942!1 ""))
(assert true)
(define-const var3771 String (append/672562846 var942!1 "Could not locate configuration with name ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate configuration with name ") 
(declare-const var942!2 String)
(assert (= var942!2 (str.++ var942!1 "Could not locate configuration with name ")))
(assert true)
(define-const var736 String (append/672562846 var3771 var3655)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3771!1 String)
(assert (= var3771!1 (str.++ var3771 var3655)))
(assert true)
(define-const var546 String (toString/-2075883882 var736)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1538552851 var1353 var546)) ; Statement: specialinvoke $r2.<java.nio.file.NoSuchFileException: void <init>(java.lang.String)>($r7) 

(declare-const var1353!1 var3720)
(declare-const var546!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var460_getKnownConfigurations/241516599=([], java.util.List), var2846_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3720-init=([], java.nio.file.NoSuchFileException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1538552851=([java.nio.file.NoSuchFileException, java.lang.String], void)}
; {var3655=r4, var409=null_type, var2846=java.util.List, var460=jdk.jfr.internal.jfc.JFC, var95=$r0, var3109=r1, var2545=$z0, var3720=java.nio.file.NoSuchFileException, var1353=$r2, var942=$r3, var3771=$r5, var736=$r6, var546=$r7}
; {r4=var3655, null_type=var409, java.util.List=var2846, jdk.jfr.internal.jfc.JFC=var460, $r0=var95, r1=var3109, $z0=var2545, java.nio.file.NoSuchFileException=var3720, $r2=var1353, $r3=var942, $r5=var3771, $r6=var736, $r7=var546}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.String;	$r0 = staticinvoke <jdk.jfr.internal.jfc.JFC: java.util.List getKnownConfigurations()>();	r1 = interfaceinvoke $r0.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r2 = new java.nio.file.NoSuchFileException;	$r2 = new java.nio.file.NoSuchFileException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate configuration with name ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.nio.file.NoSuchFileException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 3