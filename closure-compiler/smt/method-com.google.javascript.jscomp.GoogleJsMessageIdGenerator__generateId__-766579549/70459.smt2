(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2867 0)
(declare-sort var2578 0)
(declare-sort var3533 0)
(declare-sort var2691 0)
(declare-sort var891 0)
(declare-sort var1403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2691_checkState/1431124798 (Bool) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3533_iterator/-912451715 (var3533) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun projectId/-1074716720 (var2867) String)
(declare-fun var891_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var1403_generateId/821242613 (String String) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var2867 var2867)
(declare-const null-String String)
(declare-const null-var3533 var3533)
(declare-const var123 var2867) ; Statement: r3 := @this: com.google.javascript.jscomp.GoogleJsMessageIdGenerator 
(assert (not (= var123 null-var2867)))
(declare-const var626 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var626 null-String)))
(declare-const var3183 var3533) ; Statement: r2 := @parameter1: java.util.List 
(assert (not (= var3183 null-var3533)))
 ; Statement: if r0 == null goto $z2 = 0 
(assert (= var626 null-String)) ; Cond: r0 == null 
(define-const var2622 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2691_checkState/1431124798 var2622)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var2622!1 Bool)
(define-const var3998 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3998)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3998!1 String)
(assert (= var3998!1 ""))
(define-const var2042 Iterator (var3533_iterator/-912451715 var3183)) ; Statement: $r11 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var702 Bool (Iterator_hasNext/-1669924200 var2042)) ; Statement: $z3 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var702 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var440 String (toString/-2075883882 var3998!1)) ; Statement: r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3965 String (projectId/-1074716720 var123)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(define-const var2743 Bool (var891_isNullOrEmpty/1886904788 var3965)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r4) 
 ; Statement: if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(assert (= (ite var2743 1 0) 0)) ; Cond: $z0 == 0 
(define-const var548 String (projectId/-1074716720 var123)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(define-const var2658 String (str.++ "\u0001: " var548)) ; Statement: $r14 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ") 
(assert true) ; Non Conditional
(define-const var3350 String (str.++ "\u0001\u0001" var2658 var626)) ; Statement: $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(define-const var294 Int (var1403_generateId/821242613 var440 var3350)) ; Statement: $l0 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId: long generateId(java.lang.String,java.lang.String)>(r13, $r7) 
(define-const var889 String (String_valueOf/-107395227 var294)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2691_checkState/1431124798=([boolean], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3533_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), projectId/-1074716720=([com.google.javascript.jscomp.GoogleJsMessageIdGenerator], java.lang.String), var891_isNullOrEmpty/1886904788=([java.lang.String], boolean), var1403_generateId/821242613=([java.lang.String, java.lang.String], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var2867=com.google.javascript.jscomp.GoogleJsMessageIdGenerator, var123=r3, var626=r0, var2578=null_type, var3533=java.util.List, var3183=r2, var2622=$z2, var2691=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3998=$r1, var2042=$r11, var702=$z3, var440=r13, var3965=$r4, var891=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var2743=$z0, var548=$r5, var2658=$r14, var3350=$r7, var1403=com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId, var294=$l0, var889=$r6}
; {com.google.javascript.jscomp.GoogleJsMessageIdGenerator=var2867, r3=var123, r0=var626, null_type=var2578, java.util.List=var3533, r2=var3183, $z2=var2622, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2691, $r1=var3998, $r11=var2042, $z3=var702, r13=var440, $r4=var3965, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var891, $z0=var2743, $r5=var548, $r14=var2658, $r7=var3350, com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId=var1403, $l0=var294, $r6=var889}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.GoogleJsMessageIdGenerator;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.util.List;	if r0 == null goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r11 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r4);	if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$r14 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ");	$r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	$l0 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId: long generateId(java.lang.String,java.lang.String)>(r13, $r7);	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r6
;block_num 7