(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3267 0)
(declare-sort var3825 0)
(declare-sort var2691 0)
(declare-sort var3136 0)
(declare-sort var3052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun targetClassNode/-1178364273 (var3267) var2691)
(declare-fun methods/500574324 (var2691) var3136)
(declare-fun var3136_iterator/-912451715 (var3136) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3052-init () var3052)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3052 String) void)
(declare-const null-var3267 var3267)
(declare-const null-String String)
(declare-const var899 var3267) ; Statement: r0 := @this: jdk.jfr.internal.instrument.JIInliner 
(assert (not (= var899 null-var3267)))
(declare-const var643 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var643 null-String)))
(declare-const var686 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var686 null-String)))
(define-const var3446 var2691 (targetClassNode/-1178364273 var899)) ; Statement: $r1 = r0.<jdk.jfr.internal.instrument.JIInliner: jdk.internal.org.objectweb.asm.tree.ClassNode targetClassNode> 
(define-const var1058 var3136 (methods/500574324 var3446)) ; Statement: $r2 = $r1.<jdk.internal.org.objectweb.asm.tree.ClassNode: java.util.List methods> 
(define-const var80 Iterator (var3136_iterator/-912451715 var1058)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var293 Bool (Iterator_hasNext/-1669924200 var80)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.IllegalArgumentException 
(assert (= (ite var293 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3478 var3052 var3052-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3782 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3782)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3782!1 String)
(assert (= var3782!1 ""))
(assert true)
(define-const var1697 String (append/672562846 var3782!1 "could not find MethodNode for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not find MethodNode for ") 
(declare-const var3782!2 String)
(assert (= var3782!2 (str.++ var3782!1 "could not find MethodNode for ")))
(assert true)
(define-const var717 String (append/672562846 var1697 var643)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1697!1 String)
(assert (= var1697!1 (str.++ var1697 var643)))
(assert true)
(define-const var3262 String (append/672562846 var717 var686)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var717!1 String)
(assert (= var717!1 (str.++ var717 var686)))
(assert true)
(define-const var3300 String (toString/-2075883882 var3262)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3478 var3300)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3478!1 var3052)
(declare-const var3300!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {targetClassNode/-1178364273=([jdk.jfr.internal.instrument.JIInliner], jdk.internal.org.objectweb.asm.tree.ClassNode), methods/500574324=([jdk.internal.org.objectweb.asm.tree.ClassNode], java.util.List), var3136_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3052-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3267=jdk.jfr.internal.instrument.JIInliner, var899=r0, var643=r6, var3825=null_type, var686=r8, var2691=jdk.internal.org.objectweb.asm.tree.ClassNode, var3446=$r1, var3136=java.util.List, var1058=$r2, var80=r3, var293=$z0, var3052=java.lang.IllegalArgumentException, var3478=$r4, var3782=$r5, var1697=$r7, var717=$r9, var3262=$r10, var3300=$r11}
; {jdk.jfr.internal.instrument.JIInliner=var3267, r0=var899, r6=var643, null_type=var3825, r8=var686, jdk.internal.org.objectweb.asm.tree.ClassNode=var2691, $r1=var3446, java.util.List=var3136, $r2=var1058, r3=var80, $z0=var293, java.lang.IllegalArgumentException=var3052, $r4=var3478, $r5=var3782, $r7=var1697, $r9=var717, $r10=var3262, $r11=var3300}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.instrument.JIInliner;	r6 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r1 = r0.<jdk.jfr.internal.instrument.JIInliner: jdk.internal.org.objectweb.asm.tree.ClassNode targetClassNode>;	$r2 = $r1.<jdk.internal.org.objectweb.asm.tree.ClassNode: java.util.List methods>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not find MethodNode for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 3