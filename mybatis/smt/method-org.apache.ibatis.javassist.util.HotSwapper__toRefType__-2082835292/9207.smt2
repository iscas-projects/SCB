(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2024 0)
(declare-sort var866 0)
(declare-sort var657 0)
(declare-sort var3880 0)
(declare-sort var2739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jvm/1664263009 (var2024) var657)
(declare-fun var657_classesByName/-1745287376 (var657 String) var3880)
(declare-fun var2739-init () var2739)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2739 String) void)
(declare-const null-var2024 var2024)
(declare-const null-String String)
(declare-const null-var3880 var3880)
(declare-const var2173 var2024) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.HotSwapper 
(assert (not (= var2173 null-var2024)))
(declare-const var855 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var855 null-String)))
(define-const var3790 var657 (jvm/1664263009 var2173)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.HotSwapper: com.sun.jdi.VirtualMachine jvm> 
(define-const var1386 var3880 (var657_classesByName/-1745287376 var3790 var855)) ; Statement: r3 = interfaceinvoke $r2.<com.sun.jdi.VirtualMachine: java.util.List classesByName(java.lang.String)>(r1) 
 ; Statement: if r3 == null goto $r4 = new java.lang.RuntimeException 
(assert (= var1386 null-var3880)) ; Cond: r3 == null 
(define-const var3644 var2739 var2739-init) ; Statement: $r4 = new java.lang.RuntimeException 
(define-const var2325 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2325)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2325!1 String)
(assert (= var2325!1 ""))
(assert true)
(define-const var2290 String (append/672562846 var2325!1 "no such class: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such class: ") 
(declare-const var2325!2 String)
(assert (= var2325!2 (str.++ var2325!1 "no such class: ")))
(assert true)
(define-const var249 String (append/672562846 var2290 var855)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2290!1 String)
(assert (= var2290!1 (str.++ var2290 var855)))
(assert true)
(define-const var2034 String (toString/-2075883882 var249)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3644 var2034)) ; Statement: specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8) 

(declare-const var3644!1 var2739)
(declare-const var2034!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {jvm/1664263009=([org.apache.ibatis.javassist.util.HotSwapper], com.sun.jdi.VirtualMachine), var657_classesByName/-1745287376=([com.sun.jdi.VirtualMachine, java.lang.String], java.util.List), var2739-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2024=org.apache.ibatis.javassist.util.HotSwapper, var2173=r0, var855=r1, var866=null_type, var657=com.sun.jdi.VirtualMachine, var3790=$r2, var3880=java.util.List, var1386=r3, var2739=java.lang.RuntimeException, var3644=$r4, var2325=$r5, var2290=$r6, var249=$r7, var2034=$r8}
; {org.apache.ibatis.javassist.util.HotSwapper=var2024, r0=var2173, r1=var855, null_type=var866, com.sun.jdi.VirtualMachine=var657, $r2=var3790, java.util.List=var3880, r3=var1386, java.lang.RuntimeException=var2739, $r4=var3644, $r5=var2325, $r6=var2290, $r7=var249, $r8=var2034}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.HotSwapper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.javassist.util.HotSwapper: com.sun.jdi.VirtualMachine jvm>;	r3 = interfaceinvoke $r2.<com.sun.jdi.VirtualMachine: java.util.List classesByName(java.lang.String)>(r1);	if r3 == null goto $r4 = new java.lang.RuntimeException;	$r4 = new java.lang.RuntimeException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such class: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2